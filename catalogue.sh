service_name=catalogue
source common.sh
#function call
nodejs

cp catalogue.service /etc/systemd/system/catalogue.service
cp mongo.repo /etc/yum.repos.d/mongo.repo

useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install
#function call
system_setup

dnf install mongodb-mongosh -y
mongosh --host mongodb-dev.rahuldevops85.online </app/db/master-data.js