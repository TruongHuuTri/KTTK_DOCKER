# Sử dụng image Redis mới nhất
FROM redis:latest

# Thiết lập thư mục làm việc
WORKDIR /usr/local/etc/redis

# Sao chép file cấu hình vào container
COPY redis.conf .

# Expose cổng Redis
EXPOSE 6379

# Chạy Redis với file cấu hình tùy chỉnh
CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]

