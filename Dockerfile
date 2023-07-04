FROM webdevops/php-nginx:7.4

# Copy the application files to the container
COPY . /app

# Set the WORKDIR to /app so all following commands run within this directory
WORKDIR /app

# Change the owner of the /app directory
RUN chown -R www-data:www-data /app

# Run composer install
RUN [ "sh", "-c", "composer install --ignore-platform-reqs" ]

# Set the permissions of the /app directory
RUN chmod -R 777 /app

# Expose port 80 for the app
EXPOSE 80 
