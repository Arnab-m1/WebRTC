# WebRTC


# WebRTC Live Streaming

This project provides a simple WebRTC live streaming application with a Node.js server and a desktop client built using AngularJS. Signaling is handled via [Socket.io](https://socket.io).

## Features

- WebRTC live streaming
- [Node.js server](http://nodejs.org/download/)
- [AngularJS client](https://angularjs.org/)
- [Socket.io signaling](socket.io)

## Prerequisites

- [Node.js](http://nodejs.org/download/) (if not using Docker)
- [Docker](https://docs.docker.com/get-docker/)

## Getting Started

### 1. Cloning the Repository

```bash
git clone https://github.com/arnab-m1/WebRTC.git
cd WebRTC/
```
### 2. Running the Application Locally (Without Docker)
To run the application locally without Docker, follow these steps:

Install Dependencies:
```bash
npm install
```

### Start the Server:

```bash
npm start
```

The server will run on port 3000. You can test it in your browser (Chrome or Firefox) by navigating to:

```bash
http://localhost:3000
```


### Running with Warnings Trace:

If you encounter any issues or need to debug warnings, run the app with:

```bash
node --trace-warnings app.js
```


### 3. Running the Application with Docker
If you prefer to use Docker, you can build and run the application inside a container.

Build the Docker Image:

In the root directory of the project, run:

```bash
docker build -t webrtc-app .
```


This will build a Docker image named webrtc-app.

### Run the Docker Container:

```bash
docker run -p 3000:3000 webrtc-app
```

### This will start the app and expose it on port 3000. You can access the app in your browser at:

```bash
http://localhost:3000
```

### Running with Warnings Trace in Docker:

If you want to trace warnings while running the app in Docker, use the following command:

```bash
docker run -p 3000:3000 webrtc-app node --trace-warnings app.js
```

This will enable warning tracing while running your application inside the Docker container.

### 4. Docker Compose (Optional)
If you prefer to use Docker Compose for easier setup, create a docker-compose.yml file like this:


```bash
yaml
Copy code
version: '3'
services:
  webrtc-app:
    build: .
    ports:
      - "3000:3000"
    command: node --trace-warnings app.js
```


Then, you can start the application using:

```bash
docker-compose up
```
### Troubleshooting
If you encounter any issues with the WebRTC connection or signaling, try running the application with the --trace-warnings flag to trace potential circular dependencies or other warnings:

```bash
node --trace-warnings app.js
```

This will output detailed information about warnings in the terminal, which can help with debugging.

## Author

- [Arnab Mallick](mailto:arnabmallick2000@gmail.com)

