#!/bin/bash

# Update package index
sudo apt update

# Install MariaDB server
sudo apt install -y mariadb-server

# Start MariaDB service
sudo systemctl start mariadb

# Enable MariaDB to start on system boot
sudo systemctl enable mariadb

# Secure MariaDB installation (optional but recommended)
sudo mysql_secure_installation

# Access MariaDB shell
sudo mariadb << EOF
CREATE DATABASE mydatabase;
CREATE USER 'myuser'@'localhost' IDENTIFIED BY 'mypassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'myuser'@'localhost';
FLUSH PRIVILEGES;
EOF

# Display message
echo "MariaDB setup completed successfully!"

