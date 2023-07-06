# 使用官方的Nginx镜像作为基础
FROM nginx

# 删除Nginx默认的配置
RUN rm /etc/nginx/conf.d/default.conf

# 添加我们自己的配置
COPY proxy.conf /etc/nginx/conf.d
EXPOSE 80
