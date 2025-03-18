# Sử dụng base image chính thức của Go
FROM golang:latest

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép tất cả các file từ thư mục hiện tại vào container
COPY . .

# Biên dịch chương trình Go
RUN go mod init goapp && go mod tidy && go build -o goapp

# Chạy ứng dụng khi container khởi động
CMD ["./goapp"]

# Expose cổng 8080 để truy cập ứng dụng
EXPOSE 8080

