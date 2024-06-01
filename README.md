Docker Project Documentation: From Structure to Docker Hub
Project Structure
Here's the initial project structure:

css
Copy code
docker/
├── Dockerfile
└── src/
    └── html/
        └── index.html
Step-by-Step Guide
Prepare the Project Structure:

Create the directories and files as shown in the project structure above.

Ensure your index.html file has the necessary HTML content. For example:

html
Copy code
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Nginx</title>
</head>
<body>
    <h1>Welcome to Nginx!</h1>
</body>
</html>
Create the Dockerfile:

In the docker/ directory, create a file named Dockerfile with the following content:

Dockerfile
Copy code
# Use the official Nginx image from the Docker Hub
FROM nginx:1.10.1-alpine

# Copy the HTML file from the host to the container
COPY src/html /usr/share/nginx/html

# Expose port 80 to allow traffic to the container
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
Build the Docker Image:

Open a terminal and navigate to the docker/ directory.

Build the Docker image using the following command:

sh
Copy code
docker build -t my-nginx-image .
Run the Docker Container:

Run the Docker container and map port 80 of the container to port 8080 of the host:

sh
Copy code
docker run -d -p 8080:80 my-nginx-image
You can check if the container is running using:

sh
Copy code
docker ps
Access the Application:

Open a web browser and navigate to http://localhost:8080. You should see the "Welcome to Nginx!" page.
Log in to Docker Hub:

Log in to your Docker Hub account:

sh
Copy code
docker login
Enter your Docker Hub username and password when prompted.

Tag the Docker Image:

Tag your Docker image with your Docker Hub username and repository name:

sh
Copy code
docker tag my-nginx-image meshackkimutai/my-nginx-image:latest
Push the Docker Image:

Push the tagged image to Docker Hub:

sh
Copy code
docker push meshackkimutai/my-nginx-image:latest
Verify the Image on Docker Hub:

Go to Docker Hub.
Log in to your account.
Navigate to your profile and find the repository my-nginx-image.
Additional Docker Commands
Here are some additional Docker commands you might find useful:

List all Docker images:

sh
Copy code
docker images
Remove a Docker image:

sh
Copy code
docker rmi <image_id>
Stop a running container:

sh
Copy code
docker stop <container_id>
Remove a stopped container:

sh
Copy code
docker rm <container_id>
List all Docker containers (including stopped ones):

sh
Copy code
docker ps -a
Display detailed information about a container:

sh
Copy code
docker inspect <container_id>
Display real-time log output of a container:

sh
Copy code
docker logs -f <container_id>
Enter a running container (for debugging purposes):

sh
Copy code
docker exec -it <container_id> /bin/sh
Summary
This guide has taken you through the steps from creating your project structure, writing a Dockerfile, building and running a Docker image, to pushing it to Docker Hub. Additionally, it has provided some useful Docker commands for managing images and containers.
