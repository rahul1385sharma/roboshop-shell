system_setup () {
systemctl daemon-reload
systemctl enable ${service_name}
systemctl start ${service_name}
}

nodejs()
{
  cp cart.service /etc/systemd/system/${service_name}.service
  dnf module disable nodejs -y
  dnf module enable nodejs:20 -y
  dnf install nodejs -y
  useradd roboshop
  rm -rf /app
  mkdir /app
  cd /app
  npm install
  curl -L -o /tmp/${service_name}.zip https://roboshop-artifacts.s3.amazonaws.com/${service_name}-v3.zip
  cd /app
  unzip /tmp/${service_name}.zip
  cd /app
  npm install
}