#!/bin/bash
# Update the package manager and install Docker
sudo yum update -y
sudo yum install -y docker
# Start docker serivce
sudo service docker start
sudo usermod -aG docker ec2-user
sudo service docker restart


