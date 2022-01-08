#!/bin/bash

 yum install epel-release -y
 yum install -y yum-utils
 yum-config-manager--add-repo https://download.docker.com/linux/centos/docker-ce.repo 
 yum install ansible docker-ce docker-ce-cli containerd.io -y
