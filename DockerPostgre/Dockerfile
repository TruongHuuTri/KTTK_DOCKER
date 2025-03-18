# Sử dụng image PostgreSQL 15 chính thức
FROM postgres:15

# Thiết lập biến môi trường cho PostgreSQL
ENV POSTGRES_USER=admin
ENV POSTGRES_PASSWORD=adminpassword
ENV POSTGRES_DB=my_database

# Sao chép file SQL vào thư mục tự động khởi chạy của PostgreSQL
COPY init.sql /docker-entrypoint-initdb.d/

# Expose cổng PostgreSQL
EXPOSE 5432

