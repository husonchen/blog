{{template "header"}}
<body>
	{{template "topbar"}}
	{{template "menus"}}
	<div id="content" class="span10">
		<div class="row-fluid sortable">
			<div class="box span12">
				<div class="box-header well" data-original-title>
					<h2><i class="icon-edit"></i> Form Elements</h2>
						<div class="box-icon">
						<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
						<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
					</div>
				</div>
				<div class="box-content">
					<form class="form-horizontal" method="post" enctype="multipart/form-data" name="myform">
						 <fieldset>
						 	<legend>添加文章</legend>
						 	<div class="control-group">
							  <label class="control-label" for="typeahead">文章名</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" name='ver' value=''>
							  </div>
							</div>
						 	<div class="control-group">
								  <label class="control-label" for="textarea2">内容</label>
								  <div class="controls">
									<textarea name='drsc' class="cleditor" id="textarea2" rows="3"></textarea>
								  </div>
							</div>
						 	<div class="form-actions">
								  <button type="submit" class="btn btn-primary">保存</button>
								  <button type="reset" class="btn">取消</button>
							</div>
						 </fieldset>
					</form>
				</div>
			</div>
			
		</div>
	</div>
	
</body>
</html>