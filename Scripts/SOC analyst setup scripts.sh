wget -O splunk.deb 'https://download.splunk.com/products/splunk/releases/latest/linux/splunk-latest-linux-2.6-amd64.deb'
sudo dpkg -i splunk.deb
sudo /opt/splunk/bin/splunk enable boot-start
sudo /opt/splunk/bin/splunk start
sudo apt update && sudo apt install -y suricata
sudo systemctl enable --now suricata
sudo apt install -y python3-pip
pip3 install scikit-learn pandas numpy matplotlib joblib scapy
sudo /opt/splunk/bin/splunk add udp 514 -sourcetype syslog
sudo /opt/splunk/bin/splunk restart