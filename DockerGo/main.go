package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Chào mừng bạn đến với ứng dụng Go chạy trong Docker!")
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server đang chạy tại cổng 8080...")
	http.ListenAndServe(":8080", nil)
}

