package modules

import (
	"fmt"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql" // import your used driver
	"time"
)

type Article struct {
	Id       int
	Title    string    `orm:"size(255);index"`
	Content  string    `orm:"type(text)"`
	Posttime time.Time `orm:"type(datetime)"`
}

func (m *Article) TableName() string {
	return "article"
}

func (m *Article) Insert() error {
	if _, err := orm.NewOrm().Insert(m); err != nil {
		return err
	}
	return nil
}

func (m *Article) Read(fields ...string) error {
	if err := orm.NewOrm().Read(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Article) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(m, fields...); err != nil {
		return err
	}
	return nil
}

func (m *Article) Delete() error {
	if _, err := orm.NewOrm().Delete(m); err != nil {
		return err
	}
	return nil
}

func (m *Article) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(m)
}

func (m *Article) GetLastArticle() Article {
	var ari Article
	err := m.Query().OrderBy("-id").Limit(1).One(&ari)
	if err == orm.ErrNoRows {
		// 没有找到记录
		fmt.Printf("Not row found")
	}
	return ari
}

func (m *Article) GetLast5Article() []*Article {
	var articles []*Article
	_, err := m.Query().OrderBy("-id").Limit(5).All(&articles)
	if err != nil {
		fmt.Println("error")
	}
	return articles
}

//每页默认为20条
func (m *Article) GetArticleByPage(page int) []*Article {
	var articles []*Article
	_, err := m.Query().OrderBy("-id").Limit(20, (page-1)*20).All(&articles)
	if err != nil {
		fmt.Println("error")
	}
	return articles
}
