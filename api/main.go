package main

import (
	"fmt"
	"net/http"
	"strconv"

	"github.com/Kubosaka/qrchecker/api/drivers"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

type User struct {
	Id         int    `json:"id" param:"id"`
	User_Id    int    `json:"user_id"`
	Faculty    string `json:"faculty"`
	Department string `json:"department"`
	Major      string `json:"major"`
	Course     string `json:"course"`
	Grade      int    `json:"grade"`
	Name       string `json:"name"`
	Email      string `json:"email"`
	Password   string `json:"password"`
}

type Lectures struct {
	Id          int    `json:"id" param:"id"`
	Number      int    `json:"number"`
	Name        string `json:"name"`
	Teacher     string `json:"teacher"`
	Fiscal_year string `json:"fiscal_year"`
	Start_time  string `json:"start_time"`
	End_time    string `json:"end_time"`
}

type Attendances struct {
	Id             int    `json:"id"`
	Lecture_Number int    `json:"lecture_number"  param:"lecture_id"`
	Lecture_Name   string `json:"lecture_name" param:"lecture_name"`
	User_Number    int    `json:"user_number" param:"user_id"`
	User_Name      string `json:"user_name" param:"user_name"`
	First          bool   `json:"first"`
	Second         bool   `json:"second"`
	Third          bool   `json:"third"`
	Fourth         bool   `json:"fourth"`
	Fifth          bool   `json:"fifth"`
	Sixth          bool   `json:"sixth"`
	Seventh        bool   `json:"seventh"`
	Eighth         bool   `json:"eighth"`
	Ninth          bool   `json:"ninth"`
	Tenth          bool   `json:"tenth"`
	Eleventh       bool   `json:"eleventh"`
	Twelfth        bool   `json:"twelfth"`
	Thirteenth     bool   `json:"thirteenth"`
	Fourteenth     bool   `json:"fourteenth"`
	Fifteenth      bool   `json:"fifteenth"`
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

func getLectures(c echo.Context) error {
	Lectures := []Lectures{}
	drivers.DB.Find(&Lectures)
	fmt.Println(Lectures)
	return c.JSON(http.StatusOK, Lectures)
}

func getAttendances(c echo.Context) error {
	attendances := []Attendances{}
	drivers.DB.Find(&attendances)
	//fmt.Println(attendances)
	return c.JSON(http.StatusOK, attendances)
}

func updateAttendance(c echo.Context) error {
	attendance := Attendances{}
	attendances := []Attendances{}
	drivers.DB.Find(&attendances)
	if err := c.Bind(&attendance); err != nil {
		return err
	}

	for _, a := range attendances {

		if a.Lecture_Number == attendance.Lecture_Number && a.User_Number == attendance.User_Number {
			attendance.Id = a.Id
			attendance.First = a.First
			attendance.Second = a.Second
			attendance.Third = a.Third
			attendance.Fourth = a.Fourth
			attendance.Fifth = a.Fifth
			attendance.Sixth = a.Sixth
			attendance.Seventh = a.Seventh
			attendance.Eighth = a.Eighth
			attendance.Ninth = a.Ninth
			attendance.Tenth = a.Tenth
			attendance.Eleventh = a.Eleventh
			attendance.Twelfth = a.Twelfth
			attendance.Thirteenth = a.Thirteenth
			attendance.Fourteenth = a.Fourteenth
			attendance.Fifteenth = a.Fifteenth
		}
	}

	switch c.Param("count") {
	case "first":
		attendance.First = true
	case "second":
		attendance.Second = true
	case "third":
		attendance.Third = true
	case "fourth":
		attendance.Fourth = true
	case "fifth":
		attendance.Fifth = true
	case "sixth":
		attendance.Sixth = true
	case "seventh":
		attendance.Seventh = true
	case "eighth":
		attendance.Eighth = true
	case "ninth":
		attendance.Ninth = true
	case "tenth":
		attendance.Tenth = true
	case "eleventh":
		attendance.Eleventh = true
	case "twelfth":
		attendance.Twelfth = true
	case "thirteenth":
		attendance.Thirteenth = true
	case "fourteenth":
		attendance.Fourteenth = true
	case "fifteenth":
		attendance.Fifteenth = true
	}

	//fmt.Println(attendance)
	drivers.DB.Save(&attendance)
	return c.JSON(http.StatusCreated, attendance)
}

func getAttendance(c echo.Context) error {
	//attendance := Attendances{}
	attendances := []Attendances{}
	returnAttendance := []Attendances{}

	drivers.DB.Find(&attendances)
	//fmt.Println(attendances)

	// if err := c.Bind(&attendance); err != nil {
	// 	return err
	// }
	// fmt.Println(attendance)
	check_user_id, _ := strconv.Atoi(c.Param("user_id"))
	fmt.Println(check_user_id)
	for _, a := range attendances {
		if a.User_Number == check_user_id {
			returnAttendance = append(returnAttendance, a)
		}
	}

	//fmt.Println(returnAttendance)
	return c.JSON(http.StatusCreated, returnAttendance)
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
	e.GET("/lectures", getLectures)
	e.GET("/attendances", getAttendances)
	e.GET("/attendances/:user_id", getAttendance)
	e.PUT("/attendances/:lecture_id/:lecture_name/:user_id/:user_name/:count", updateAttendance)

	e.Logger.Fatal(e.Start(":1323"))
}
