FROM ubuntu:latest 
RUN apt-get  update && apt-get  install -y  apache2 zip unzip
COPY  photogenic.zip  /var/www/html
WORKDIR /var/www/html/
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
