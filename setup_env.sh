#! /bin/sh -x

sudo apt update
sudo apt dist-upgrade -y
sudo apt install build-essential git

# docker
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install -y docker-engine
sudo service docker start
sudo docker run hello-world
sudo usermod -a -G docker $USER

# aws
sudo apt-get install -y python-pip
pip install --user awscli

# screenrc
cd ~
sudo apt-get install -y wget
wget https://raw.githubusercontent.com/danielsig727/rcfiles/master/.screenrc

