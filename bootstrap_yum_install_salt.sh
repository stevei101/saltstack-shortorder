#! /bin/bash
yum update && yum upgrade -y && yum install -y epel-release 
yum update && yum upgrade -y && yum install -y vim gcc libffi-devel python-devel openssl-devel 
yum install -y python-pip git salt-minion
pip install -U pip
pip install -r requirements.txt
firewall-cmd --permanent --add-port=4505-4506/tcp
mkdir -p /srv
git clone https://github.com/stevei101/saltstack-shortorder.git
cd saltstack-shortorder
cp -Rf srv /
cp -Rf salt /etc/
echo "master: $(hostname -i)" >> /etc/salt/minion
systemctl restart salt-minion

