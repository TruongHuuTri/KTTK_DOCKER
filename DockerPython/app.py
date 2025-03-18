from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, Docker Flask!"  # Thụt lề 4 dấu cách

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)  # Đảm bảo thụt lề đúng
