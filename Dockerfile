# RMIT University Vietnam
# Course: COSC2767 Systems Deployment and Operations
# Semester: 2022B
# Assessment: Assignment 3
# Author: Nguyen Quoc Huy
# ID: s3818764
# Created  date: 18/09/2022 
# Last modified: 18/09/2022
# Acknowledgement: Google

FROM    centos:7
USER root
RUN yum update -y && yum install httpd httpd-tools php php-mysql -y
COPY . /var/www/html/cosc2767-rmit-store
WORKDIR /etc/httpd/conf.d
RUN rm welcome.conf
EXPOSE  80
CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]