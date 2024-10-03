# Use the official Nginx image as a 
# Use the latest version of Nginx as the base image
FROM nginx:latest

# Remove the default index.html file
RUN rm -rf /var/www/html/index.html

# Copy the custom index.html file to the Nginx html directory
COPY index.html /var/www/html/

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx and keep it running in the foreground
CMD ["nginx", "-g", "daemon off;"]

