FROM webdevops/php-nginx:7.4

# Copy the application files to the container
COPY . /app

# Set the WORKDIR to /app so all following commands run within this directory
WORKDIR /app

# Expose port 80 for the app
EXPOSE 80 

# Run composer install
RUN [ "sh", "-c", "composer install --ignore-platform-reqs" ]


# Change the owner of the /app directory
RUN chown -R www-data:www-data /app

# Set the permissions of the /app directory
RUN chmod -R 777 /app
