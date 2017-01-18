#! /bin/bash
yum update && yum upgrade -y && yum install -y epel-release 
yum update && yum upgrade -y && yum install -y vim gcc libffi-devel python-devel openssl-devel telnet net-tools 
yum install -y python-pip git salt-master salt-minion
pip install -U pip
pip install -r requirements.txt
firewall-cmd --permanent --add-port=4505-4506/tcp
mkdir -p /srv
git clone https://github.com/stevei101/saltstack-shortorder.git
cd saltstack-shortorder
cp -Rf srv /srv
cp -Rf salt /etc/salt
echo $(hostname -i) >> /etc/salt/minion
systemctl restart salt-master salt-minion
sudo salt-keys -A
salt '*' state.highstate
