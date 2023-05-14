#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install mysql-server -y
sudo systemctl start mysql.service

sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
exit
sudo mysql_secure_installation
mysql -u root -p
ALTER USER 'root'@'localhost' IDENTIFIED WITH auth_socket;


# create a user using the following commands
CREATE USER 'psshri'@'localhost' IDENTIFIED WITH mysql_native_password BY 'toor';
GRANT ALL PRIVILEGES ON *.* TO 'psshri'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
mysql -u psshri -p

# steps to be followed in an ubuntu container
# apt update
# apt upgrade -y 
# apt install vim -y
# apt install mysql-server -y
# service msyql start


# other commands
# service msyql status
# mysql --version

# mysql -u root -p
# enter for password

# SELECT COUNT(*) FROM mysql.user; // to get the list of users in mysql server
# SELECT User FROM mysql.user;
# SELECT DISTINCT User FROM mysql.user;