# Victim (Client) VM Setup
## System Information
```
 Static hostname: kali
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: 55e5305955694ed3b6c7506b1268fad8
         Boot ID: d2a51bf2742a4c79ae99c72cd36a375f
    AF_VSOCK CID: 1347961879
  Virtualization: vmware
Operating System: Kali GNU/Linux Rolling
          Kernel: Linux 6.11.2-amd64
    Architecture: x86-64
 Hardware Vendor: VMware, Inc.
  Hardware Model: VMware Virtual Platform
Firmware Version: 6.00
   Firmware Date: Thu 2020-11-12
    Firmware Age: 4y 3month 1w 1d
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 00:0c:29:58:44:17 brd ff:ff:ff:ff:ff:ff
    inet 192.168.100.131/24 brd 192.168.100.255 scope global dynamic noprefixroute eth0
       valid_lft 1733sec preferred_lft 1733sec
    inet6 fe80::e942:f81a:657d:51fa/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```
## Installing Suricata for Intrusion Detection
```bash
sudo apt update && sudo apt install -y suricata
sudo systemctl enable --now suricata
```
## Configuring Log Forwarding to SOC Analyst
```bash
echo '*.* @192.168.22.137:514' | sudo tee -a /etc/rsyslog.conf
sudo systemctl restart rsyslog
```
## Installing Web, SSH, and FTP Services
```bash
sudo apt install -y apache2 openssh-server vsftpd
sudo systemctl enable --now apache2 ssh vsftpd
```
