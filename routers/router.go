package routers

import (
	"blog/controllers"
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
)

func init() {
	beego.AutoRouter(&controllers.AdminController{})
	beego.Router("/", &controllers.MainController{})
	beego.Router("/p/*", &controllers.MainController{}, "*:GetArtical")
	beego.InsertFilter("/admin/*", beego.BeforeRouter, FilterAdmin)
}

var FilterAdmin = func(ctx *context.Context) {
	uid := ctx.Input.Session("uid")
	fmt.Println(uid)
	if uid != "chenxiaochen" && ctx.Request.RequestURI != "/admin/login" {
		ctx.Redirect(302, "/admin/login")
	}
}
