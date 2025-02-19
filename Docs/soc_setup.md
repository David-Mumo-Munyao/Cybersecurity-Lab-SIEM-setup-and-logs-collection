## System Information
```
 Static hostname: kali
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: 55e5305955694ed3b6c7506b1268fad8
         Boot ID: 0df4fc3f375b4b92a7048590c85902c3
    AF_VSOCK CID: 2998993015
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
    link/ether 00:0c:29:49:2e:8c brd ff:ff:ff:ff:ff:ff
    inet 192.168.100.130/24 brd 192.168.100.255 scope global dynamic noprefixroute eth0
       valid_lft 1743sec preferred_lft 1743sec
    inet6 fe80::ecff:7858:c2e5:25bc/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```
## Installing Splunk Free
```bash
wget -O splunk.deb 'https://download.splunk.com/products/splunk/releases/latest/linux/splunk-latest-linux-2.6-amd64.deb'
sudo dpkg -i splunk.deb
sudo /opt/splunk/bin/splunk enable boot-start
sudo /opt/splunk/bin/splunk start
```
## Installing Suricata
```bash
sudo apt update && sudo apt install -y suricata
sudo systemctl enable --now suricata
```
## Configuring Log Forwarding
```bash
sudo /opt/splunk/bin/splunk add udp 514 -sourcetype syslog
sudo /opt/splunk/bin/splunk restart
```
