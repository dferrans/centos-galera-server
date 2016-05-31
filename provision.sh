#!/bin/bash          
#echo this script will help to install al dependencies and packages to create a galera node
echo let us start    

yum install screen epel-release -y
touch /etc/yum.repos.d/mariadb.repo
cat mariadbrepo.txt > /etc/yum.repos.d/mariadb.repo
yum --enablerepo=mariadb -y install MariaDB-Galera-server
#systemctl start mysql
#mysql_secure_installation
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty
pwd
echo "Enter this node MYSQL ip address ex(192.168.10.10) then hit [ENTER]:"
read IPNODO
echo "Enter the galera nodes ips separated by comma[ENTER]:"
read NODOS
cat galera-template.txt | sed  "-e s/COMMASEPARATEDNODES/${NODOS},${IPNODO}/g" | sed  "-e s/DIRIPNODO/${IPNODO}/g" > /etc/my.cnf.d/server.cnf
echo "Configuration file ready... starting mysql configuration"
echo "Once the node start it is going to sync databases, this could take several minutes. please wait.."
systemctl start mysql
echo "sync completed..."

