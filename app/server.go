package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	engine := gin.Default()
	engine.GET("/", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "hello world!!",
		})
	})
	engine.GET("/taro", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{
			"message": "hello world!!taro",
		})
  })
	engine.Run(":80")
}
