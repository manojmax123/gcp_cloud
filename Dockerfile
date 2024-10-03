# Use the official Nginx image as a 
FROM nginx:latest

# Copy the index.html file to the Nginx html directory
COPY index.html /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
