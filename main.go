package main

import (
	"log"
	"net/http"
	"qrchecker1/database"
)

func rootHander(w http.ResponseWriter, r *http.Request) {
	db := database.Connect()
	defer db.Close()

	err := db.Ping()

	if err != nil {
		w.Write([]byte("データベース接続失敗"))
		return
	} else {
		w.WriteHeader(200)
		w.Header().Set("Content-Type", "text/html; charset=utf8")
		w.Write([]byte("データベース接続成功"))
	}
}

func main() {
	http.HandleFunc("/", rootHander)
	log.Fatal(http.ListenAndServe(":3000", nil))
}
