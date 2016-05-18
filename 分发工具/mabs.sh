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
                local isPrtErrorFlag="$4"
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
                                                exit 11
                                        elif [ "${isExit}" -eq 2 ]; then
                                                return 22
                                        fi
                                fi
                        ;;
                        errsys)
                                if [ "$errState" -ne 0 ]; then
                                        exit 11
                                fi
                        ;;
                        errusermsg)
                                if [ "${isPrtErrorFlag}" = "" ]; then
                                        echo -e "\033[31;49;1m[`date +%F' '%T`] ${showExtent} Error: ${showContent}\033[39;49;0m"  | tee -a ${logFile} >&2
                                        echo -e "\033[31;49;1m[`date +%F' '%T`] Call Relation: bash${pid}\033[39;49;0m" | tee -a ${logFile} >&2
                                else
                                        echo -e "\033[31;49;1m[`date +%F' '%T`] ${showContent}\033[39;49;0m"  | tee -a ${logFile} >&2
                                fi
                                if [ "${isExit}" -eq 1 ]; then
                                        exit 11
                                elif [ "${isExit}" -eq 2 ]; then
                                        return 22
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

        #取得本机内网IP
        function getLocalInnerIP()
        {
                ifconfigFile | grep 'inet addr:' | awk -F"inet addr:" '{print $2}'  | awk '{print $1}' | while read theIP; do
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
                ifconfigFile | grep -E "(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])(\.(2[0-4][0-9]|25[0-5]|1[0-9][0-9]|[1-9]?[0-9])){3}" | awk -F":" '{print $2}' | awk '{print $1}' | grep -vE "127.0.0.1|${innerIP}" | sed -e ':a;N;$ s/\n/\t/g;ba'
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

        #复制一个或多个文件到远程
        function autoScpPush()
        {
                local SRC_HOST="$1"
                local SRC_PORT="$2"
                local SRC_USER="$3"
                local SRC_PWD="$4"
                local SRC_FILENAME="$5"
                local SRC_PATH="$6"
                local errBreak="$7"
                #local scpTimeOut="$8"
                expect -c "
                        set timeout ${scpTimeOut}
                        spawn scp -P $SRC_PORT ${SRC_FILENAME} $SRC_USER@$SRC_HOST:$SRC_PATH
                        expect {
                                  \"(yes/no)?\"                         {send \"yes\r\";exp_continue}
                                  \"password: \"                        {send \"$SRC_PWD\r\";exp_continue}
                                  \"FATAL\"                             {exit 1;exp_continue}
                                  \"timeout\"                           {exit 2;exp_continue}
                                  \"No route to host\"                  {exit 3;exp_continue}
                                  \"Connection Refused\"                {exit 4;exp_continue}
                                  \"Host key verification failed\"      {exit 5;exp_continue}
                                  \"Illegal host key\"                  {exit 6;exp_continue}
                                  \"Connection Timed Out\"              {exit 7;exp_continue}
                                  \"Connection timed out\"              {exit 8;exp_continue}
                                  \"Disconnected; connection lost\"     {exit 9;exp_continue}
                                  \"Authentication failed\"             {exit 10;exp_continue}
                                  \"Destination Unreachable\"           {exit 11;exp_continue}
                                  \"No such file\"                      {exit 12;exp_continue}
                                  \"lost connection\"                   {exit 13; exp_continue}
                                  \"usage: scp\"                        {exit 14;exp_continue}
                                  \" denied \"                          {exit 15}

                               }
                "
                errorNum="$?"
                case ${errorNum} in
                        1) errContent='FATAL';;
                        2) errContent='timeout';;
                        3) errContent='No route to host';;
                        4) errContent='Connection Refused';;
                        5) errContent='Host key verification failed';;
                        6) errContent='Illegal host key';;
                        7) errContent='Connection Timed Out';;
                        8) errContent='Connection timed out';;
                        9) errContent='Disconnected; connection lost';;
                        10) errContent='Authentication failed';;
                        11) errContent='Destination Unreachable';;
                        12) errContent='No such file';;
                        13) errContent='lost connection';;
                        14) errContent='scp usage error';;
                        15) errContent='denied';;
                        *)
                         ;;
                esac
                if [ "${errorNum}" -ne 0 ]; then
                        showMsg "errUserMsg" "${SRC_HOST}  :  autoScpPush error num: ${errorNum}(${errContent}) Some error occur when execute 'scp -P $SRC_PORT ${SRC_FILENAME} $SRC_USER@$SRC_HOST:$SRC_PATH'" "${errBreak}" 'noErrorFlag'
                fi
        }

       #从远程拉取文件到本地，并在文件未端加上远程IP
        function autoScpPull()
        {
                local SRC_HOST="$1"
                local SRC_PORT="$2"
                local SRC_USER="$3"
                local SRC_PWD="$4"
                local SRC_FILENAME="$5"
                local SRC_PATH="$6"
                local errBreak="$7"
                local remotoFileName=`basename ${SRC_FILENAME}`
                local downLoadFileName="${SRC_PATH}/${SRC_HOST}_${remotoFileName}"
                #local scpTimeOut="$8"
                expect -c "
                        set timeout ${scpTimeOut}
                        spawn scp -P $SRC_PORT $SRC_USER@$SRC_HOST:${SRC_FILENAME} ${downLoadFileName}
                        expect {
                                  \"(yes/no)?\"                         {send \"yes\r\";exp_continue}
                                  \"password: \"                        {send \"$SRC_PWD\r\";exp_continue}
                                  \"FATAL\"                             {exit 1;exp_continue}
                                  \"timeout\"                           {exit 2;exp_continue}
                                  \"No route to host\"                  {exit 3;exp_continue}
                                  \"Connection Refused\"                {exit 4;exp_continue}
                                  \"Host key verification failed\"      {exit 5;exp_continue}
                                  \"Illegal host key\"                  {exit 6;exp_continue}
                                  \"Connection Timed Out\"              {exit 7;exp_continue}
                                  \"Connection timed out\"              {exit 8;exp_continue}
                                  \"Disconnected; connection lost\"     {exit 9;exp_continue}
                                  \"Authentication failed\"             {exit 10;exp_continue}
                                  \"Destination Unreachable\"           {exit 11;exp_continue}
                                  \"No such file\"                      {exit 12;exp_continue}
                                  \"lost connection\"                   {exit 13; exp_continue}
                                  \"usage: scp\"                        {exit 14;exp_continue}
                                  \" denied \"                          {exit 15}
                               }
                "
                errorNum="$?"
                case ${errorNum} in
                        1) errContent='FATAL';;
                        2) errContent='timeout';;
                        3) errContent='No route to host';;
                        4) errContent='Connection Refused';;
                        5) errContent='Host key verification failed';;
                        6) errContent='Illegal host key';;
                        7) errContent='Connection Timed Out';;
                        8) errContent='Connection timed out';;
                        9) errContent='Disconnected; connection lost';;
                        10) errContent='Authentication failed';;
                        11) errContent='Destination Unreachable';;
                        12) errContent='No such file';;
                        13) errContent='lost connection';;
                        14) errContent='scp usage error';;
                        15) errContent='denied';;
                        *)
                         ;;
                esac
                if [ "${errorNum}" -ne 0 ]; then
                        showMsg "errUserMsg" "${SRC_HOST}  :  autoScpPush error num: ${errorNum}(${errContent}) Some error occur when execute scp -P $SRC_PORT $SRC_USER@$SRC_HOST:${SRC_FILENAME} ${downLoadFileName}" "${errBreak}" 'noErrorFlag'
                fi
        }

        #在远程执行指定命令（必须先初始化 $SRC_HOST $SRC_PORT $SRC_PWD 三个变量）
        #autossh 'ls'           #出错后退出
        #autossh 'ls' '0'       #出错后不退出（执行return）
        function autossh()
        {
                local SRC_HOST="$1"
                local SRC_PORT="$2"
                local SRC_USER="$3"
                local SRC_PWD="$4"
                local commands="$5"
                local errBreak="$6"
                #local sshTimeOut="$7"
                expect -c "
                        set timeout ${sshTimeOut}
                        spawn  ssh -p $SRC_PORT $SRC_USER@$SRC_HOST \"$commands\"
                        expect {
                                  \"(yes/no)?\"                         {send \"yes\r\";exp_continue}
                                  \"password:\"                         {send \"${SRC_PWD}\r\";exp_continue}
                                  \"FATAL\"                             {exit 1;exp_continue}
                                  \"timeout\"                           {exit 2;exp_continue}
                                  \"No route to host\"                  {exit 3;exp_continue}
                                  \"Connection Refused\"                {exit 4;exp_continue}
                                  \"Connection refused\"                {exit 5;exp_continue}
                                  \"Host key verification failed\"      {exit 6;exp_continue}
                                  \"Illegal host key\"                  {exit 7;exp_continue}
                                  \"Connection Timed Out\"              {exit 8;exp_continue}
                                  \"Connection timed out\"              {exit 9;exp_continue}
                                  \"Interrupted system call\"           {exit 10;exp_continue}
                                  \"Disconnected; connection lost\"     {exit 11;exp_continue}
                                  \"Authentication failed\"             {exit 12;exp_continue}
                                  \"File exists\"                       {exit 13;exp_continue}
                                  \" Error: \"                          {exit 14;exp_continue}
                                  \" ERROR: \"                          {exit 15;exp_continue}
                                  \" error \"                           {exit 16;exp_continue}
                                  \" denied \"                          {exit 17;exp_continue}
                                  \"No such file\"                      {exit 18;exp_continue}
                                  \"Destination Unreachable\"           {exit 19;exp_continue}
                                  \"lost connection\"                   {exit 20; exp_continue}
                                  \"usage: ssh\"                        {exit 21}
                               }
                "
                errorNum="$?"
                case ${errorNum} in
                        1) errContent='FATAL';;
                        2) errContent='timeout';;
                        3) errContent='No route to host';;
                        4) errContent='Connection Refused';;
                        5) errContent='Connection refused';;
                        6) errContent='Host key verification failed';;
                        7) errContent='Illegal host key';;
                        8) errContent='Connection Timed Out';;
                        9) errContent='Connection timed out';;
                        10) errContent='Interrupted system call';;
                        11) errContent='Disconnected; connection lost';;
                        12) errContent='Authentication failed';;
                        13) errContent='File exists';;
                        14) errContent="Return 'Error:'";;
                        15) errContent="Return 'ERROR:'";;
                        16) errContent="Return 'error'";;
                        17) errContent='denied';;
                        18) errContent='No such file';;
                        19) errContent='Destination Unreachable';;
                        20) errContent='lost connection';;
                        21) errContent='ssh usage error';;
                        *)
                         ;;
                esac
                if [ "${errorNum}" -ne 0 ]; then
                        showMsg "errUserMsg" "${SRC_HOST}  :  autossh error num: ${errorNum}(${errContent})Some error occur when autoRun '${commands}' on ${SRC_HOST}" "${errBreak}" 'noErrorFlag'
                fi
        }

        #并发执行
        # execConcurrency 并发进程个数 '命令1' '命令2' '命令3' ...
        # execConcurrency 2 'sleep 3;echo yes' 'sleep 5;echo no'
        function execConcurrency()
        {
                #并发数据量
                local thread=$1
                #并发命令
                local cmd=$2
                #mabsTmpLogPath="$3"
                local theIP
                tmp_fifofile="/tmp/mabs.$$.fifo"        ##定义管道，用于控制并发线程（$$为当前进程号）
                mkfifo $tmp_fifofile                    #创建临时管道
                exec 6<>$tmp_fifofile                   #创建标识为6，可以对管道进行读写，即输入输出重定向到文件描述符6
                rm -f $tmp_fifofile                     #清空管道内容
                for ((i=0;i<$thread;i++)); do           #为进程创建相应的占位(向管道压入指定数据的空格)
                        echo                            #每个echo输出一个回车，为每个进程创建一个占位
                done >&6                                #将占位信息写入标识为6的管道
                #遍历命令列表
                while [ "$cmd" ]; do
                        read -u6                           #获取标识为6的占位（从管道取出一个空格，如无空格则阻塞，达到控制并发的目的）
                        #命令执行完后压回一个空格
                        {       theIP=`echo ${2} | awk '{print $2}'`
                                tmpLogFile="${mabsTmpLogPath}/${theIP}_mabs.log"        #多进程并发写同一文件时会导致写失败，故需对每个进程（每个ip）新建一个临时日志文件
                                runTime=`date +%F" "%T`
                                eval $2 | awk -vrunTime="${runTime}" -vtheIP=${theIP} '{print "["runTime"] " theIP"  :  "$0}' | tee -a ${tmpLogFile} 2>&1                #执行命令
                                echo >&6;               #>>>>>当任务执行完后，会释放管道占位，所以补充一个占位

                        } &                             #>>>>>在后台执行{}中的任务
                        shift
                        cmd=$2
                done                                    #将标识为6的管道作为标准输入
                #等待所有的后台子进程结束
                wait
                #关闭df6
                exec 6>&-
        }
