FROM webdevops/php-nginx:7.4
COPY . /app
WORKDIR /app
# 暴露端口
EXPOSE 80
RUN [ "sh", "-c", "composer install --ignore-platform-reqs" ]
RUN [ "sh", "-c", "chmod -R 777 /app" ]
