package main

import (
	"net/http"

	"github.com/Kubosaka/qrchecker/api/drivers"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

type User struct {
	Id       int    `json:"id" param:"id"`
	Name     string `json:"name"`
	Email    string `json:"email"`
	Password string `json:"password"`
}

func getUsers(c echo.Context) error {
	users := []User{}
	drivers.DB.Find(&users)
	return c.JSON(http.StatusOK, users)
}

func getUser(c echo.Context) error {
	user := User{}
	if err := c.Bind(&user); err != nil {
		return err
	}
	drivers.DB.Take(&user)
	return c.JSON(http.StatusOK, user)
}

func main() {
	//echoのインスタンス
	e := echo.New()

	// Middleware
	e.Use(middleware.Recover())

	//db接続
	drivers.Connect()
	sqlDB, _ := drivers.DB.DB()
	defer sqlDB.Close()

	// CORS対策
	e.Use(middleware.CORSWithConfig(middleware.CORSConfig{
		AllowOrigins: []string{"http://localhost:8000", "127.0.0.1:8000", "http://localhost:1323"}, // ドメイン
		AllowMethods: []string{http.MethodGet, http.MethodPost, http.MethodPut, http.MethodDelete},
	}))

	e.GET("/users", getUsers)
	e.GET("/users/:id", getUser)
	e.Logger.Fatal(e.Start(":1323"))
}
