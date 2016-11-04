#!/bin/bash
#encode begin
  #                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
#endcode end
#complie=true/false
#
#Author: 
#Date:
#Description:
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
                if [ "${innerIP}" = "" ]; then
                        ifconfig | grep -E "(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])(\.(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])){3}" | awk -F":" '{print $2}' | awk '{print $1}' | grep -vE "127.0.0.1" | sed -e ':a;N;$ s/\n/\t/g;ba'
                else
                        ifconfig | grep -E "(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])(\.(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])){3}" | awk -F":" '{print $2}' | awk '{print $1}' | grep -vE "127.0.0.1|${innerIP}" | sed -e ':a;N;$ s/\n/\t/g;ba'
                fi
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
                logFile="${theFileName}.log"
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
        #解决Warning: Using a password on the command line interface can be insecure.
        mysqlSock=`ps -ef | grep -v -E "mysqld_safe|awk" | awk '/mysqld /,/socket=/''{for(i=1;i<=NF;i++){if($i~/socket=/) print gsub(/--socket=/,""),$i}}' | awk '{print $2}'`
        echo -e "\n[client]\nhost=${mysqlHost}\nuser=${mysqlUser}\npassword='${mysqlPwd}'\nsocket=${mysqlSock}" > .my_tmp.cnf
        echo -e "\n[mysqldump]\nhost=${mysqlHost}\nuser=${mysqlUser}\npassword='${mysqlPwd}'\nsocket=${mysqlSock}" >> .my_tmp.cnf
        rm -f different.log
        count_diff=0  # 用来统计是否有差异的schema
}

#使用说明
function usage()
{
        parameter="$1"
        myFileName=`basename $0`
        if [ "${parameter}" = '--help'  -o  "${parameter}" = '-h' ]; then
                echo "Usage:  sh ${myFileName} \${parameter_1}"
                exit 1
        fi
}

