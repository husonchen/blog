package controllers

import (
	"github.com/astaxie/beego"
	"time"
)

type baseController struct {
	beego.Controller
}

func (this *baseController) getTime() time.Time {
	add := 8 * float64(time.Hour)
	return time.Now().UTC().Add(time.Duration(add))
}