############################################################# 功能函数 End ####################################################################

function shellInit()
{
        sid=`basename $0`
        export pid="${pid}-->$sid"
        theFiledir=`echo $(cd "$(dirname "$0")"; pwd)`
        cd ${theFiledir}
        nowTime=`date +%F%T | sed 's/-//g' | sed 's/://g'`
        mkdir -p ${theFiledir}/log/${nowTime}
        mabsTmpLogPath="${theFiledir}/log/${nowTime}"
        #默认日志文件为“本文件名.log”，如main函数有传入logFile参数（如不带路径则为当前目录），则以传入的日志文件名为准
        theFileName=`basename $0 | awk -F"." '{print $1}'`
        if [ "${logFile}" = "" ]; then
                logFile="${mabsTmpLogPath}/${theFileName}.log"
        fi
        logFilePath=`dirname ${logFile}`
        if [ "${logFilePath}" = '.' ]; then
                logFilePath=${theFiledir}
        fi
        logFileName=`basename ${logFile}`
        logFile="${logFilePath}/${logFileName}"
        mkdir -p ${logFilePath}
        touch ${logFile}
        #--------以上为框架规定，建议不要做修改----------
        if [ "${ipListFile}" = "" ]; then
                ipListFile='iplist.txt'
        fi
        if [ "${configFile}" = "" ]; then
                configFile='mabs.cnf'
        fi
        if [ "${sshTimeOut}" = "" ]; then
                sshTimeOut=120
        fi
        if [ "${scpTimeOut}" = "" ]; then
                scpTimeOut=120
        fi
        if [ "${process}" = "" ]; then
                process=1
        fi
        tmpIpList="${mabsTmpLogPath}/ipList.tmp"
        tmpMabsCnf="${mabsTmpLogPath}/mabsCnf.tmp"
        #注释掉的IP不执行
        cat ${ipListFile} | grep -v -E '^#| +#|\t+#' | sed /^[[:space:]]*$/d > ${tmpIpList}
        #解析mabs配置文件（去除注释及空行）
        cat ${configFile} | grep -v -E '^#| +#|\t+#' | sed /^[[:space:]]*$/d > ${tmpMabsCnf}
        #退出/中止脚本时，替换临时文件的密码部份
        trapCmd="cat ${tmpIpList} | awk '{print \$1\"  \"\$2\"  \"\$3\"  xxxxxx  \"\$5}' > ${tmpIpList}.tmp; rm -f ${tmpIpList}; mv ${tmpIpList}.tmp ${tmpIpList}"
        trap 'eval ${trapCmd}' EXIT
}

