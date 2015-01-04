package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	q := c.GetString("q")
	c.Data["Website"] = q
	c.Data["Email"] = q
	c.TplNames = "index.tpl"
}
