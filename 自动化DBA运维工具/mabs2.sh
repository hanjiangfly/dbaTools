#!/bin/bash
#Author: Junjie.he
#Date: 2013-04-25
#Versions:3.1
###updatelog
#3.0 增加从服务器下载文件的功能在file的最后加一个get uptime:2013-04-23
#3.1 密码读取方式修改 uptime:2013-04-25
#3.2 参数错误提示 uptime:?
#Description:用于批量操作服务器，可按命令组合，完成特定的任务,-c 指定命令文件 -f 指定需要操作服务器列表 -P 并发数量 -O 输出日志路径 -t 设置ssh或者scp超时时间(默认600秒,-1表示永久不超时) -l (ip|site) (ssh登陆远程主机(单台))
#Usage1: ./mabs.sh -c config -f file -P 100 -O out.log -t 120
#Usage2: ./mabs.sh -l (ip|site) -f file(default iplist)

#LC_ALL=en_US.UTF-8
#alter by warrior 20140507

###Print help
function Error_echo()
{
    echo -e "\033[31;1m Error: $* \033[0m"
}

function Succeed_echo()
{
    echo -e "\033[32m $* \033[0m"
    echo ""
}

function Format_echo()
{
    echo -n "[`date +%F\ %T`] "
    echo $*
}

function Print_help()
{
    sed -n '/^#Author\|^#Date\|^#Versions/p' $0|sed 's/#//g'
    echo ""
    echo "Usage:$0"
    echo -e "\t[-h|--help]\t\t显示帮助"
    echo -e "\t[-c|--config ... ]\t自定义配置文件可包含需要远程执行的命令以及需要传送的文件开头关键字要求为'cmd:::'或'file:::'"
    echo -e "\t[-f|--file ... ]\t自定义批量处理的机器列表默认格式为：IP、User、Password、Port、Site、Type，还可附加其他信息"
    echo -e "\t[-P|--process ... ]\t最多启动子进程数量，<=1 表示单进程，默认单进程"
    echo -e "\t[-O|--outlog ... ]\t运行输出保存至文件"
    echo -e "\t[-t|--timeout ... ]\tssh or scp timeout (default 600)"
    echo -e "\t[-l|--login ... ]\tssh登陆远程主机(单台)"
        echo -e "\t[-p|--passwd ... ]\t表示密码和SSH登录端口由用户输入"
    echo ""
    sed -n '/^#Usage/p' $0|sed 's/#//g'
}
###check
function Check_begin()
{
    if ! `which expect >/dev/null 2>&1`; then
        yum install expect -y >/dev/null 2>&1
        echo "Please again $0"
        exit 1
    fi
    All_num=$#
    if [ $All_num -lt 2 ];then 
        Print_help
        exit 1
    fi
    check_File()
        {
        File_tmp=${Array[$(($i+1))]}
        if ! [ -f $File_tmp ];then
            Error_echo "file $File_tmp not exist"
            exit 1
        fi
    }
    for i in `seq 0 $((${#Array[*]}-1))`
    do
        case ${Array[$i]} in 
            -h|--help) Print_help;;
            -c|--config) check_File;File_config=${Array[$(($i+1))]};;
            -f|--file) check_File;File_file=${Array[$(($i+1))]};;
            -P|--process)
                Num_process=${Array[$(($i+1))]}
                if ! `echo $Num_process|grep -P -q "^[1-9]+\d*$"`;then
                    Error_echo "process error"
                    exit 1
                else
                    if [ $Num_process -gt 10000 ];then
                        Error_echo "process too big"
                        exit 1
                    fi
                fi
            ;;
                        -p|--passwd) PASSWDINPUTFLAG=1;;
            -l|--login)
                IPorSite=${Array[$(($i+1))]}
                if `echo $IPorSite|grep -P -q -w "^((?:(?:25[0-5]|2[0-4]\d|((1\d{2})|([1-9]?\d)))\.){3}(?:25[0-5]|2[0-4]\d|((1\d{2})|([1-9]?\d))))$"`;then
                    :
                elif `echo $IPorSite|grep -P -q -w "^\w+$"`;then
                    :
                else
                    Error_echo "IP address error or site error"
                    exit 1
                fi
            ;;
            -t|--timeout)
                Timeout=${Array[$(($i+1))]}
                if ! `echo $Timeout|grep -P -q -w "\d+"`;then
                    Error_echo "Timeout is not Numbers"
                    exit 1
                fi
            ;;
            -O|--outlog) File_outlog=${Array[$(($i+1))]};;
        esac
    done
}