#检查
function check()
{
        checkFileExist ${ipListFile}
        checkFileExist ${configFile}
        #检查要推送的文件是否存在
        while read lines; do
                exeType=`echo "${lines}" | awk -F":::" '{print $1}'`
                if [ "${exeType}" = "file" ]; then      #文件拷贝
                        scpType=`echo "${lines}" | awk '{print $NF}'`
                        if [ "${scpType}" != "pull" ]; then
                                #如果有单引号，则把单引号内的作为一个整体变量（用于一次拷贝多个文件）
                                isExistsQuote=`echo ${lines} | grep \' | wc -l`
                                if [ "${isExistsQuote}" -ne 0 ]; then
                                        sourceFile=`echo ${lines} | awk -F"'" '{print $2}'`
                                else
                                        sourceFile=`echo ${lines} | awk -F":::" '{print $2}' | awk '{print $1}'`
                                fi
                                echo $sourceFile | sed -r 's/ +/\n/g' | while read theFileName; do
                                        checkFileExist ${theFileName}
                                done
                                showMsg 'errSys'
                        fi
                fi
        done < ${tmpMabsCnf}
        showMsg 'errSys'
}

#确认参数
function comfirm()
{
        showMsg 'msg' ""
        showMsg 'msg' "当前运行参数如下："
        showMsg 'msg' "-------------------------------------------------------------------"
        showMsg 'msg' "config file:   ${configFile}"
        showMsg 'msg' "iplist file:   ${ipListFile}"
        showMsg 'msg' "ssh timeout:   ${sshTimeOut}"
        showMsg 'msg' "scp timeout:   ${scpTimeOut}"
        showMsg 'msg' "max process:   ${process}"
        showMsg 'msg' "-------------------------------------------------------------------"
        while true; do
                showMsg 'msg2' "请对上述运行参数进行确认[yes/no] ?  "
                read theSure
                showMsg 'msg' ''
                if [ "${theSure}" = "yes" ]; then
                        break
                elif [ "${theSure}" = "no" ]; then
                        exit 0
                fi
        done
        execIPCount=`cat ${tmpIpList} | wc -l`
        showMsg 'msg' ""
        showMsg 'msg' ""
        showMsg 'msg' "mabs.cnf 配置文件内容如下："
        showMsg 'msg' "-------------------------------------------------------------------"
        cat ${tmpMabsCnf} | tee -a ${logFile}
        showMsg 'msg' "-------------------------------------------------------------------"
        showMsg 'msg' ""
        showMsg 'msg' "${ipListFile} 文件中包含IP个数为: ${execIPCount}"
        showMsg 'msg' ""
        while true; do
                showMsg 'msg2' "${configFile} 和 ${configFile} 的内容如上所述，请进行确认[yes/no] ? "
                read theSure
                showMsg 'msg' ''
                if [ "${theSure}" = "yes" ]; then
                        break
                elif [ "${theSure}" = "no" ]; then
                        exit 0
                fi
        done
}

