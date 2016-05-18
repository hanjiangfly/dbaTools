#!/bin/sh
#encode begin
  #                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
#endcode end
#complie=true
#
#Author: jiang.han 
#Date:
#Description:
#Usage:
source /etc/profile


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
                local showExtent=`ifconfig |grep 'inet addr'|awk -F '[ :]' '{print $13}' | grep -v -E '(^192\.168\.)|(^10\.)|(^172\.(1[6-9]|2[0-9]|31)\.)|(^127\.0)'`

                showType=`echo ${showType} | tr 'A-Z' 'a-z'`
                case "${showType}" in
                        errsysmsg)
                                if [ "${errState}" -ne 0 ]; then
                                        echo -e "\033[31;49;1m[`date +%F' '%T`] ${showExtent} Error: ${showContent}\033[39;49;0m" | tee -a ${logFile}
                                        echo -e "\033[31;49;1m[`date +%F' '%T`] Call Relation: bash${pid}\033[39;49;0m" | tee -a ${logFile}
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
                                echo -e "\033[31;49;1m[`date +%F' '%T`] ${showExtent} Error: ${showContent}\033[39;49;0m"  | tee -a ${logFile}
                                echo -e "\033[31;49;1m[`date +%F' '%T`] Call Relation: bash${pid}\033[39;49;0m" | tee -a ${logFile}
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
        
        
        #检查指定文件是否存在
        function checkFileExist()
        {
                theFileName="$1"
                if [ ! -f $theFileName ]; then
                       echo "[`date +%F' '%T`] Error: The file '$theFileName' is not exist." | tee -a  ${logFile}
                       exit 1
                fi
        }
        
        #检查变量是否存在
        function checkVar()
        {
                local theVar="$1"
                if [ "${theVar}" = "" ]; then
                        showMsg "errUserMsg" "The var is not invalidation."
                fi
        }
        
        #下载文件，如果文件存在，则判断Md5，不一致则重新下载，否则直接下载
        #softFtpURL='http://113.107.88.124:8088/shenqu'         #主站http
        #softFtpURLMirror='http://113.107.167.90:8088/shenqu'   #镜像http
        #httpUser='7roadwget'
        #httpPwd='love7road'
        #fileDownload 'aaa.txt' 'opendb'
        function fileDownload()
        {
                #softFtpURL="$1"
                #softFtpURLMirror="$2"
                #httpUser="$3"
                #httpPwd="$4"
                theDownFileName="$1"
                prjKeyWord="$2"
                URLType='primary station'
                rm -f dbToolsVersion.txt.wgetTemp
                verFullURL=$(echo "${softFtpURL}/dbToolsVersion.txt"| sed 's/http:\/\//http:##/g' | sed 's/\/\//\//g' | sed 's/http:##/http:\/\//')
                wget --http-user=${httpUser} --http-password=${httpPwd} -t 2 -T 5 "${verFullURL}" -O dbToolsVersion.txt.wgetTemp >> ${logFile} 2>&1
                if [ "$?" -ne 0 ]; then
                        softFtpURL="${softFtpURLMirror}"
                        URLType='mirror station'
                        verFullURL2=$(echo "${softFtpURL}/dbToolsVersion.txt"| sed 's/http:\/\//http:##/g' | sed 's/\/\//\//g' | sed 's/http:##/http:\/\//')
                        wget --http-user=${httpUser} --http-password=${httpPwd} -t 2 -T 5 "${verFullURL2}"  -O dbToolsVersion.txt.wgetTemp >> ${logFile} 2>&1
                        showMsg "errSysMsg" "Can not download the version file from '${verFullURL}' and '${verFullURL2}'"
                fi
                thePath=$(cat dbToolsVersion.txt.wgetTemp | grep "\ ${prjKeyWord}" | grep "${theDownFileName}$" | awk '{print $NF}')
                softFullURL=$(echo "${softFtpURL}/${thePath}" | sed 's/http:\/\//http:##/g' | sed 's/\/\//\//g' | sed 's/http:##/http:\/\//')
                if [ -f ${theDownFileName} ]; then
                        theLocalMd5=`md5sum ${theDownFileName} | awk '{print $1}'`
                        theFileMd5=`cat dbToolsVersion.txt.wgetTemp | dos2unix | grep "\ ${prjKeyWord}" |  grep "${theDownFileName}$" | awk '{print $1}'`
                        if [ "${theLocalMd5}" != "${theFileMd5}" ]; then
                                rm -f ${theDownFileName}.wgetTmp
                                showMsg "msg2" "Download file ${theDownFileName} from ${URLType}......"
                                wget --http-user=${httpUser} --http-password=${httpPwd} "${softFullURL}" -O ${theDownFileName}.wgetTmp >> ${logFile} 2>&1
                                showMsg "errSysMsg" "Some error occur when 'wget \"${softFullURL}\"'"
                                showMsg "OK"
                                mv  ${theDownFileName}.wgetTmp ${theDownFileName} -f
                        fi
                else
                        rm -f ${theDownFileName}.wgetTmp
                        showMsg "msg2" "Download file ${theDownFileName} from ${URLType}......"
                        wget --http-user=${httpUser} --http-password=${httpPwd} "${softFullURL}" -O ${theDownFileName}.wgetTmp >> ${logFile} 2>&1
                        showMsg "errSysMsg" "Some error occur when 'wget \"${softFullURL}\"'"
                        showMsg "OK"
                        mv  ${theDownFileName}.wgetTmp ${theDownFileName} -f
                fi
                #检查最新下载的文件MD5是否正确
                theLocalMd5=`md5sum ${theDownFileName} | awk '{print $1}'`
                theFileMd5=`cat dbToolsVersion.txt.wgetTemp | dos2unix | grep "\ ${prjKeyWord}" |  grep "${theDownFileName}$" | awk '{print $1}'`
                if [ "${theLocalMd5}" != "${theFileMd5}" ]; then
                        showMsg "errUserMsg" "The MD5 of new download file '${theDownFileName}' is error. theLocalMd5=${theLocalMd5}, theServerMd5=${theFileMd5}"
                fi
                rm -f dbToolsVersion.txt.wgetTemp
        }        
        function checkFileMD5(){
            filepath="$1"
            toolsMd5="$2"
            checkVar "$filepath"
            checkVar "$toolsMd5"
            fileMd5=$( md5sum  $filepath | awk '{print $1}' )
            if [ "$toolsMd5" != "$fileMd5" ];then
                echo "diff"
            else
                echo "same"
            fi
        }
        
        #取得本机的内网IP
        function getLocalInnerIP()
        {
               ifconfig |  grep -o 'inet addr:[0-9.]*' | grep -o '[0-9.]*$' | grep -e '^192\.168\.' -e '^10\.' -e '^172\.\(1[6-9]\|2[0-9]\|30\|31\)'
        }
        
        
        #检查变脸是否是数字
        function checkNum()
        {
            local theVar="$1"
            local key=`echo $theVar | grep -cE '^[0-9]+$' `
            if [ "$key" == "0" ];then 
                showMsg "errUserMsg" "The var is not num."
            fi
        }
        
        #IP地址转换到整数
        function ip2num()
        {
            local v_ip="$1"
            python <<EOF
ip2num = lambda x:sum([256**j*int(i) for j,i in enumerate(x.split('.')[::-1])])
print ip2num("$v_ip")
EOF
        }
        

   

