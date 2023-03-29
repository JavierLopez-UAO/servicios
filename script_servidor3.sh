# Script de Aprovisionamiento (servidor3)
#!/usr/bin/env bash

yum install vim -y
dnf update rpm -y
dnf update -y
yum install bind-utils bind-libs bind-* -y
service named start