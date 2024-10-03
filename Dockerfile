# Use the latest version of the Apache HTTP Server as the base image
FROM httpd:latest

# Set the working directory for the Apache document root
WORKDIR /var/www/html/

# Remove the default index.html file (optional, as it will be overwritten)
RUN rm -f index.html

# Copy all files from the current directory to the Apache document root
COPY . .

# Expose port 80 for the Apache server
EXPOSE 80

# Start Apache in the foreground
CMD ["httpd-foreground"]
