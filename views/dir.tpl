<!DOCTYPE html>
<html>
{{template "header"}}
<body>
{{template "topbar"}}

<div class="am-g am-g-fixed blog-g-fixed">
  <div class="am-u-md-8">
    {{range $k, $v := .dir}}
      <article class="blog-main">
        <h3 class="am-article-title blog-title">
          <a href="/p/{{$v.Id}}" target="_BLANK">{{str2html $v.Title}}</a>
        </h3>
        <h4 class="am-article-meta blog-meta"> posted on {{$v.Posttime}}</a></h4>
      </article>
      <hr class="am-article-divider blog-hr">
    {{end}}
  </div>
  {{template "sider" .}}
</div>

 {{template "footer"}}
</body>
</html>