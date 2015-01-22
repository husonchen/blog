package controllers

import (
	"blog/modules"
	// "fmt"
	"strconv"
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

func (c *MainController) GetArtical() {
	id, _ := strconv.Atoi(c.Ctx.Input.Params["0"])
	article := modules.Article{Id: id}
	article.Read()
	articles := article.GetLast5Article()
	c.Data["article"] = article
	c.Data["list"] = articles
	c.TplNames = "index.tpl"
}

func (c *MainController) GetDir() {
	var module modules.Article
	dirlist := module.GetArticleByPage(1)
	articles := module.GetLast5Article()
	c.Data["list"] = articles
	c.Data["dir"] = dirlist
	c.TplNames = "dir.tpl"
}
