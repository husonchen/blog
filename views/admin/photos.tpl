{{template "header"}}
<body>
	{{template "topbar"}}
	{{template "menus"}}
	<div id="content" class="span10">
		<div class="row-fluid sortable">
			<div class="box span12">
				<form method="get" name="mainForm">
					<select name="selectTopic" data-rel="chosen">
						{{range $k, $v := .topics}}
						<option value="{{$v}}">{{$v}}</option>
						{{end}}
					</select>
					<button type="submit" class="btn btn-primary">查询</button> 
				</form>
				<div class="box-header well" data-original-title>
					<h2><i class="icon-picture"></i> Gallery</h2>
					<div class="box-icon">
						<a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
						<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
						<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
					</div>
				</div>
				<div class="box-content">
					<p class="center">
						<button id="toggle-fullscreen" class="btn btn-large btn-primary visible-desktop" data-toggle="button">Toggle Fullscreen</button>
					</p>
					<br/>
					<ul class="thumbnails gallery">
						{{range $k, $v := .files}}
						<li id="image-24" class="thumbnail">
								<a style="background:url({{$v}})" title="" href="{{$v}}"><img class="grayscale" src="{{$v}}" alt=""></a>
								http://sonyatong.com{{$v}}
						</li>
						{{end}}
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
