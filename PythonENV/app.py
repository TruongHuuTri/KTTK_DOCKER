import os

# Đọc biến môi trường APP_ENV (mặc định là "development" nếu không có)
app_env = os.getenv("APP_ENV", "development")

print(f"Ứng dụng đang chạy trong môi trường: {app_env}")

