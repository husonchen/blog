package controllers

import (
	"blog/modules"
)

type MainController struct {
	baseController
}

func (c *MainController) Get() {
	var module modules.Article
	last := module.GetLastArticle()
	c.Data["article"] = last
	c.TplNames = "index.tpl"
}
