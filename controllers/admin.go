package controllers

import (
	"blog/modules"
	"fmt"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"time"
)

type AdminController struct {
	baseController
}

func (this *AdminController) Index() {
	this.TplNames = "admin/index.tpl"
}

func (this *AdminController) Login() {
	username := this.GetString("username")
	password := this.GetString("password")

	if username == "chenxiaochen" && password == "misssonyatong" {
		this.TplNames = "admin/index.tpl"
		this.SetSession("uid", "chenxiaochen")
	} else {
		this.TplNames = "admin/login.tpl"
	}
}

func (this *AdminController) AddArticle() {
	title := this.GetString("title")
	content := this.GetString("content")
	if title != "" {
		var article modules.Article
		article.Title = title
		article.Content = content
		article.Posttime = this.getTime()
		article.Insert()
	}

	this.TplNames = "admin/addArticle.tpl"
}

func (this *AdminController) EditArticle() {
	id, _ := strconv.Atoi(this.GetString("id"))
	article := modules.Article{Id: id}
	article.Read()
	this.Data["article"] = article

	content := this.GetString("content")
	if content != "" {
		article.Content = content
		article.Update("Content")
		this.Data["article"] = article
	}
	this.TplNames = "admin/editArticle.tpl"
}

func (this *AdminController) AddPhoto() {
	topic := this.GetString("topic")
	if topic != "" {
		file, header, err := this.GetFile("image")
		ext := strings.ToLower(header.Filename[strings.LastIndex(header.Filename, "."):])
		out := make(map[string]string)
		out["url"] = ""
		out["fileType"] = ext
		out["original"] = header.Filename
		out["state"] = "SUCCESS"
		filename := ""
		if err != nil {
			out["state"] = err.Error()
		} else {
			t := time.Now().UnixNano()

			//大图
			savepath := "./static/upload/" + topic + "/"
			if err = os.MkdirAll(savepath, os.ModePerm); err != nil {
				out["state"] = err.Error()
			}
			filename = fmt.Sprintf("%s/%d%s", savepath, t, ext)
			if err = this.SaveToFile("image", filename); err != nil {
				out["state"] = err.Error()
			}

		}
		file.Close()
	}
	this.TplNames = "admin/addPhoto.tpl"
}

func (this *AdminController) Photos() {
	topic := []string{}
	isroot := true
	err := filepath.Walk("./static/upload/", func(path string, f os.FileInfo, err error) error {
		if f == nil {
			return err
		}
		if f.IsDir() {
			if isroot {
				isroot = false
			} else {
				topic = append(topic, f.Name())
			}
			return nil
		}
		return nil
	})
	if err != nil {
		fmt.Printf("filepath.Walk() returned %v\n", err)
	}
	this.Data["topics"] = topic

	selectTopic := this.GetString("selectTopic")
	if selectTopic != "" {
		files := []string{}
		err := filepath.Walk("./static/upload/"+selectTopic, func(path string, f os.FileInfo, err error) error {
			if f == nil {
				return err
			}
			if f.IsDir() {
				return nil
			}
			files = append(files, "/static/upload/"+selectTopic+"/"+f.Name())
			fmt.Println(f.Name())
			return nil
		})
		if err != nil {
			fmt.Printf("filepath.Walk() returned %v\n", err)
		}
		this.Data["files"] = files
	}
	this.TplNames = "admin/photos.tpl"
}