#输入端口、帐号、密码（如参数及ip列表均无指定）
function inputArg()
{
        isExistPort=`head -1 ${tmpIpList} | awk '{print $2}'`
        if [ "${sysPort}" = ""  -a  "${isExistPort}" = "" ]; then
                showMsg 'msg2' 'Please input romote server port: '
                read sysPort
        fi
        isExistUser=`head -1 ${tmpIpList} | awk '{print $3}'`
        if [ "${sysUser}" = ""  -a  "${isExistUser}" = "" ]; then
                showMsg 'msg2' 'Please input romote server user: '
                read sysUser
        fi
        isExistPasswd=`head -1 ${tmpIpList} | awk '{print $4}'`
        if [ "${sysPasswd}" = ""  -a  "${isExistPasswd}" = "" ]; then
                showMsg 'msg2' 'Please input romote server password: '
                read -s sysPasswd
        fi
}

#执行一个IP
function executeForOneIP()
{
        local theIP="$1"
        local thePort="$2"
        local theUser="$3"
        local thePwd="$4"
        local executeNum="$5"
        #local errBreak="$5"
        echo "--- --- --- --- --- --- --- --- ---   ${executeNum}   --- --- --- --- --- --- --- --- ---"
        errCount=0
        while read lines; do
                exeType=`echo "${lines}" | awk -F":::" '{print $1}'`
                if [ "${exeType}" = "file" ]; then      #文件拷贝
                        #如果有单引号，则把单引号内的作为一个整体变量（用于一次拷贝多个文件）
                        isExistsQuote=`echo ${lines} | grep \' | wc -l`
                        if [ "${isExistsQuote}" -ne 0 ]; then
                                sourceFile=`echo ${lines} | awk -F"'" '{print $2}'`
                                toPath=`echo ${lines} | awk -F"'" '{print $3}' | awk '{print $1}'`
                        else
                                sourceFile=`echo ${lines} | awk -F":::" '{print $2}' | awk '{print $1}'`
                                toPath=`echo ${lines} | awk -F":::" '{print $2}' | awk '{print $2}'`
                        fi
                        scpType=`echo "${lines}" | awk '{print $NF}'`
                        if [ "${scpType}" = "pull" ]; then
                                #拉文件回来本机，并且把文件名改为“远程IP_原文件名”
                                autoScpPull "${theIP}" "${thePort}" "${theUser}" "${thePwd}" "${sourceFile}" "${toPath}" "${errBreak}"
                                errFlag=$?
                                errCount=`expr ${errCount} + ${errFlag}`
                        else
                                #从本机推文件到远程
                                autoScpPush "${theIP}" "${thePort}" "${theUser}" "${thePwd}" "${sourceFile}" "${toPath}" "${errBreak}"
                                errFlag=$?
                                errCount=`expr ${errCount} + ${errFlag}`
                        fi
                elif [ "${exeType}" = "com" ]; then     #执行命令
                        cmdStr=`echo "${lines}" | awk -F":::" '{print $2}'`
                        autossh "${theIP}" "${thePort}" "${theUser}" "${thePwd}" "${cmdStr}" "${errBreak}"
                        errFlag=$?
                        errCount=`expr ${errCount} + ${errFlag}`
                else
                        showMsg 'errUserMsg' "mabs configure file error, please check the file '${configFile}'"
                fi
        done < ${tmpMabsCnf}
        if [ "${errCount}" -eq 0 ]; then
                echo "--- --- --- --- --- ---   ${executeNum}  ${theIP} FINISHED --- SUCCESS --- --- --- --- ---"
        else
                echo "--- --- --- --- --- ---   ${executeNum} ${theIP} FINISHED --- FAILED_FILE --- --- --- --- ---"
        fi
}