function Expect_var()
{
        Site=$1
        #Type=$2
        IP=`grep -w "$Site" $File_file | grep -v "^#" | awk '{print $1}'`
}

###ssh login
function Ssh_login()
{
    Expect_var $*
    expect -c " 
        spawn env LC_ALL="en_US.UTF-8" ssh -p $Port $User@$IP 
        expect {
                -timeout 60
            \"yes/no\"    {send \"yes\r\";exp_continue}
            \"*password\" {send \"$Password\r\"}
            }
        interact 
    "
}


###ssh cmd
function Ssh_cmd()
{
    Expect_var $*
    expect -c " 
                spawn ssh -p $Port $User@$IP \"source /etc/profile>/dev/null 2>&1;$Cmd\" 
                set timeout $Timeout
        expect {
                        \"yes/no\"    {send \"yes\r\";exp_continue}
                        \"*password\" {send \"$Password\r\";exp_continue}
                        \"FATAL\"                             {exit 1;exp_continue}
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
                        \"No such file\"                      {exit 17;exp_continue}
                        \"Permission denied,\"                {exit 19;exp_continue}
                        \"Destination Unreachable\"           {exit 18}
                }
             
        "
        errorNum="$?"
        if [ "${errorNum}" -ne 0 ];then
            echo "$IP : Ssh_cmd error : ${errorNum}" | tee -a ${File_error_log}
                echo "$IPorSite" >>$File_fail_mabs
                return 1
        fi
        echo "$IPorSite" >>$File_succeed_mabs
}


