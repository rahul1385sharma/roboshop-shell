service_name=catalogue
source common.sh
dir_loc=$(pwd)
#function call
nodejs

cp mongo.repo /etc/yum.repos.d/mongo.repo
dnf install mongodb-mongosh -y
mongosh --host mongodb-dev.rahuldevops85.online </app/db/master-data.js

#function call
system_setup

echo ${dir_loc}
