sudo apt-get update
sudo apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible --yes
sudo chown -R vagrant:vagrant /etc/ansible
sudo apt install python3-pip --yes
cd /etc/ansible
git clone git@github.com:yusufharip/anzibel.git