service_name=cart
source common.sh
#function call
nodejs

cp cart.service /etc/systemd/system/cart.service
useradd roboshop
mkdir /app
curl -L -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart-v3.zip
cd /app
unzip /tmp/cart.zip

cd /app
npm install
#function call
system_setup


