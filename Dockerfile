# Use the nginx image as the base image
FROM nginx:latest

# Copy the HTML and CSS files to the appropriate directory in the nginx container
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html

# Expose the port that nginx is running on
EXPOSE 80
