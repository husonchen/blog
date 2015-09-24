{{define "sider"}}
<div class="am-u-md-4 blog-sidebar">
    <div class="am-panel-group">
      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">关于我</div>
        <div class="am-panel-bd">
          <p>2014年毕业于华南理工大学，现在酷狗音乐从事服务器开发工作</p>
          <a href="/p/0" class="am-btn am-btn-success am-btn-sm" href="#">查看更多 →</a>
        </div>
      </section>
      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">最新文章</div>
        <ul class="am-list blog-list">
          {{range $k, $v := .list}}
          <li><a href="/p/{{$v.Id}}">{{str2html $v.Title}}</a></li>
          {{end}}
        </ul>
      </section>

      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">微信号</div>
        <div class="am-panel-bd">
          <img class="am-thumbnail"
                     src="/static/img/weixin.jpeg" alt=""/>
        </div>
      </section>
    </div>
  </div>
{{end}}