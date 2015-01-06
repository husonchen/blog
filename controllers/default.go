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

	articles := module.GetLast5Article()
	c.Data["article"] = last
	c.Data["list"] = articles
	c.TplNames = "index.tpl"
}
