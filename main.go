package main

import (
	"net/http"
	"qrchecker1/database"

	"github.com/labstack/echo/v4"
)

func hello(c echo.Context) error {
	database.Connect()
	sqlDB, _ := database.DB.DB()
	defer sqlDB.Close()
	err := sqlDB.Ping()
	if err != nil {
		return c.String(http.StatusInternalServerError, "データベース接続失敗")
	} else {
		return c.String(http.StatusOK, "Hello, World!")
	}
}

func main() {
	e := echo.New()
	e.GET("/", hello)
	e.Logger.Fatal(e.Start(":8080"))
}
