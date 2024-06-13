# Dockerfile
FROM ubuntu:latest

# Install necessary dependencies
RUN apt-get update && apt-get install -y \
    firefox \
    && rm -rf /var/lib/apt/lists/*

# Set display environment variable (if using X11 forwarding)
ENV DISPLAY=:99

# Command to run Firefox
CMD ["firefox"]