function shellInit()
{
        logFile="$(pwd)/log/install_db.log"
        mkdir -p $(dirname $logFile)  &&  touch $logFile
        checkFileExist "install_db.cnf"   &&   source ./install_db.cnf
        softFtpURL="http://121.10.141.204:8088/qf"
        httpUser='7roadwget'
        httpPwd='love7road'
}
function checkMysqlExist(){
    if [ -f /data/.install.mysql.ok ]; then 
        showMsg warning "mysql has install ok (the tip file '/data/.install.mysql.ok' exists ,plase check it !)"
        return 11
    else
        local count_mysql_instance=`ps -ef | grep mysqld | grep -v grep -c`
        if [ "$count_mysql_instance" != '0' ]; then
            showMsg errusermsg "has mysql process (' ps -ef | grep mysql ' has process ,plase check it !)"
        fi
    fi
}

function makeMysqlInstallTip(){
    echo "install mysql db ok on `date`." > /data/.install.mysql.ok
}

#替换my.cnf
function replaceCnf()
{
        #规换IP
        checkVar "$LOCALIP"
        sed -i "s/bind-address.*/bind-address= ${LOCALIP}/" /etc/my.cnf
        #更新Server_id
        checkVar "$innodb_buffer_pool_size_per"
        Mem_usage=`free -m|grep Mem|awk '{print int($2* '\"$innodb_buffer_pool_size_per\"' )}'`
        sed -i "s/innodb_buffer_pool_size = .*/innodb_buffer_pool_size = ${Mem_usage}M/g" /etc/my.cnf
        Server_id=$( ip2num $( getLocalInnerIP  ) )
        checkNum "$Server_id"
        sed -i "s/server-id = .*/server-id = ${Server_id}/g" /etc/my.cnf
}

