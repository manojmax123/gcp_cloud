# Use the latest version of Nginx as the base image
FROM httpd:latest
WORKDIR /var/www/html
RUN rm -rf /var/www/html/index.html
COPY . .
WORKDIR /var/www/html                 
RUN service apache2 restart
EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

