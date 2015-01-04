package controllers

import (
	"fmt"
	"github.com/astaxie/beego"
	"os"
	"path/filepath"
	"strings"
	"time"
)

type AdminController struct {
	beego.Controller
}

func (this *AdminController) Login() {
	username := this.GetString("username")
	password := this.GetString("password")
	if username == "chenxiaochen" && password == "misssonyatong" {
		this.TplNames = "admin/index.tpl"
	} else {
		this.TplNames = "admin/login.tpl"
	}
}

func (this *AdminController) AddArticle() {
	this.TplNames = "admin/addArticle.tpl"
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