function EnvInitPrep(){
    #获取ip
    LOCALIP=`getLocalInnerIP`
    
    checkVar "$LOCALIP"
    checkVar "$DBType"
    checkVar "$MySqlInstallTarFile"
    checkVar "$MySqlVersion"
    checkVar "$innodb_buffer_pool_size_per"
    
    DBType=`echo ${DBType} | tr 'A-Z' 'a-z'`
    MySqlInstallTarFile=`echo ${MySqlInstallTarFile} | tr 'A-Z' 'a-z'`
    MySqlVersion=`echo ${MySqlVersion} | tr 'A-Z' 'a-z'`
    
    #把可能会读取到的相关配置都删除
    rm -rf /etc/mysql/my.cnf 
    rm -rf /usr/local/mysql/etc/my.cnf
    rm -rf /root/.my.cnf
    rm -rf /etc/my.cnf
    
    #下载
    if [ "$MySqlVersion" = 'mysql57' ];then
        if [ "$DBType" = "master" ];then
            fileDownload "my_master57.cnf" "common"
            cp my_master57.cnf /etc/my.cnf
        elif [ "$DBType" = "slave" ];then
            fileDownload "my_slave57.cnf" "common"
            cp my_slave57.cnf /etc/my.cnf
        fi
    elif [ "$MySqlVersion" = 'mysql56' ];then
        if [ "$DBType" = "master" ];then
            fileDownload "my_master56.cnf" "common"
            cp my_master56.cnf /etc/my.cnf
        elif [ "$DBType" = "slave" ];then
            fileDownload "my_slave56.cnf" "common"
            cp my_slave56.cnf /etc/my.cnf
        fi
    else
        showMsg errusermsg "Can not find the corresponding version function to exe '$MySqlVersion'."
    fi
    fileDownload "$MySqlInstallTarFile" "common"
}