#按参数指定的并发数（-p|--process）并行执行所有IP
function executeForAllIP()
{
        declare -a array_cmds
        i_array=0
        allIpCount=`cat ${tmpIpList} | wc -l`
        while read theIP thePort theUser thePwd; do
                executeNum=`expr ${i_array} + 1`
                if [ "${sysPort}" != "" ]; then
                        thePort=${sysPort}      #当指定--port参数时，端口号以参数为准
                fi
                if [ "${sysUser}" != "" ]; then
                        theUser=${sysUser}      #当指定-u参数时，用户名以参数为准
                fi
                if [ "${sysPasswd}" != "" ]; then
                        thePwd=${sysPasswd}     #当指定-p参数时，密码以参数为准
                fi
                array_cmds[i_array]="executeForOneIP ${theIP} ${thePort} '${theUser}' '${thePwd}' '${executeNum} / ${allIpCount}'"
                i_array=`expr ${i_array} + 1`
        done < ${tmpIpList}
        #如果ip个数小于指定的进程数，则以ip个数作为并发执行的进程数
        execProcess=`cat ${tmpIpList} | wc -l`
        if [ "${execProcess}" -lt "${process}" ]; then
                process=${execProcess}
        fi
        execConcurrency ${process} "${array_cmds[@]}"           #开始并发执行
}

