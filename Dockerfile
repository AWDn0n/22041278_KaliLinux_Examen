# Pull Kali Linux OS from a Docker Hub repository
FROM kalilinux/kali-rolling

# Each student must fill this file with the correct information
LABEL authors = "pabloribasborrego 22041278"
LABEL version = "1.0"
LABEL description = "Dockerfile for a custom image of Kali Linux OS"

# Update the image
RUN apt-get update

# Install the following packages for our custom image: nano, python3, nmap and python-pip
RUN apt-get update && apt-get install -y \
    nano \
    nmap \
    python3.6 \
    python3-distutils \
    python3-pip \
    python3-apt

# Set credentials for the root user, ROOT = all privileges, 21535220 = password
ENV USER root
ENV PASSWORD 22041278

# Reduce the size of the image by removing nmap, metasploit
RUN apt-get clean

# Expose ports for nmap and metasploit
EXPOSE 600 700

# Run the following commands when the container is created
CMD ["bash"]

# Build the image
# docker build -t custom-kali-image-22041278 .
# Run the container
# docker run -it --rm --name custom-kali-container-22041278 custom-kali-image-22041278