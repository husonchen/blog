package routers

import (
	"blog/controllers"
	"github.com/astaxie/beego"
)

func init() {
	beego.AutoRouter(&controllers.MainController{})
	beego.AutoRouter(&controllers.AdminController{})
	// beego.Router("/", &controllers.MainController{})
}
