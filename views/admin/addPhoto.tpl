{{template "header"}}
<body>
	{{template "topbar"}}
	{{template "menus"}}
	<div id="content" class="span10">
		<div class="row-fluid sortable">
			<div class="box-content">
					<form class="form-horizontal" method="post" enctype="multipart/form-data" name="myform">
						 <fieldset>
						 	<legend>批量添加图片</legend>
						 	<div class="control-group">
							  <label class="control-label" for="typeahead">群组名</label>
							  <div class="controls">
								<input type="text" class="span6 typeahead" name='topic' value=''>
							  </div>
							</div>
						 	<div class="control-group">
								  <label class="control-label" for="textarea2">图片</label>
								  <div class="controls">
										<input class="input-file uniform_on" id="fileInput" type="file" name="image">
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
</body>
</html>