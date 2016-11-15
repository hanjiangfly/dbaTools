iptables -F
#清除预设表filter中的所有规则链的规则

iptables -X
#清除预设表filter中使用者自定链中的规则

iptables -Z
#把包以及流量计数器置零

iptables -P INPUT DROP
#将进口设置为阻止

iptables -P FPRWARD DROP
#将转发设置为阻止

iptables -P OUTPUT DROP
#将出口设置为阻止

iptables -A INPUT  -m state --state ESTABLISHED,RELATED -j ACCEPT
#设置当连接状态为RELATED和ESTABLISHED时，允许数据进入服务器

iptables -A INPUT -p icmp  -j ACCEPT
#允许ping

iptables -A INPUT -i lo -j ACCEPT 
#允许本机

iptables -A INPUT  -s 10.10.0.0/16  -m state --state NEW -m tcp -p tcp --dport 16333 -j ACCEPT
#允许来源10.10.0.0网段访问目标16333端口

iptables -A INPUT -j REJECT --reject-with icmp-host-prohibited 
#iptables -A FORWARD -j REJECT --reject-with icmp-host-prohibited 
#这两条的意思是在INPUT表和FORWARD表中拒绝所有其他不符合上述任何一条规则的数据包。并且发送一条host prohibited的消息给被拒绝的主机。

iptables -A INPUT  -s 10.10.0.0/16  -m state --state NEW -m tcp -p tcp --dport 8080 -j ACCEPT 
#允许来源10.10.0.0网段访问目标8080端口
iptables -A INPUT  -s 172.16.0.0/16 -m state --state NEW -m tcp -p tcp --dport 8080 -j ACCEPT  
#允许来源172.16.0.0网段访问目标8080端口

iptables -A INPUT  -s 10.10.0.0/16  -m state --state NEW -m tcp -p tcp --dport 5555 -j ACCEPT 
#允许来源10.10.0.0网段访问目标5555端口
iptables -A INPUT  -s 172.16.0.0/16 -m state --state NEW -m tcp -p tcp --dport 5555 -j ACCEPT  
#允许来源172.16.0.0网段访问目标5555端口

iptables -A OUTPUT -d  10.147.229.126 -m state --state NEW -m tcp -p tcp  --dport 2433  -j  ACCEPT
#允许目标10.147.229.126 IP 访问目标2433端口

iptables -A OUTPUT -d  10.147.229.250 -m state --state NEW -m tcp -p tcp  --dport 27017 -j  ACCEPT  
#允许目标10.147.229.250 IP 访问目标27017端口

iptables -A OUTPUT -m state --state RELATED,ESTABLISHED -j ACCEPT 
#设置状态为RELATED和ESTABLISHED的数据可以从服务器发送到外部

iptables -A OUTPUT -p icmp -m icmp --icmp-type 8 -j ACCEPT 
#允许从服务器ping外部

/sbin/service iptables save
#保存iptables策略

ping 127.0.0.1 -c 15
#ping 本机
service iptables stop


