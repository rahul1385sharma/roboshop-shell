system_setup () {
systemctl daemon-reload
systemctl enable ${service_name}
systemctl start ${service_name}
}

nodejs()
{
  dnf module disable nodejs -y
  dnf module enable nodejs:20 -y
  dnf install nodejs -y
}