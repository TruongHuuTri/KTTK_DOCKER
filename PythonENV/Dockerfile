# Sử dụng base image Python
FROM python:3.9-slim

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép mã nguồn vào container
COPY app.py .

# Thiết lập biến môi trường mặc định
ENV APP_ENV=development

# Chạy ứng dụng
CMD ["python", "app.py"]

