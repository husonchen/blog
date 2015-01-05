package modules

import (
    "fmt"
    "github.com/astaxie/beego/orm"
    _ "github.com/go-sql-driver/mysql" // import your used driver
)

type Article Struct{
	Id			int
	Title       string `orm:"size(255)"`
	Content     string 
}

func init() {
    // register model
    orm.RegisterModel(new(Article))

    // set default database
    orm.RegisterDataBase("default", "mysql", "root:root@/my_db?charset=utf8", 30)
}

func (this *Article)Insert(a Article) {
    o := orm.NewOrm()
	id, err := o.Insert(&a)
}