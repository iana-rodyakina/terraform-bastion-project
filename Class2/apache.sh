#!/bin/bash

sudo yum install httpd -y
sudo yum systemctl start httpd
sudo yum systemctl enable httpd