#安装mysql
function installMysql56()
{
    HOSTNAME=$(hostname)
    FOUND=$(grep "$HOSTNAME" /etc/hosts)
    if [ -z "$FOUND" ]; then
        echo "$localIP $HOSTNAME" >> /etc/hosts
    fi

    showMsg msg2 "Initialize the installation directory for all configurations of MySQL.    "
    thetardir=`echo $(cd "$(dirname "$0")"; pwd)`
    cat /etc/group | grep -q mysql || groupadd mysql
    cat /etc/shadow | grep -q mysql || useradd -r -g mysql mysql
    [ -d /home/mysql ] || mkdir /home/mysql
    chown -R mysql:mysql /home/mysql
    showMsg OK
    cd /usr/local
    showMsg msg2 "Gunzip installation package ${thetardir}/${MySqlInstallTarFile}.    "
    tar -xzvf ${thetardir}/${MySqlInstallTarFile} >>/dev/null  2>>${logFile}
    showMsg "errSysMsg" "Some error occur when execute 'tar -xzvf ${thetardir}/${MySqlInstallTarFile}'"
    showMsg ok
    showMsg msg2 "Create MySQL soft link and authorization directory, and configure env var.    "
    rm -f mysql
    mysqlVersionDir=$(echo ${MySqlInstallTarFile} | sed 's/.tar.gz//g')
    ln -s ${mysqlVersionDir} mysql
    [ -d /usr/local/tapp ] || mkdir tapp
    cd tapp
    [ -L /usr/local/tapp/mysql ] || ln -s /usr/local/mysql mysql
    [ -L /usr/local/tapp/mysql_conf ] || ln -s /etc mysql_conf

    [ -L /tmp/mysql.sock2433 ] || ln -s /data/mysqldata/sock/mysql.sock2433 /tmp/mysql.sock2433
    [ -d /data/mysqldata/data/2433 ] || mkdir -p /data/mysqldata/data/2433
    [ -d /data/mysqldata/innodb ] || mkdir -p /data/mysqldata/innodb
    [ -d /data/mysqldata/innodb/data/2433 ] || mkdir -p /data/mysqldata/innodb/data/2433
    [ -d /data/mysqldata/innodb/log/2433 ] || mkdir -p /data/mysqldata/innodb/log/2433
    [ -d /data/mysqldata/var ] || mkdir -p /data/mysqldata/var
    [ -d /data/mysqllog/binlog/2433 ] || mkdir -p /data/mysqllog/binlog/2433
    [ -d /data/mysqllog/2433 ] || mkdir -p /data/mysqllog/2433
    [ -d /data/mysqllog/2433/tmpdir ] || mkdir -p /data/mysqllog/2433/tmpdir
    [ -d /data/dbbak ] || mkdir /data/dbbak

    chown -R mysql.mysql /data/mysqldata
    chown -R mysql.mysql /data/mysqllog 
    chown -R mysql.mysql /home/mysql
    chown -R mysql.mysql /usr/local/${mysqlVersionDir}
    chown -R mysql.mysql /data/dbbak
    cat /etc/profile | grep -q 'ulimit -n 102400' || echo 'ulimit -n 102400' >> /etc/profile
    cat /etc/profile | grep -q 'export LC_ALL=en_US.UTF-8' || echo 'export LC_ALL=en_US.UTF-8' >> /etc/profile
    cat /etc/profile | grep -q 'export PATH=/usr/local/mysql/bin:$PATH' || echo 'export PATH=/usr/local/mysql/bin:$PATH' >> /etc/profile
    export PATH=/usr/local/mysql/bin:$PATH
    showMsg "errSysMsg" "Some error occur when creating MySQL soft link ."
    showMsg ok
    showMsg msg2 "Initialize the MySQL service : bin/mysqld --initialize --user=mysql    "
    cd /usr/local/mysql
    scripts/mysql_install_db --user=mysql >> ${logFile} 2>&1
    showMsg "errSysMsg" 'Some error occur when execute "mysql_install_db"'
    showMsg ok
    showMsg msg2 "Service mysql start : /usr/local/mysql/bin/mysqld_safe    "
    /usr/local/mysql/bin/mysqld_safe --basedir=/usr/local/${mysqlVersionDir}/ --user=mysql 2>&1 | tee /tmp/.temp.mysql_install.log >> ${logFile}  &
    showMsg "errSysMsg" 'Some error occur when execute "/usr/local/mysql/bin/mysqld_safe"'
    showMsg ok
    
    #等待起服
    showMsg msg2 "Waiting for the MySQL service to start up.    "
    isReadyForConn
    showMsg "errSysMsg" "Some error occur when waiting for mysql start up ."
    showMsg ok
    
    #change default password
    showMsg msg2 "Replacement MySQL default password to '123456dba'.    "
    expect -c "
                        set timeout 300
                        spawn /usr/local/mysql/bin/mysql -uroot -p
                        expect {
                                  \"Enter password\"    {send \"\n\";exp_continue}
                                  \"root\"    {send \"set password for root@'localhost'=password('123456dba') ;delete from mysql.user where user='' or password = '' ;flush privileges ;exit ;\n\";exp_continue}
                                  \"ERROR \"   {exit 1;exp_continue}
                                  timeout {exit 2;exp_continue}
                               }
                " 2>&1 | tee /tmp/.temp.mysql_install.log >> ${logFile}
    showMsg "errSysMsg" "Some error occur when execute \"set password for root@'localhost'=password('123456dba') ;\""
    showMsg ok

}

