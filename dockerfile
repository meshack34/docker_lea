# Use the official Nginx image from the Docker Hub
FROM nginx:1.10.1-alpine

# Copy the HTML file from the host to the container
COPY src/html /usr/share/nginx/html

# Expose port 80 to allow traffic to the container
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
