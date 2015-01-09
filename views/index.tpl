<!DOCTYPE html>
<html>
{{template "header"}}
<body>
{{template "topbar"}}

<div class="am-g am-g-fixed blog-g-fixed">
  <div class="am-u-md-8">
    <article class="blog-main">
      <h3 class="am-article-title blog-title">
        <a href="#">{{.article.Title}}</a>
      </h3>
      <h4 class="am-article-meta blog-meta"> posted on {{.article.Posttime}}</a></h4>

      <div class="am-g blog-content">
        
      </div>
      <div class="am-g">
        <div class="am-u-sm-12">
          {{str2html  .article.Content}}
        </div>
      </div>
    </article>
    <div data-am-widget="duoshuo" class="am-duoshuo am-duoshuo-default" data-ds-short-name="sonyatong">
      <div class="ds-thread" data-thread-key="{{.article.Id}}" data-title="{{.article.Title}}" data-url="http://sonyatong.com/"></div>
    </div>
    <script type="text/javascript">
    var duoshuoQuery = {short_name:"sonyatong"};
    </script>
    <hr class="am-article-divider blog-hr">
    <ul class="am-pagination blog-pagination">
      <li class="am-pagination-prev"><a href="">&laquo; 上一页</a></li>
      <li class="am-pagination-next"><a href="">下一页 &raquo;</a></li>
    </ul>
  </div>
  {{template "sider"}}
</div>

 {{template "footer"}}
</body>
</html>