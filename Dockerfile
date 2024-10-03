# Use the latest version of Nginx as the base image
FROM nginx:latest

WORKDIR /var/www/html

RUN rm -rf /var/www/html/index.html

COPY index.html /var/www/html

WORKDIR /var/www/html                 

RUN service nginx restart

# Expose port 80 for the Nginx server

EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]

