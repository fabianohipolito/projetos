#!/bin/bash

 yum install epel-release -y
 yum install ansible git wget vim  -y
 
 yum install -y yum-utils
 yum-config-manager --add-repo  https://download.docker.com/linux/centos/docker-ce.repo
 yum install docker-ce docker-ce-cli containerd.io -y
 
 