# Script de Aprovisionamiento (Firewall)
#!/usr/bin/env bash

yum install vim -y
service firewalld start
chkconfig firewalld on
firewall-cmd --zone=public --add-service=ftp
firewall-cmd --zone=public --add-service=ftp --permanent
firewall-cmd --zone=public --add-service=dns
firewall-cmd --zone=public --add-service=dns --permanent
firewall-cmd --zone=public --add-masquerade
firewall-cmd --zone=public --add-masquerade --permanent
firewall-cmd --zone=public --add-forward-port=port=21:proto=tcp:toport=21:toaddr=192.168.50.4
firewall-cmd --zone=public --add-forward-port=port=21:proto=tcp:toport=21:toaddr=192.168.50.4 --permanent
firewall-cmd --zone=public --add-forward-port=port=41361-65534:proto=tcp:toport=41361-65534:toaddr=192.168.50.4
firewall-cmd --zone=public --add-forward-port=port=41361-65534:proto=tcp:toport=41361-65534:toaddr=192.168.50.4 --permanent
firewall-cmd --zone=public --add-forward-port=port=53:proto=tcp:toport=53:toaddr=192.168.50.4
firewall-cmd --zone=public --add-forward-port=port=53:proto=tcp:toport=53:toaddr=192.168.50.4 --permanent
firewall-cmd --zone=public --add-forward-port=port=53:proto=udp:toport=53:toaddr=192.168.50.4
firewall-cmd --zone=public --add-forward-port=port=53:proto=udp:toport=53:toaddr=192.168.50.4 --permanent