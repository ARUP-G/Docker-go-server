# get the image for golang
FROM golang:1.21.0-alpine3.17

# Creates a dir 
RUN mkdir /app

# add everything in the app folder
ADD . /app

# Specify the working directory
WORKDIR /app

# Give the command to build the docker file
RUN go build -o main .

# Run a command to run the app
CMD [ "/app/main" ]