# 清除之前遗留文件
function cleanFile(){
    showMsg 'msg2' "Clean tar.gz and scheam file ... "
    rm -f ./tar/*.tar.gz ./tar/schema/*.schema ./schema/* /dba/software/rh/html/*.html
    showMsg 'errSysMsg' "error when clean file."
    showMsg 'OK'
}

# 运行mabs脚本
function runMabsShell(){
    showMsg 'msg2' "Run mabs2 shell to get all schema ... "
    sh mabs.sh -l server.ip -c mabs.cnf -y -P20 > /tmp/mabs2.log
    showMsg 'errSysMsg' "error when running mabs2 file."
    showMsg 'OK'
}

# 解压tar。gz文件
function unzipFile(){
    showMsg 'msg2' "Unzip schema tar.gz files ... "
    ls ./tar/*.tar.gz* | while read file_ ;
    do
        tar xmzf $file_ 2>&1 > /tmp/tar.gz.log
        showMsg 'errSysMsg' "error when unzip schema file."
    done
    showMsg 'OK'
}

# 生成mabs config 文件
function createMabsConfig(){
    showMsg 'msg2' "Init mabs2 config file ... "
    cat > mabs.cnf <<EOF
com::: mkdir -p /data/comparedb/schema
file::: ./subShell/compared_getModel.sh /data/comparedb/ push
com::: cd /data/comparedb/;sh compared_getModel.sh  'db_game|db_interface|db_gms'
com::: rm -f /data/comparedb/compared_getModel.sh
file::: /data/comparedb/compared.tar.gz ./tar/  pull
EOF
    showMsg 'errSysMsg' "error when Init mabs2 config file."
    showMsg 'OK'

}

function deleteCnfFile(){
    showMsg 'msg2' "Delete mabs2 config file ... "
    rm -f mabs.cnf
    showMsg 'errSysMsg' "error when running mabs2 file."
    showMsg 'OK'
}

# 替换schema里面 默认不校对数据
function sedSchemaFile(){
    local file_regexp="$1"    # 筛选文件 正则表达式方式 如 "^db_game"  "^db_game|^db_log" 空为全部
    showMsg 'msg2' "Sed all schema file by using sed.cnf ... "
    for schema_f in $(ls ./schema/* | grep -E "$file_regexp") ;
    do
        cat sed.cnf | while read sed_regexp ;
        do
            sed -i -r "$sed_regexp"  $schema_f
        done
        showMsg 'errSysMsg' "error when Sed all schema file."
    done
    showMsg 'OK'
}


# 对比文件 如果第二个参数唯空 则随机抽取一个和其他文件对比
function compareDB(){
    local file_regexp="$1"    # 筛选文件 正则表达式方式 如 "^db_game"  "^db_game|^db_log" 空为全部
    local base_file="$2"
    # rm -f compare_new.log
    if [ "$base_file" = "" ];then
        base_file="$(basename $(ls ./schema/* | grep -E "$file_regexp" | head -n 1) )"
    else
        base_file="$(basename $base_file)"
    fi
    html_url="http://121.10.141.204:8088/rh/html/"
    showMsg 'msg' "compare file by regexp ($file_regexp) base on ($base_file) : "
    for schema_f in $(ls ./schema/* | grep -E "$file_regexp" | grep -v "$base_file") ;
    do
        isSame=`diff --ignore-all-space  ${schema_f} ./schema/${base_file} -B -b | wc -l`
        showMsg 'errSysMsg' "error when compare file."
        if [ "$isSame" -eq 0 ]; then
            #python pydiff.py ./schema/${base_file}  ${schema_f} > /dba/software/rh/html/${schema_f/#\.\/schema\/}.html
            echo "[`date +%F' '%T`] base file ${base_file} compare ${schema_f} is same" >> different.log
            echo -e "[`date +%F' '%T`] base file ${base_file} compare ${schema_f} is \033[32;49;1msame\033[39;49;0m" 
        else
            count_diff=$(( count_diff+1 ))
            python pydiff.py ./schema/${base_file}  ${schema_f} > /dba/software/rh/html/${schema_f/#\.\/schema\/}.html
            echo "[`date +%F' '%T`] base file ${base_file} compare <a href='${html_url}${schema_f/#\.\/schema\/}.html'> ${schema_f} </a> is different" >> different.log
            echo -e "[`date +%F' '%T`] base file ${base_file} compare ${schema_f} is \033[31;49;1mdifferent\033[39;49;0m" 
        fi
    done
    echo '<hr style=" height:2px;border:none;border-top:2px dotted #185598;" />' >> different.log
    chmod 666 /dba/software/rh/html/*.html
}

function getDB2Ip(){
    cat /data/iplist/rh_iplist_china.txt | grep DB2Server | awk '{print $3,"    16333   root    fj6xElEFoe@7road "}' | sort |uniq > server.ip

}

function sendMail(){
    mailSmtp='mail.7road.com'
    mailFrom='alarm@7road.com'
    mailFromPwd='7road.com'
    mail_toList='jiang.han@7road.com'
    # mail_toList='hoggoo@qq.com'
    mail_subject="数据库架构对比巡检(Diff ${count_diff} ) $(date '+%x') "
    mail_content="$1"
    showMsg 'msg2' "Send Email to ($mail_toList) ... "
    checkFileExist "$mail_content"
    python sendMail.py "$mailSmtp" "$mailFrom" "$mailFromPwd" "$mail_toList" "$mail_subject"  "$mail_content" > .sendmail.log
    if [ "grep -c 'send mail ok' .sendmail.log" != '0' ];then
        showMsg 'OK'
    else
        showMsg 'errSysMsg' "error when send mail."
    fi
}


function info(){
    local _file="$1"
    checkFileExist "$_file"
    sed -i -r 's/ different/ <font color="red"> different<\/font>/g' "$_file"
    sed -i -r 's/ same/ <font color="green"> same<\/font>/g' "$_file"
    sed -i ':a;N;$ s/\n/<p>/g;ba'  "$_file" 
    cat >> $_file <<EOF
<center><h3><font color="red">The ip server list :</font> root@121.10.141.204:/data/iplist/rh_iplist_china.txt</h3><br><h4><a href='http://113.107.167.118:8083/' >性能监控系统</a></h4></center>
EOF
}
function main()
{
        logFile="$5"
        usage "$1"
        shellInit
        cleanFile
        createMabsConfig
        getDB2Ip
        runMabsShell
        deleteCnfFile
        unzipFile
        sedSchemaFile
        compareDB "db_game" ""
        compareDB "db_game_rhios" ""
        compareDB "db_gms" ""
        compareDB "db_interface" ""
        info "different.log"
        sendMail "different.log"
}
main "$1" "$2" "$3" "$4" "$5"
