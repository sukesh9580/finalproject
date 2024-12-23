FROM centos:7
MAINTAINER sukeshshegde@gmail.com
RUN yum install -y httpd \
 zip\
 wget\
 unzip
RUN wget -q https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip -O /tmp/photogenic.zip && \
    mkdir -p /var/www/html && \
    unzip /tmp/photogenic.zip -d /var/www/html/ && \
    rm /tmp/photogenic.zip
WORKDIR /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

