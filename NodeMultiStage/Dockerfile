# Stage 1: Build ứng dụng
FROM node:18 AS build

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép package.json và cài đặt dependencies
COPY package.json ./
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Stage 2: Chạy ứng dụng đã build
FROM node:18-alpine

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép ứng dụng từ Stage 1
COPY --from=build /app /app

# Expose cổng 3000 để truy cập
EXPOSE 3000

# Chạy ứng dụng
CMD ["npm", "start"]

