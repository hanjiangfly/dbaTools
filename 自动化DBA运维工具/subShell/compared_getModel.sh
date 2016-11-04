#!/bin/bash
#encode begin
  #                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
#endcode end
#complie=true/false
#
#Author: eric.chen
#Date: 2015-10-10
#Description: 获取开区模板
#Usage:
source /etc/profile

############################################################# 功能函数 Begin ##################################################################

        #显示消息
        #showType='errSysMsg/errSys/errUserMsg/warning/msg/msg2/OK'
        #错误输出（以红色字体输出） errSysMsg：捕捉系统错误后发现相信并退出；errSys：捕捉到系统错误后退出；errUserMsg：自定义错误并退出，但不退出（errSysMsg及errUserMsg可以赋第三个参数isExit为非1来控制不退出）
        #警告（以黄色字体输出）  warning：显示warning，但不退出
        #显示信息（以白色字体输出，OK以绿色输出） msg：输出信息并换行；msg2：输出信息不换行；OK：输出绿色OK并换行
        function showMsg()
        {
                errState="$?"
                local showType="$1"
                local showContent="$2"
                local isExit="$3"
                #如果isExit为空，则默认出错时该退出
                if [ "${isExit}" = "" ]; then
                        isExit=1
                fi
                local isIP=`echo ${mysqlHost} | grep -E "172|192|10" | wc -l`
                if [ "${mysqlHost}" = "localhost" ]; then
                        local showExtent="localhost.${siteId}"
                elif [ "${isIP}" -eq "1" ]; then
                        local showExtent="db1(${mysqlHost}).${siteId}"
                else
                        showExtent=''
                fi
                showType=`echo ${showType} | tr 'A-Z' 'a-z'`
                case "${showType}" in
                        errsysmsg)
                                if [ "${errState}" -ne 0 ]; then
                                        echo -e "\033[31;49;1m[`date +%F' '%T`] ${showExtent} Error: ${showContent}\033[39;49;0m" | tee -a ${logFile} >&2
                                        echo -e "\033[31;49;1m[`date +%F' '%T`] Call Relation: bash${pid}\033[39;49;0m" | tee -a ${logFile} >&2
                                        if [ "${isExit}" -eq 1 ]; then
                                                exit 1
                                        fi
                                fi
                        ;;
                        errsys)
                                if [ "$errState" -ne 0 ]; then
                                        exit 1
                                fi
                        ;;
                        errusermsg)
                                echo -e "\033[31;49;1m[`date +%F' '%T`] ${showExtent} Error: ${showContent}\033[39;49;0m"  | tee -a ${logFile} >&2
                                echo -e "\033[31;49;1m[`date +%F' '%T`] Call Relation: bash${pid}\033[39;49;0m" | tee -a ${logFile} >&2
                                if [ "${isExit}" -eq 1 ]; then
                                        exit 1
                                fi
                        ;;
                        warning)
                                echo -e "\033[33;49;1m[`date +%F' '%T`] ${showExtent} Warnning: ${showContent}\033[39;49;0m"  | tee -a ${logFile}
                                echo -e "\033[33;49;1m[`date +%F' '%T`] Call Relation: bash${pid}\033[39;49;0m"  | tee -a ${logFile}
                        ;;
                        msg)
                                echo "[`date +%F' '%T`] ${showExtent} ${showContent}" | tee -a ${logFile}
                        ;;
                        msg2)
                                echo -n "[`date +%F' '%T`] ${showExtent} ${showContent}" | tee -a ${logFile}
                        ;;
                        ok)
                                echo "OK" >> ${logFile}
                                echo -e "\033[32;49;1mOK\033[39;49;0m" 
                        ;;
                        *)
                                echo -e "\033[31;49;1m[`date +%F' '%T`] Error: Call founction showMsg error\033[39;49;0m"  | tee -a ${logFile}
                                exit 1
                        ;;
                esac
        }

        #执行sql语句
        # echo "select now()" | executeSql root 7roaddba
        function executeSql()
        {
                local sql="$1"
                local useDBName="$2"
                if [ -z "$mysqlUser" -o "$mysqlUser" = "" -o -z "${mysqlPwd}" -o "${mysqlPwd}" = "" ]; then
                        showMsg "errUserMsg" "mysql user or mysql password is not vaild."
                fi
                if [ "$sql" = "" ]
                then
                        showMsg "errUserMsg" "sql statement is null "
                else
                        echo -e "$sql" | mysql --defaults-extra-file=.my_tmp.cnf  $useDBName --default-character-set=utf8 -N 
                fi
        }

        #取得本机内网IP
        function getLocalInnerIP()
        {
                ifconfig | grep 'inet addr:' | awk -F"inet addr:" '{print $2}'  | awk '{print $1}' | while read theIP; do
                    A=$(echo $theIP | cut -d '.' -f1)
                    B=$(echo $theIP | cut -d '.' -f2)
                    C=$(echo $theIP | cut -d '.' -f3)
                    D=$(echo $theIP | cut -d '.' -f4)
                    int_ip=$(($A<<24|$B<<16|$C<<8|$D))
                    #10.0.0.0(167772160)~10.255.255.255(184549375)
                    if [ "${int_ip}" -ge 167772160 -a "${int_ip}" -le 184549375 ]; then
                        echo $theIP
                    elif [ "${int_ip}" -ge 2886729728 -a "${int_ip}" -le 2887778303 ]; then     #172.16.0.0(2886729728)~172.31.255.255(2887778303)
                        echo $theIP
                    elif [ "${int_ip}" -ge 3232235520 -a "${int_ip}" -le 3232301055 ]; then   #192.168.0.0(3232235520)~192.168.255.255(3232301055)
                        echo $theIP
                    fi
                done
        }

        #取得本机外网ip（如有多个，则以tab键分隔）
        function getLocaltOuterIP()
        {
                innerIP=`getLocalInnerIP`
                ifconfig | grep -E "(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])(\.(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])){3}" | awk -F":" '{print $2}' | awk '{print $1}' | grep -vE "127.0.0.1|${innerIP}" | head -n 1
        }


        #检查指定文件是否存在
        function checkFileExist()
        {
                theFileName="$1"
                if [ ! -f $theFileName ]; then
                        showMsg "errUserMsg" "The file '$theFileName' is not exist."
                fi
        }

        #检查变量是否存在
        function checkVar()
        {
                local theVar="$1"
                local theVar2="$2"
                if [ "${theVar2}" = "" ]; then
                        showMsg "errUserMsg" "The var '${theVar}' is not invalidation."
                fi
        }
