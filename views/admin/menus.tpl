{{define "admin/menus"}}
<div class="container-fluid">
	<div class="row-fluid">
				
		<!-- left menu starts -->
		<div class="span2 main-menu-span">
			<div class="well nav-collapse sidebar-nav">
				<ul class="nav nav-tabs nav-stacked main-menu">
					<li class="nav-header hidden-tablet">日志</li>
					<li><a class="ajax-link" href="/admin/index"><i class="icon-home"></i><span class="hidden-tablet">首页</span></a></li>
					<li><a class="ajax-link" href="/admin/addarticle"><i class="icon-home"></i><span class="hidden-tablet">新建日志</span></a></li>
					<li><a class="ajax-link" href="/admin/editarticle"><i class="icon-eye-open"></i><span class="hidden-tablet">编辑日志</span></a></li>
					<li><a class="ajax-link" href="/admin/addphoto"><i class="icon-eye-open"></i><span class="hidden-tablet">上传图片</span></a></li>
					<li><a class="ajax-link" href="/admin/photos"><i class="icon-eye-open"></i><span class="hidden-tablet">已上传图片</span></a></li>
				</ul>
				<label id="for-is-ajax" class="hidden-tablet" for="is-ajax"><input id="is-ajax" type="checkbox"> Ajax on menu</label>
			</div><!--/.well -->
		</div><!--/span-->
		<!-- left menu ends -->
{{end}}