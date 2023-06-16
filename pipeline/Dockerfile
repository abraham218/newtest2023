# Use the CentOS 8 base image
FROM centos:8

# Install Apache HTTP server
RUN dnf -y install httpd

# Copy your static website files to the container
COPY index.html /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Apache HTTP server when the container starts
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