function installMysql57(){
    HOSTNAME=$(hostname)
    FOUND=$(grep "$HOSTNAME" /etc/hosts)
    if [ -z "$FOUND" ]; then
        echo "$localIP $HOSTNAME" >> /etc/hosts
    fi

    showMsg msg2 "Initialize the installation directory for all configurations of MySQL.    "
    thetardir=`echo $(cd "$(dirname "$0")"; pwd)`
    cat /etc/group | grep -q mysql || groupadd mysql
    cat /etc/shadow | grep -q mysql || useradd -r -g mysql mysql
    [ -d /home/mysql ] || mkdir /home/mysql
    chown -R mysql:mysql /home/mysql
    showMsg OK
    cd /usr/local
    showMsg msg2 "Gunzip installation package ${thetardir}/${MySqlInstallTarFile}.    "
    tar -xzvf ${thetardir}/${MySqlInstallTarFile} >>/dev/null  2>>${logFile}
    showMsg "errSysMsg" "Some error occur when execute 'tar -xzvf ${thetardir}/${MySqlInstallTarFile}'"
    showMsg ok
    showMsg msg2 "Create MySQL soft link and authorization directory, and configure env var.    "
    rm -f mysql
    mysqlVersionDir=$(echo ${MySqlInstallTarFile} | sed 's/.tar.gz//g')
    ln -s ${mysqlVersionDir} mysql
    [ -d /usr/local/tapp ] || mkdir tapp
    cd tapp
    [ -L /usr/local/tapp/mysql ] || ln -s /usr/local/mysql mysql
    [ -L /usr/local/tapp/mysql_conf ] || ln -s /etc mysql_conf

    [ -L /tmp/mysql.sock2433 ] || ln -s /data/mysqldata/sock/mysql.sock2433 /tmp/mysql.sock2433
    [ -d /data/mysqldata/data/2433 ] || mkdir -p /data/mysqldata/data/2433
    [ -d /data/mysqldata/innodb ] || mkdir -p /data/mysqldata/innodb
    [ -d /data/mysqldata/innodb/data/2433 ] || mkdir -p /data/mysqldata/innodb/data/2433
    [ -d /data/mysqldata/innodb/log/2433 ] || mkdir -p /data/mysqldata/innodb/log/2433
    [ -d /data/mysqldata/var ] || mkdir -p /data/mysqldata/var
    [ -d /data/mysqllog/binlog/2433 ] || mkdir -p /data/mysqllog/binlog/2433
    [ -d /data/mysqllog/2433 ] || mkdir -p /data/mysqllog/2433
    [ -d /data/mysqllog/2433/tmpdir ] || mkdir -p /data/mysqllog/2433/tmpdir
    [ -d /data/dbbak ] || mkdir /data/dbbak

    chown -R mysql.mysql /data/mysqldata
    chown -R mysql.mysql /data/mysqllog 
    chown -R mysql.mysql /home/mysql
    chown -R mysql.mysql /usr/local/${mysqlVersionDir}
    chown -R mysql.mysql /data/dbbak
    cat /etc/profile | grep -q 'ulimit -n 102400' || echo 'ulimit -n 102400' >> /etc/profile
    cat /etc/profile | grep -q 'export LC_ALL=en_US.UTF-8' || echo 'export LC_ALL=en_US.UTF-8' >> /etc/profile
    cat /etc/profile | grep -q 'export PATH=/usr/local/mysql/bin:$PATH' || echo 'export PATH=/usr/local/mysql/bin:$PATH' >> /etc/profile
    export PATH=/usr/local/mysql/bin:$PATH
    showMsg "errSysMsg" "Some error occur when creating MySQL soft link ."
    showMsg ok
    showMsg msg2 "Initialize the MySQL service : bin/mysqld --initialize --user=mysql    "
    cd /usr/local/mysql
    bin/mysqld --initialize --user=mysql >> ${logFile} 2>&1
    showMsg "errSysMsg" 'Some error occur when execute "bin/mysqld --initialize --user=mysql"'
    showMsg ok
    showMsg msg2 "Initialize the MySQL service : bin/mysql_ssl_rsa_setup    "
    bin/mysql_ssl_rsa_setup >> ${logFile} 2>&1
    showMsg "errSysMsg" 'Some error occur when execute "bin/mysql_ssl_rsa_setup"'
    showMsg ok
    
    showMsg msg2 "Service mysql start : /usr/local/mysql/bin/mysqld_safe    "
    /usr/local/mysql/bin/mysqld_safe --basedir=/usr/local/${mysqlVersionDir}/ --user=mysql 2>&1 | tee /tmp/.temp.mysql_install.log >> ${logFile}  &
    showMsg "errSysMsg" 'Some error occur when execute "/usr/local/mysql/bin/mysqld_safe"'
    showMsg ok
    
    #等待起服
    showMsg msg2 "Waiting for the MySQL service to start up.    "
    isReadyForConn
    showMsg "errSysMsg" "Some error occur when waiting for mysql start up ."
    showMsg ok

    #change default password
    showMsg msg2 "Replacement MySQL default password to '123456dba'.    "
    default_pwd=$( grep 'A temporary password is' ${logFile} | awk '{print $NF}')
    expect -c "
                        set timeout 300
                        spawn /usr/local/mysql/bin/mysql -uroot -p
                        expect {
                                  \"Enter password\"    {send \"$default_pwd\n\";exp_continue}
                                  \"root\"    {send \"set password for root@'localhost'=password('123456dba') ;exit ;\n\";exp_continue}
                                  \"ERROR \"   {exit 1;exp_continue}
                                  timeout {exit 2;exp_continue}
                               }
                " 2>&1 | tee /tmp/.temp.mysql_install.log >> ${logFile}
    showMsg "errSysMsg" "Some error occur when execute \"set password for root@'localhost'=password('123456dba') ;\""
    showMsg ok
    

}

