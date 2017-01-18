#! /bin/bash
yum update && yum upgrade -y && yum install -y epel-release 
yum update && yum upgrade -y && yum install -y vim gcc libffi-devel python-devel openssl-devel telnet net-tools 
yum update && yum upgrade -y && yum install -y python-pip git salt-master salt-minion
systemctl restart salt-master salt-minion
pip install -U pip
pip install -r requirements.txt
