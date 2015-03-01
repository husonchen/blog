{{template "admin/header"}}
<body>
	{{template "admin/topbar"}}
	{{template "admin/menus"}}
	<!-- external javascript================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<div id="content" class="span10">
		<div class="row-fluid sortable">
			<div class="box span12">
				<div class="box-header well" data-original-title>
					<h2><i class="icon-picture"></i> 最近访客</h2>
					<div class="box-icon">
						<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
						<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
					</div>
				</div>
				<div class="box-content">
					<ul class="ds-recent-visitors" data-num-items="100"></ul>
					<!--多说js加载开始，一个页面只需要加载一次 -->
					<script type="text/javascript">
					var duoshuoQuery = {short_name:"sonyatong"};
					(function() {
					    var ds = document.createElement('script');
					    ds.type = 'text/javascript';ds.async = true;
					    ds.src = 'http://static.duoshuo.com/embed.js';
					    ds.charset = 'UTF-8';
					    (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(ds);
					})();
					</script>
					<!--多说js加载结束，一个页面只需要加载一次 -->
				</div>
			</div>
		</div>	
	</div>
</body>
</html>