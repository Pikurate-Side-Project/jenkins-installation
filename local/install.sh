#!/bin/bash

set -x;

sudo yum -y update;
# add jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# import key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y

# install package for daemon reload
sudo amazon-linux-extras install epel -y

# install jenkins with JAVA
sudo yum install jenkins java-1.8.0-openjdk-devel -y

# system statu check
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins

#!/bin/bash

set -x;

sudo yum -y update;
# add jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# import key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y

# install package for daemon reload
sudo amazon-linux-extras install epel -y

# install jenkins with JAVA
sudo yum install jenkins java-1.8.0-openjdk-devel -y

# system statu check
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins