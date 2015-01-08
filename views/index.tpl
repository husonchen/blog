<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>陈晓辰的博客</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  <link rel="alternate icon" type="image/png" href="http://cdn.amazeui.org/amazeui/2.0.0/i/favicon.png">
  <link rel="stylesheet" href="http://cdn.amazeui.org/amazeui/2.0.0/css/amazeui.min.css"/>
  <style>
    @media only screen and (min-width: 1200px) {
      .blog-g-fixed {
        max-width: 1200px;
      }
    }

    @media only screen and (min-width: 641px) {
      .blog-sidebar {
        font-size: 1.4rem;
      }
    }

    .blog-main {
      padding: 20px 0;
    }

    .blog-title {
      margin: 10px 0 20px 0;
    }

    .blog-meta {
      font-size: 14px;
      margin: 10px 0 20px 0;
      color: #222;
    }

    .blog-meta a {
      color: #27ae60;
    }

    .blog-pagination a {
      font-size: 1.4rem;
    }

    .blog-team li {
      padding: 4px;
    }

    .blog-team img {
      margin-bottom: 0;
    }

    .blog-footer {
      padding: 10px 0;
      text-align: center;
    }
  </style>
</head>
<body>
<header class="am-topbar">
  <h1 class="am-topbar-brand">
    <a href="#">blog</a>
  </h1>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav">
      <li class="am-active"><a href="#">首页</a></li>
      <li><a href="#">目录</a></li>
    </ul>

    <form class="am-topbar-form am-topbar-left am-form-inline am-topbar-right" role="search">
      <div class="am-form-group">
        <input type="text" class="am-form-field am-input-sm" placeholder="搜索文章">
      </div>
      <button type="submit" class="am-btn am-btn-default am-btn-sm">搜索</button>
    </form>

  </div>
</header>

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

  <div class="am-u-md-4 blog-sidebar">
    <div class="am-panel-group">
      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">关于我</div>
        <div class="am-panel-bd">
          <p>2014年毕业于华南理工大学，现从事互联网开发工作</p>
          <a class="am-btn am-btn-success am-btn-sm" href="#">查看更多 →</a>
        </div>
      </section>
      <section class="am-panel am-panel-default">
        <div class="am-panel-hd">最新文章</div>
        <ul class="am-list blog-list">
          {{range $k, $v := .list}}
          <li><a href="#">{{$v.Title}}</a></li>
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

</div>

<footer class="blog-footer">
  <p>blog <br/>
    <small>© Copyright XXX. by husonchen.</small>
  </p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="/js/polyfill/rem.min.js"></script>
<script src="/js/polyfill/respond.min.js"></script>
<script src="/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="/static/js/jquery.min.js"></script>
<script src="http://cdn.amazeui.org/amazeui/2.0.0/js/amazeui.min.js"></script>
<!--<![endif]-->

</body>
</html>