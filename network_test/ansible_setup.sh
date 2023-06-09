#!/bin/sh

# リポジトリ追加
sudo yum -y install https://repo.ius.io/ius-release-el7.rpm

# python update
sudo yum install -y python36u python36u-libs python36u-devel python36u-pip
sudo pip3 install --upgrade pip

# ansible install
pip3 install ansible
cat << EOF > $HOME/.ansible.cfg
[defaults]
forks = 15
log_path = $HOME/.ansible/ansible.log
host_key_checking = False
gathering = smart
EOF
