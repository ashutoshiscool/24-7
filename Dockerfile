# Use a base image with curl installed
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Install curl and other necessary packages
RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*

# Run the command to install sshx
RUN curl -sSf https://sshx.io/get | sh -s run

# Specify the command to run when the container starts (if needed)
CMD ["bash"]