#执行结果说明
function mabsResult()
{
        cat ${mabsTmpLogPath}/*_mabs.log >> ${logFile}  #把每个进程的日志写到总日志文件里
        endTime=`date +%F" "%T`
        let timeUse=`date +%s --date="$endTime"`-`date +%s --date="$beginTime"`
        execIPCount=`cat ${tmpIpList} | wc -l`
        successIPCount=`cat ${logFile} | grep 'FINISHED --- SUCCESS ---' | wc -l`
        failIPCount=`expr ${execIPCount} - ${successIPCount}`
        echo "" | tee -a ${logFile}
        echo "=============================   运 行 情 况 小 结   ===============================" | tee -a ${logFile}
        echo "========== 本次运行时间：${beginTime} -- ${endTime} 耗时 ${timeUse} 秒" | tee -a ${logFile}
        echo "========== 本次运行命令语句：${thisName} ${allOption}" | tee -a ${logFile}
        echo "========== 本次共处理IP数: ${execIPCount}" | tee -a ${logFile}
        echo "========== 本次成功处理IP数: ${successIPCount}" | tee -a ${logFile}
        if [ "${failIPCount}" -eq 0 ]; then
                echo "========== 本次处理失败的IP数: ${failIPCount}" | tee -a ${logFile}
        else
                echo -e "\033[31;49;1m========== 本次处理失败的IP数: ${failIPCount}" | tee -a ${logFile}
                echo -e "========== 执行失败的IP为："
                cat ${logFile} | grep 'FINISHED --- SUCCESS ---' | awk -F"]" '{print $2}' | awk '{print $1}' > ${mabsTmpLogPath}/successIP.txt
                cat ${tmpIpList} | awk '{print $1}'| while read theIP; do
                         isSuccess=`cat ${mabsTmpLogPath}/successIP.txt | grep ${theIP} | wc -l`
                         if [ "${isSuccess}" -eq 0 ]; then
                                echo $theIP | tee -a ${logFile}
                                cat ${logFile} | grep ${theIP} >> ${mabsTmpLogPath}/mabsFail.log
                         fi
                done
                echo "详细失败日志请查看 ${mabsTmpLogPath}/mabsFail.log"
                echo -e "\033[39;49;0m" | tee -a ${logFile}
        fi
        echo "========== 更多详细信息请见 ${logFile}" | tee -a ${logFile}
        echo "===================================================================================" | tee -a ${logFile}
}

#使用说明
function usage()
{
        showVersion
        echo ""
        echo "USAGE: $0"
        echo "        [-h|--help]                     显示本帮助"
        echo "        [-v|-V|--version]               显示版本号"
        echo "        [-l|--ipListFile ... ]          自定义需要批量处理的机器列表，默认为iplist.txt"
        echo "                                        默认格式为：IP、密码、端口，之后还可附加其他信息"
        echo "                                        使用-p|--passwd参数时，格式为：IP，之后还可附加其他信息"
#       echo "                                        若该选项以'ip:::'开头，后接ip地址，各ip地址以逗号（“,”）分隔，则以该ip列表为准，不再查找ip列表文件"
        echo "        [-c|--configFile ... ]          自定义配置文件，默认为mabs.cnf"
        echo "                                        可包含需要远程执行的命令以及需要传送的文件"
#       echo "                                        开头关键字要求为'com:::'或'file:::'"
#       echo "                                        若该选项以'file:::'和/或'com:::'开头，则以参数内容替代配置文件，此时配置文件无效"
        echo "        [-t|--sshTimeOut ... ]          远程执行命令时的超时设置"
        echo "                                        默认为120s，单位为s，-1表示无超时"
        echo "        [-T|--scpTimeOut ... ]          传送文件时的超时设置"
        echo "                                        默认为120s，单位为s，-1表示无超时"
        echo "        [-o|--logFile ... ]             执行结果默认保存在当前目录的mabs.log文件中"
        echo "                                        可通过-o选项将执行结果保存在其他文件中"
        echo "        [-y|--yes]                      可设置对所有确认直接回答yes"
        echo "        [--port]                        登录远程服务器的端口，当指定该参数时，ip列表的端口无效（只适用于ip列表里的所有服务器均用相同端口登录）"
        echo "        [-u|--sysUser]                  登录远程服务器的用户名，当指定该参数时，ip列表的用户名无效（只适用于ip列表里的所有服务器均用相同用户名登录）"
        echo "        [-p|--sysPasswd]                小写p，登录远程服务器的密码，当指定该参数时，ip列表的密码无效（只适用于ip列表里的所有服务器均用相同密码登录）"
        echo "        [-P|--process ... ]             大写P，最多启动子进程数量，<=1 表示单进程，默认单进程"
        echo "        [-f|--force]                    强制执行配置文件（默认为mabs.cnf）的所有命令（默认执行一个出错后即退出，后面不再执行）"
        echo '        [-m|--memory]                   从内存中获取export出来的 $sPort(远程服务器端口)、$sUser(远程服务器账号)、$sPwd(远程服务器密码)'
        echo ""
        echo "ip列表格式为（默认文件为iplist.txt，否则需'-l'参数指定）:"
        echo '----------------------------------------------------------'
        echo '#    IP          端口    账户      密码'
        echo '192.168.6.129   16333    root     123456'
        echo '192.168.6.130   16333    root     123456'
        echo ''
        echo "配置文件格式为(默认文件为mabs.cnf，否则需'-c'参数指定):"
        echo '-----------------------------------------------------------'
        echo 'com:::mkdir -p /root/mabsTest                                                         #在每台远程服务器执行建/root/mabsTest目录命令'
        echo 'file:::/root/mabs/test_scp_1.txt   /root/mabsTest/  push                              #把test_scp_1.txt推送到每台远程服务器的/root/mabsTest目录下'
        echo "file:::'/root/mabs/test_scp_2.txt /root/mabs/test_scp_3.txt'   /root/mabsTest/  push  #把test_scp_2.txt、test_scp_3.txt推到每台远程服务器，注意本地两个文件需用单引号引起来"
        echo 'com:::cd /root/mabsTest; cat test_scp_1.txt > test_ssh_1.txt                          #在每台远程服务器执行命令'
        echo 'com:::cd /root/mabsTest; cat test_scp_2.txt > test_ssh_2.txt; cat test_scp_3.txt > test_ssh_3.txt'
        echo 'file:::/root/mabsTest/test_ssh_1.txt /root/mabs/  pull                                #把每台远程服务器上的/root/mabsTest/test_ssh_1.txt文件下载到本地/root/mabs/目录下，并在原文件名前加上远程IP'
        echo 'file::: /root/mabsTest/test_ssh_2.txt /root/mabs/  pull'
        echo 'file:::/root/mabsTest/test_ssh_3.txt /root/mabs/ pull'
        echo ''
}

#版本说明
function showVersion()
{
        echo ''
        echo 'mabs version: 1.0'
        echo "Modify date: 2015.08"
        echo ''
}

#参数调试
function testArg()
{
        echo "-l ${ipListFile}"
        echo "-c ${configFile}"
        echo "-t ${sshTimeOut}"
        echo "-T ${scpTimeOut}"
        echo "-y ${confirmYes}"
        echo "-o ${logFile}"
        echo "-u ${sysUser}"
        echo "-p ${sysPasswd}"
        echo "-P ${process}"
        echo "-f ${errBreak}"
        exit 1
}

#入口函数
function main()
{
        allOption="$*"
        thisName=`echo $0`
        beginTime=`date +%F" "%T`
        ARGS=`getopt -o hvVyl:c:t:T:o:u:p:P:fm --long help,version,confirmYes,ipListFile:,configFile:,sshTimeOut:,scpTimeOut:,logFile:,port:,sysUser:,sysPasswd,process:,force,memory -- "$@" 2>/dev/null`
        if [ $? != 0 ] ; then
                echo "ERROR: wrong option(1)"
                echo ""
                usage
                exit 1
        elif [ $# = 0 ] ; then
            usage
            exit 1

        fi
        eval set -- "$ARGS"
        while true ; do
            if [ -z "$1" ]; then
                break;
            fi
            case "$1" in
                -h|--help) usage; exit 0;;
                -v|-V|--version) showVersion; exit 0;;
                -l|--ipListFile) ipListFile=$2; shift 2;;
                -c|--configFile) configFile=$2; shift 2;;
                -t|--sshTimeOut) sshTimeOut=$2; shift 2;;
                -T|--scpTimeOut) scpTimeOut=$2; shift 2;;
                -y|--confirmYes) confirmYes=1; shift;;
                -o|--logFile) logFile="$2"; shift 2;;
                --port) sysPort="$2"; shift 2;;
                -u|--sysUser) sysUser="$2"; shift 2;;
                -p|--sysPasswd) sysPasswd="$2"; shift 2;;
                -P|--process) process=$2; shift 2;;
                -f|--force) errBreak=2; shift;;
                -m|--memory) sysPort="$sPort"; sysUser="$sUser"; sysPasswd="$sPwd"; shift;;
                --) shift;;
                --) shift;;
                *) echo "ERROR: wrong option(2)"; echo ""; usage; exit 1 ;;
            esac
        done
        stty erase ^h
        shellInit
#        testArg
        check
        if [ "${confirmYes}" != "1" ]; then
                comfirm
        fi
        inputArg
        executeForAllIP
        mabsResult
}
main "$@"
