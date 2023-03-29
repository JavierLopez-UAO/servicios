# Script de Aprovisionamiento (servidor2)
#!/usr/bin/env bash

yum install vim -y
yum install vsftpd -y
chkconfig vsftpd on
dnf update rpm -y
dnf update -y
yum install bind-utils bind-libs bind-* -y
service named start