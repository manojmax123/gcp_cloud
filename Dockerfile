# Use the official Nginx image as a 
FROM nginx:latest

Run rm -rf index.html

# Copy the index.html file to the Nginx html directory
COPY index.html /var/www/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
