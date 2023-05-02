#!/bin/bash

sudo apt update
sudo apt ugrade

curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

sudo apt install mongodb-org

# sudo systemctl start mongod.service
# sudo systemctl status mongod
# sudo systemctl enable mongod
# mongo --eval 'db.runCommand({ connectionStatus: 1 })'
# sudo systemctl status mongod
# sudo systemctl stop mongod
# sudo systemctl start mongod
# sudo systemctl restart mongod
# sudo systemctl disable mongod
# sudo systemctl enable mongod


in the docker container
apt update
apt upgrade -y
apt install curl -y
apt install gnupg -y
apt install lsb-release -y

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
apt update
