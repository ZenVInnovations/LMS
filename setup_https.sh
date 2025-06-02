#!/bin/bash
# Script to set up HTTPS for local Moodle development

echo "Setting up HTTPS for local Moodle development..."

# Create certificates directory
mkdir -p ssl

# Generate private key
openssl genrsa -out ssl/server.key 2048

# Generate certificate signing request
openssl req -new -key ssl/server.key -out ssl/server.csr -subj "/C=US/ST=Dev/L=Local/O=Moodle/OU=Development/CN=localhost"

# Generate self-signed certificate
openssl x509 -req -days 365 -in ssl/server.csr -signkey ssl/server.key -out ssl/server.crt

echo "SSL certificates generated in ssl/ directory"
echo "To start HTTPS server, run:"
echo "php -c php.ini -S localhost:8443 -t . ssl/server.crt ssl/server.key"
echo ""
echo "Then update config.php to use https://localhost:8443" 