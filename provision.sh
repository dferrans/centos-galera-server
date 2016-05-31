 #!/bin/bash          
echo this script will help to install al dependencies and packages to create a galera node
echo let us start    
#
yum install screen epel-release -y
touch /etc/yum.repos.d/mariadb.repo
cat mariadbrepo.txt > /etc/yum.repos.d/mariadb.repo
yum --enablerepo=mariadb -y install MariaDB-Galera-server
#systemctl start mysql
#mysql_secure_installation
#/etc/rc.d/init.d/mysql bootstrap 
#/etc/rc.d/init.d/mysql bootstrap 
yum -y install perl perl-Net-SSLeay openssl perl-IO-Tty
echo instalacion basica lista

