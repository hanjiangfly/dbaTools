#!/bin/sh
#
#Author: eric.chen
#Date:2013-03-13
#Description:脚本编译工具
#Usage: sh complie.sh
source /etc/profile

############################################################# 功能函数 Begin ##################################################################
        #显示消息
        #showType='errSysMsg/errSys/errUserMsg/msg/msg2/OK'
        #errSysMsg：捕捉系统错误后发现相信并退出；errSys：捕捉到系统错误后退出；errUserMsg：自定义错误并退出；msg：输出信息并换行；msg2：输出信息不换行；OK：输出OK并换行
        function showMsg()
        {
                errState="$?"
                showType="$1"
                showContent="$2"
		#siteId="$3"
                case "${showType}" in
                        errSysMsg|errsysmsg|ERRSYSMSG|ErrSysMsg)
                                if [ "${errState}" -ne 0 ]; then
                                        echo -e "\033[31;49;1m[`date +%F' '%T`] ${siteId} Error: ${showContent}\033[39;49;0m" 
                                        exit 1
                                fi
                        ;;
                        errSys|errsys|ERRSYS|ErrSys)
                                if [ "$errState" -ne 0 ]; then
                                        exit 1
                                fi
                        ;;
                        errUserMsg|errusermsg|ErrUserMsg|ERRUSERMSG)
                                echo -e "\033[31;49;1m[`date +%F' '%T`] ${siteId} Error: ${showContent}\033[39;49;0m" 
                                exit 1
                        ;;
                        msg|MSG|Msg)
                                echo "[`date +%F' '%T`] ${siteId} ${showContent}" 
                        ;;
                        msg2|Msg2|MSG2)
                                echo -n "[`date +%F' '%T`] ${siteId} ${showContent}" 
                        ;;
                        OK|ok|Ok|oK)
                                echo -e "\033[32;49;1mOK\033[39;49;0m" 
                        ;;
                        delete)
                                echo -e "\033[31;49;1mDelete\033[39;49;0m" 
                        ;;
                        *)
                                echo -e "\033[31;49;1m[`date +%F' '%T`] Error: Call founction showMsg error\033[39;49;0m" 
                                exit 1
                        ;;
                esac
        }
############################################################# 功能函数 End ####################################################################


function init()
{
        theSoftWarePath='/dba/software'
        theVersionFile='dbToolsVersion.txt'
        cd ${theSoftWarePath}
}

#编译一个指定的脚本
function complieBash()
{
        theFileName="$1"
        if [ "$theFileName" = "" ]; then
                echo './compile.sh ${fileName}'
                exit 1
        fi
        theTargetName=`echo ${theFileName} | awk -F"." '{print $1}' `
        CFLAGS=-static shc -T -r -f ${theFileName}
        showMsg "errSysMsg" "Some error occur when execute 'CFLAGS=-static shc -r -f ${theFileName}'"
        mv ${theFileName}.x ${theTargetName}
        rm -rf ${theFileName}
        rm -rf ${theFileName}.x.c
        chmod 777 ${theTargetName}
}

#更新一个项目的版本文件
function updatePrjVersion()
{
        prjName="$1"
        cd ${prjName}
        if [ ! -f ${theVersionFile} ]; then
                echo '#------------------------- soft version ------------------------------------' > ${theVersionFile}
                echo '' >> ${theVersionFile}
                echo '#--------------------------------bag md5 -----------------------------------' >> ${theVersionFile}

        fi
        (find -type f | sed 's/\.\///g';ls common 2> /dev/null | awk '{print "common/"$1}') | grep -v -E '^\.|\/\.|complie.sh|dbToolsVersion.txt|dbModel\/' | while read PathAndFile; do
                #theFileName=`echo ${PathAndFile} | awk -F"/" '{print $NF}'`
                theFileName=${PathAndFile##*/}
                theMd5=`md5sum ${theSoftWarePath}/${prjName}/${PathAndFile} | awk '{print $1}'`
                GrPathAndFile=$(echo ${PathAndFile} | sed 's/\./\\./g')
                theOldMd5=`cat ${theVersionFile} | grep "\ ${GrPathAndFile}$" | awk '{print $1}'`
                if [ "${theMd5}" != "${theOldMd5}" ]; then
                    DelPathAndFile=$(echo ${PathAndFile} | sed -e 's/\//\\\//g' -e 's/\./\\./g')
                    showMsg "msg2" "Update version file for ${prjName}/${PathAndFile}......"
                    sed -i "/\ ${DelPathAndFile}$/d" ${theVersionFile}
                    echo "${theMd5}    ${PathAndFile}" >> ${theVersionFile}
                    showMsg "OK"

                fi
        done
        cd ..
}

#删除版本文件中的垃圾数据
function deleteVersion()
{
        prjName="$1"
        cd ${prjName}
        if [ -f ${theVersionFile} ]; then
                cat ${theVersionFile} | grep -v '^#' | sed /^[[:space:]]*$/d | awk '{print $NF}' | while read theFileName; do
                        if [ ! -f ${theFileName} ]; then
                                theDelFileName=$(echo ${theFileName} | sed -e 's/\//\\\//g'  -e 's/\./\\./g')
                                showMsg "msg2" "Update version file for ${prjName}/${theFileName}......"
                                sed -i "/\ ${theDelFileName}$/d" ${theVersionFile}
                                showMsg "delete"
                        fi
                done
        fi
        cd ..
}

function main()
{
        init
        oldPath=`pwd`
        cd ${theSoftWarePath}
        #遍历目录编译脚本
        find  -type f | sed 's/\.\///g' | grep -E '*\.sh' | grep -v -E  'complie.sh|dbModel$' | while read PathAndFile; do
                #theFileName=`echo ${PathAndFile} | awk -F"/" '{print $NF}'`
                theFileName=${PathAndFile##*/}
                #thePath=`echo ${PathAndFile} | sed "s/${theFileName}//g"`
                thePath=${PathAndFile%/*}/
                #如果取到的路径是空，则是最上层目录
                if [ -d "${theSoftWarePath}/${thePath}" ]; then
                        cd ${theSoftWarePath}/${thePath}
                fi
                #判定是否是sh文件，如果是则可能需要编译
                isSh=`echo ${PathAndFile} | grep "\.sh$" | wc -l` 
                if [ "${isSh}" -ne 0 ]; then
                        needComplie=`head "$theFileName" | grep -w '#complie=true' | wc -l`
                        if [ "${needComplie}" -ne 0 ]; then
                                showMsg "msg2" "Complie ${theFileName}......"
                                complieBash "${theFileName}"
                                showMsg "errSysMsg" "Some error occur when Complie ${theFileName}"
                                showMsg "OK"
                        fi
                fi
        done
        #遍历项目更新版本
        ll -lh | grep '^d' | awk '{print $NF}' | while read prjName; do
                updatePrjVersion "${prjName}"
                deleteVersion "${prjName}"
        done
        cd $oldPath
}
main "$1"


