# Use a lightweight base image
FROM alpine:latest

# Install a basic HTTP server
RUN apk add --no-cache busybox-extras

# Copy a sample HTML file
COPY index.html /var/www/localhost/htdocs/

# Expose port 80
EXPOSE 80

# Start the HTTP server
CMD ["httpd", "-f", "-v", "-p", "80"]

