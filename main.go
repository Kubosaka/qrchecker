package main

import (
	"net/http"
	// "qrchecker1/database"

	"github.com/labstack/echo/v4"
)

// func rootHander(w http.ResponseWriter, r *http.Request) {
// 	db := database.Connect()
// 	defer db.Close()

// 	err := db.Ping()

// 	if err != nil {
// 		w.Write([]byte("データベース接続失敗"))
// 		return
// 	} else {
// 		w.WriteHeader(200)
// 		w.Header().Set("Content-Type", "text/html; charset=utf8")
// 		w.Write([]byte("データベース接続成功"))
// 	}
// }

func main() {
	e := echo.New()
	e.GET("/", func(c echo.Context) error {
		return c.String(http.StatusOK, "Hello, world!")
	})
	e.Logger.Fatal(e.Start(":8080"))
}
