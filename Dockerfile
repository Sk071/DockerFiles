FROM ubuntu
LABEL "Name"="Cafe"
RUN apt update && apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD cafe-project.tar.gz /var/www/html 
