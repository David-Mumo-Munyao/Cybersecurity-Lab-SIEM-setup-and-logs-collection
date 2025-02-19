sudo apt update && sudo apt install -y suricata
sudo systemctl enable --now suricata
*.* @192.168.22.137:514 # Configured Log Forwarding to SOC VM in /etc/rsyslog.conf
sudo systemctl restart rsyslog
sudo apt install -y apache2 openssh-server vsftpd
sudo systemctl enable --now apache2 ssh vsftpd