function isReadyForConn(){
    #兼容渣渣机器反应慢
    sleep 5
    local key=$( grep -c '/usr/local/mysql/bin/mysqld: ready for connections' /data/mysqldata/data/2433/*.err )
    for ((i=0;i<15;i++)) ;
    do
        if [ "$key" = '1' ];then
            return 0
        else
            sleep 60
        fi
    done
    return 1
}


function main()
{
    shellInit
    showMsg msg "====================================== BEGIN `date` INSTALL MYSQL DB ======================================"
    checkMysqlExist
    local _return_key="$?"
    if [ "$_return_key" = '0' ];then
        EnvInitPrep
        replaceCnf
        if [ "$MySqlVersion" = 'mysql56' ];then
            showMsg msg "Useing mysql 5.6 version build function :"
            installMysql56
        elif [ "$MySqlVersion" = 'mysql57' ];then
            showMsg msg "Useing mysql 5.7 version build function :"
            installMysql57
        else
            showMsg errusermsg "the MySqlVersion var is not mysql56 or mysql57 ."
        fi
        makeMysqlInstallTip
    elif [ "$_return_key" = '11' ];then
        showMsg msg "Skip install Mysql service ."
    fi
    showMsg msg "====================================== END `date`   INSTALL MYSQL DB ======================================"
}

function test(){
    logFile='./log/install_db.log'
    mkdir -p $(dirname $logFile)
    touch $logFile
    EnvInitPrep
}
main $@
# test $@