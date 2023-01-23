package main

import (
	"api/drivers"
	"net/http"

	"github.com/labstack/echo/v4"
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
	e := echo.New()
	drivers.Connect()
	sqlDB, _ := drivers.DB.DB()
	defer sqlDB.Close()

	e.GET("/users", getUsers)
	e.GET("/users/:id", getUser)

	e.Logger.Fatal(e.Start(":8080"))
}
