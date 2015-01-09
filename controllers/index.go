package controllers

import ()

type IndexController struct {
	baseController
}

func (this *IndexController) dir() {

}

func (this *IndexController) dirData() {

	this.Ctx.WriteString("hello")
}
