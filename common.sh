system_setup () {
systemctl daemon-reload
systemctl enable ${service_name}
systemctl start ${service_name}
}