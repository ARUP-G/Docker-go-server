# Docker Golang Server


This repository provides a Docker image for running a simple Golang server. The server serves a "Hello" message over HTTP on port 8080.

## Usage

To use this Docker image, follow these steps:

### Step 1: Clone the Repository

Clone this repository to your local machine:

```bash
    git clone https://github.com/yourusername/golang-server-docker.git
    cd golang-server-docker
```

### Step 2: Build the Docker Image

Build the Docker image using the provided *Dockerfile*:
```bash
    docker build -t docker-go-server .
```

### Step 3: Run Docker Container

Run a Docker container from the image you just built:
```bash
    docker run -p 8080:8081 -it docker-go-server
```
'-p' maps port 8081 from the container to port 9000 on your host machine.

### Step 4: Access the Golang Server
You can access the Golang server by opening a web browser and navigating to http://localhost:8080 or using a tool like *'curl'*:

```bash
    curl http://localhost:8080
```
You should see the "Hello!" message in the response.

### Step 5: Stop and Remove the Docker Container
When you are done using the Golang server, you can stop and remove the Docker container:
```bash
    docker stop docker-go-server
    docker rm docker-go-server
```
## Customization
If you want to customize the Golang server code, you can edit the *'main.go'* file in the repository. After making your changes, rebuild the Docker image using the same *'docker build'* command mentioned in Step 2.