function Ssh_scp()
{
    Expect_var $*
    if [ "$GetFile" == "get" ];then
        local FileName=${S_file##*/}
        Get_Push="$User@$IP:${S_file} ${D_file}${FileName}_$IP"
    else
        Get_Push="$S_file $User@$IP:$D_file"
    fi
                #spawn scp -r -P$Port $S_file $User@$IP:$D_file
    expect -c " 
                spawn scp -r -P$Port $Get_Push
                set timeout $Timeout
                expect {
                        \"yes/no\"    {send \"yes\r\";exp_continue}
                        \"*password\" {send \"$Password\r\";exp_continue}
                        \"FATAL\"                             {exit 1;exp_continue}
                        timeout                               {exit 2;exp_continue}
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
                        \"No such file\"                      {exit 17;exp_continue}
                        \"Permission denied,\"                {exit 19;exp_continue}
                        \"Destination Unreachable\"           {exit 18}
                }
        "
        errorNum="$?"
        if [ "${errorNum}" -ne 0 ];then
                echo "$IP : Ssh_scp error : ${errorNum}" | tee -a ${File_error_log}
                echo "$IPorSite" >>$File_fail_mabs
                return 1
        fi
        echo "$IPorSite" >>$File_succeed_mabs
}

function Print_check()
{
    if [ "$1" == "1" ];then
        return 0
    fi
    echo ""
    echo "======== 当前运行参数如下："
    echo -e "\t\"$File_config\"    --- as your config"
    echo -e "\t\"$File_file\"    --- as your iplist"
    echo -e "\t\"$Timeout\"    --- as ssh timeout"
    echo -e "\t\"$Timeout\"    --- as scp timeout"
    echo -e "\t\"$Num_process\"    --- as your max process count"
    echo -n "======== 请对上述运行参数进行确认... [yes/no]?"
    read Yes_No
    if [ $Yes_No != "yes" ];then
        exit 1
    fi
    echo ""
    echo "======== $File_config 配置文件内容如下："
    echo "`grep -v "^#" $File_config`"
    echo "================================="
    echo ""
    echo "======== $File_file 文件中包含IP个数为:`grep -v "^#" $File_file|wc -l`"
    echo ""
    echo -n "======== $File_config and $File_file 的内容如上所述，请进行确认... [yes/no]?"
    read Yes_No
    if [ $Yes_No != "yes" ];then
                exit 1
    fi
}


function Print_end()
{
    echo "============================ 运 行 情 况 小 结 ==========================="
    echo "======== 本次运行时间：$date_begin -- $date_end 耗时 $date_sum 秒"
    echo "======== 本次运行命令语句："
    echo "`grep -v "^#" $File_config`"
    echo "================================"
    echo ""
    echo "======== 本次共处理IP数: `grep -v "^#" $File_file|wc -l`"
    echo "======== 本次成功处理IP数: `cat $File_succeed_mabs|sort|uniq|wc -l`"
    echo "======== 本次因连接失败导致未处理的IP数: `cat $File_error_log|sort|uniq|awk -F: '{print $NF}'|sed 's/ //g'|grep -E "^(3|4|5|6|7|8|9|10|11|12|18)$"|wc -l`"
    echo "======== 本次因文件名或目录名错误导致未处理的IP数: `cat $File_error_log|sort|uniq|awk -F: '{print $NF}'|sed 's/ //g'|grep -E "^(13|17)$"|wc -l`"
    echo "======== 本次因密码错误导致未处理的IP数: `cat $File_error_log|sort|uniq|awk -F: '{print $NF}'|sed 's/ //g'|grep "^19$"|wc -l`"
    echo "======== 本次总共未处理的IP数: `cat $File_fail_mabs|sort|uniq|wc -l`"
    echo "======== 更多详细信息请见 `pwd`/$File_outlog and `pwd`/$File_error_log"
    for i in `cat $File_fail_mabs|sort|uniq`
    do
        grep -w  $i $File_file
    done
}

function Format_Ssh_cmd_scp()
{
    IP_all=`grep -v "^#" $File_file|wc -l`
    if `echo $Cmd_file|grep -w -q "^cmd"`;then
        Cmd="`echo "$Cmd_file"|grep "cmd:::"|grep -v "^#"|awk -F::: '{print $2}'|sed 's/"/\\\\"/g'|sed 's/]/\\\\]/g'|sed 's/\[/\\\\[/g'|sed 's/\\$/\\\\$/g'`"
        Ssh_cmd $IPorSite|sed "/spawn ssh\|password:/d"|sed "s/^/$IPorSite    :    /"|tee -a $File_outlog && echo >&6
        #Ssh_cmd $IPorSite|sed "s/^/$IPorSite    :    /"|tee -a $File_outlog && echo >&6
        IP_finish=`cat $File_succeed_mabs|sort|uniq|wc -l`
        echo "------------------------ $IP_finish / $IP_all ------------------------"
    elif `echo $Cmd_file|grep -w -q "^file"`;then
        S_file="`echo "$Cmd_file"|grep "file:::"|grep -v "^#"|awk -F::: '{print $2}'|awk '{print $1}'|sed 's/"//g'`"
        D_file="`echo "$Cmd_file"|grep "file:::"|grep -v "^#"|awk -F::: '{print $2}'|awk '{print $2}'|sed 's/"//g'`"
        GetFile="`echo "$Cmd_file"|grep "file:::"|grep -v "^#"|awk -F::: '{print $2}'|awk '{print $3}'|sed 's/"//g'`"
        Ssh_scp $IPorSite|sed "/spawn scp\|password:/d"|sed "s/^/$IPorSite    :    /"|tee -a $File_outlog && echo >&6
        IP_finish=`cat $File_succeed_mabs|sort|uniq|wc -l`
        echo "------------------------ $IP_finish / $IP_all ------------------------"
    fi
}

function prompt()
{
    while true
    do
        echo -e -n "$1 [yes/no/exit] ? "
        if [ "$CONFIRM_YES" == "1" ]; then
            echo "yes"
            echo ""
            return 0
        fi
        read PROMPT_ANSWER
        if [ -z "$PROMPT_ANSWER" ]; then
            continue
        else
            if [ "$PROMPT_ANSWER" == "yes" ]; then
                echo ""
                return 0
            elif [ "$PROMPT_ANSWER" == "no" ]; then
                echo ""
                return 1
            elif [ "$PROMPT_ANSWER" == "exit" ]; then
                echo ""
                exit 0
            else
                continue
            fi
        fi
    done
}

function get_mypasswd()
{
    while true
    do
        echo -n "$1"
        stty -echo
        read MYPASSWD
        stty echo

        echo ""
        if [ -z "$MYPASSWD" ]; then
            continue
        fi

        echo ""
        prompt "========== 请确认您是否已输入了正确的密码..."

        if [ $? -eq 0 ]; then
            break
        fi
    done
}

function get_myuser()
{
    while true
    do
        echo -n "$1"
        read MYUSER

        echo ""
        if [ -z "$MYUSER" ]; then
            continue
        fi

        echo ""
        prompt "========== 请确认您是否已输入了正确的用户..."

        if [ $? -eq 0 ]; then
            break
        fi
    done
}

function get_mysshport()
{
    while true
    do
        echo -n "$1"
        read MYSSHPORT

        if [ -z "$MYSSHPORT" ]; then
            continue
        fi

        echo ""
        prompt "========== 请确认您是否已输入了正确的SSH登录端口..."

        if [ $? -eq 0 ]; then
            break
        fi
    done
}

###main
function main()
{
    ###default var
    File_config=config
    File_file=iplist
    Num_process=1
    File_outlog=/tmp/log.mabs
    Timeout=600
    File_error_log=error.log.mabs
    File_fail_mabs=`mktemp /tmp/fail.mabs.XXXX`
    File_succeed_mabs=`mktemp /tmp/succeed.mabs.XXXX`
        PASSWDINPUTFLAG=-1
    ###init_
    tmp_fifofile="/tmp/$.fifo"
    mkfifo $tmp_fifofile      
    exec 6<>$tmp_fifofile    
    rm $tmp_fifofile 
    :>$File_error_log
    ###
    Array=($*)
    Check_begin $*
        if [ "${PASSWDINPUTFLAG}" -eq 1 ]; then
                get_myuser "========== 请输入本批待处理IP的用户名："
                get_mypasswd "========== 请输入本批待处理IP的用户登录密码："
                get_mysshport "========== 请输入本批待处理IP的SSH登录端口："
                User="${MYUSER}"
                Password="${MYPASSWD}"
                Port="${MYSSHPORT}"
        else
                User='root'
                Password='viVJ3qZWc4B69mIoZD7i'
                Port='16333'
        fi
    :>$File_outlog
    if `echo "$*"|grep -E -w -q "\-l|\-\-login"`;then
        if grep -q $IPorSite $File_file;then
            grep $IPorSite $File_file|awk '{print $1,$2,$4,$5,$6}'
            echo -n "Please option type(web/db1/db2): "
            read Type
            Ssh_login $IPorSite $Type
        else
            Error_echo "$IPorSite IP or Site not exit"
        fi
    else
        if [ "${Array[$((${#Array[@]}-1))]}" == "1" ];then
            Print_check 1
        else
            Print_check 0
        fi
        date_1=`date +%s`
        date_begin=`date +%F\ %T`
        grep -v -E "^#|^$"  $File_config|while read Cmd_file
        do
            :>$File_succeed_mabs
            :>$File_fail_mabs
            for ((c=0;c<$Num_process;c++))
            do
                echo
            done >&6
            for IPorSite in `grep -v -E "^#|^$" $File_file|awk '{print $1}'`
            do
                read -u6
                Format_Ssh_cmd_scp &
            done
            wait
        done
        exec 6>&- 
        date_2=`date +%s`
        date_end=`date +%F\ %T`
        date_sum=$((${date_2}-${date_1}))
        sleep 1
        clear
        Print_end
        rm $File_fail_mabs $File_succeed_mabs -f >/dev/null 2>&1
    fi
}
main $*
