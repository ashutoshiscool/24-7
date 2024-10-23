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

# Expose the port that sshx uses (default is usually 22 or 443, adjust if necessary)
EXPOSE 22  # or another port based on your sshx configuration

# Command to start sshx (ensure you use the correct command)
CMD ["sshx", "run"]