############################################################# 功能函数 End ####################################################################

function shellInit()
{
        sid=`basename $0`
        export pid="${pid}-->$sid"
        theFiledir=`echo $(cd "$(dirname "$0")"; pwd)`
        cd ${theFiledir}
        #默认日志文件为“本文件名.log”，如main函数有传入logFile参数（如不带路径则为当前目录），则以传入的日志文件名为准
        theFileName=`basename $0 | awk -F"." '{print $1}'`
        if [ "${logFile}" = "" ]; then
                logFile="/data/shelllog/${theFileName}.log"
        fi
        logFilePath=`dirname ${logFile}`
        if [ "${logFilePath}" = '.' ]; then
                logFilePath=${theFiledir}
        fi
        logFileName=`basename ${logFile}`
        logFile="${logFilePath}/${logFileName}"
        mkdir -p ${logFilePath}
        touch ${logFile}
        #退出/中止（包括导常退出）脚本时执行的命令
        trapCmd="rm -f .my_tmp.cnf"
        trap 'eval ${trapCmd}' EXIT
        #--------以上为框架规定，建议不要做修改----------
        mkdir -p /data/comparedb/schema
        cd /data/comparedb
        rm -fr /data/comparedb/schema/*
        #解决Warning: Using a password on the command line interface can be insecure.
        mysqlSock=`ps -ef | grep -v -E "mysqld_safe|awk" | awk '/mysqld /,/socket=/''{for(i=1;i<=NF;i++){if($i~/socket=/) print gsub(/--socket=/,""),$i}}' | awk '{print $2}'`
        echo -e "\n[client]\nhost=${mysqlHost}\nuser=${mysqlUser}\npassword='${mysqlPwd}'\nsocket=${mysqlSock}" > .my_tmp.cnf
        echo -e "\n[mysqldump]\nhost=${mysqlHost}\nuser=${mysqlUser}\npassword='${mysqlPwd}'\nsocket=${mysqlSock}" >> .my_tmp.cnf
}

#检查
function check()
{
        checkVar 'mysqlHost', "${mysqlHost}"
        checkVar 'mysqlUser', "${mysqlUser}"
        checkVar 'mysqlPwd', "${mysqlPwd}"
        checkVar 'modelSite', "${modelSite}"
        executeSql "select now()" > /dev/null
        showMsg 'errSysMsg' "Can not connect to mysql"
        isExistsDBName=`executeSql "show databases" | grep -E "${modelSite}" | wc -l`
        if [ "${isExistsDBName}" = '0' ]; then
                showMsg 'errUserMsg' "Not exists 'db_game_${modelSite}' on this mysql server"
        fi
}

#dump出一个库的schema
function dumpDBSchema()
{
        dumpDBName="$1"
        dumpFileName="$2"
        showMsg 'msg2' "Dumping ${dumpDBName} to ${dumpFileName}......"
        mysqldump --defaults-extra-file=.my_tmp.cnf --default-character-set=utf8 --skip-add-drop-table --set-gtid-purged=OFF --complete-insert -d -R -E ${dumpDBName} > ${dumpFileName}
        showMsg "errSysMsg" "Some error occur when execute 'mysqldump -h${mysqlHost} -u${mysqlUser} -pXXX --default-character-set=utf8 --skip-add-drop-table --complete-insert -d -R -E ${dumpDBName} > ./sqDBModel_${agentName}/${dumpFileName}'"
        if [ "$(echo $dumpDBName | grep db_game -c)" = '1' ];then
            crc_sql="select concat(\"select 'CREATE SERVER ', 'CRC32_\",table_name,\"'  , COALESCE(LOWER(CONV(BIT_XOR(CAST(CRC32(CONCAT_WS( '#', \",column_crc,\" )) AS UNSIGNED)), 10, 16)), 0) AS crc ,'dts模版的校验信息 by ace.han ;' from \",table_schema,\".\",table_name,';') as exe_sql  from (
select table_schema,table_name,group_concat( concat('\`', COLUMN_NAME, '\`') order by ORDINAL_POSITION) as column_crc from information_schema.columns where table_schema = '${dumpDBName}'  and table_name like 't_s_%' and table_name not in ('t_s_activity','t_s_activityclassify','t_s_activitycondition','t_s_activitygiftpack','t_s_activityrec','t_s_activityrecelem','t_s_activityreward','t_s_gameid','t_s_centerconfig','t_s_globaldropgroup','t_s_globaldrop','t_s_globalproduct','t_s_switch','t_s_globaldropelement' ) group by  table_schema,table_name  
) as a order by 1;"
            #echo "CREATE TABLE dba_dts_crc32_check(" >> ${dumpFileName}
            executeSql "$crc_sql" | while read sql_line ;
            do
                executeSql "$sql_line" >> ${dumpFileName}
                showMsg "errSysMsg" "Some error occur when execute ( $sql_line  ) "
            done
            showMsg "errSysMsg" "Some error occur when execute ( $crc_sql  ) "
            #echo ") engine=dba comment='dts模版的校验信息 by ace.han';" >> ${dumpFileName}
        fi
        
        showMsg 'OK'
}

#dump出一个表的数据
function dumpTableData()
{
        dumpDBName="$1"
        dumpTableName="$2"
        dumpFileName="$3"
        showMsg 'msg2' "Dumping ${dumpDBName}.${dumpTableName} to ${dumpFileName}......"
        mysqldump --defaults-extra-file=.my_tmp.cnf --default-character-set=utf8 --set-gtid-purged=OFF ${dumpDBName} ${theTableName} -t >> ${dumpFileName}
        showMsg "errSysMsg" "mysqldump -h${mysqlHost} -u${mysqlUser} -pXXX --default-character-set=utf8 ${dumpDBName} ${theTableName} -t >> ./sqDBModel_${agentName}/${dumpFileName}"
        showMsg 'OK'
}

#有效性检查
function modelValid()
{
        dumpFileName="$1"
        showMsg "msg2" "Model file '${dumpFileName}' valid check......"
        isOK=`tail -1 ${dumpFileName} | grep -w 'Dump completed on' | wc -l`
        if [ "${isOK}" -ne 1 ]; then
                showMsg "errUserMsg" "The model of '${dumpFileName}' is not valid."
        fi
        showMsg "OK"
}

#使用说明
function usage()
{
        parameter="$1"
        myFileName=`basename $0`
        if [ "${parameter}" = '--help'  -o  "${parameter}" = '-h' -o  "${parameter}" = '' ]; then
                echo "Usage:  sh ${myFileName} \${mysqlHost} \${mysqlUser} \${mysqlPwd} 'db_game|db_log'"
                exit 1
        fi
}

function getAllSiteDBName(){
    executeSql "show databases" | grep -E "$modelSite"
}

function main()
{
        mysqlHost="localhost"
        mysqlUser="7roaddba"
        mysqlPwd="y%6bm@3o_q1a"
        modelSite="$1"
        logFile="$2"
        usage "$1"
        shellInit
        check
        IP="$( getLocaltOuterIP)"
        if [ "$IP" = "" ];then
            IP="$( getLocalInnerIP )"
        fi
        checkVar "IP" "$IP"
        for dbname in $(getAllSiteDBName) ;
        do
            dumpDBSchema "$dbname" "./schema/${dbname}.${IP}.schema"
        done
        tar -czf compared.tar.gz ./schema/*.schema
        showMsg "errSysMsg" "tar error!"
        rm -f ./schema/*.schema
        history -c
}
main "$1" "$2" "$3" "$4" "$5"
