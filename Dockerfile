FROM    centos:7
USER root
RUN yum update -y && yum install httpd httpd-tools php php-mysql -y
COPY . /var/www/html/cosc2767-rmit-store
WORKDIR /etc/httpd/conf.d
RUN rm welcome.conf
EXPOSE  80
CMD     ["/usr/sbin/httpd","-D","FOREGROUND"]