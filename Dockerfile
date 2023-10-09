# Use an official Ubuntu as the base image
FROM ubuntu:20.04

# Install necessary packages (wget and sudo)
RUN apt-get update && apt-get install -y wget sudo

# Download the install script and execute it
RUN wget -O install.sh http://www.aapanel.com/script/install-ubuntu_6.0_en.sh && \
    chmod +x install.sh && \
    sudo bash install.sh aapanel

# Cleanup after the installation (optional)
RUN rm install.sh && \
    apt-get clean

# Start your application (if needed)
# CMD ["/path/to/your/application"]

# Expose any necessary ports (if needed)
# EXPOSE 80
