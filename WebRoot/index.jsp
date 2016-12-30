<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jweixin-1.1.0.js"></script>
<link rel="stylesheet" href="jquery-weui-build/dist/lib/weui.min.css">
<link rel="stylesheet" href="jquery-weui-build/dist/css/jquery-weui.css">
<title>vux demo</title>
</head>
<body>
	<div class="weui_grids">
		<a href="javascript:;" class="weui_grid js_grid" data-id="button"
			onclick="where()">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_button.png" alt="">
			</div>
			<p class="weui_grid_label">地图</p>
		</a> <a href="javascript:;" class="weui_grid js_grid" data-id="cell"
			onclick="startrecord()">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_cell.png" alt="">
			</div>
			<p class="weui_grid_label">开始录音</p>
		</a> <a href="javascript:;" class="weui_grid js_grid" data-id="toast"
			onclick="stoprecord()">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_toast.png" alt="">
			</div>
			<p class="weui_grid_label">停止录音</p>
		</a> <a href="javascript:;" class="weui_grid js_grid" data-id="toast"
			onclick="playrecord()">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_toast.png" alt="">
			</div>
			<p class="weui_grid_label">播放录音</p>
		</a> <a href="javascript:;" class="weui_grid js_grid" data-id="toast"
			onclick="checkrecord()">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_toast.png" alt="">
			</div>
			<p class="weui_grid_label">翻译录音</p>
		</a> <a href="javascript:;" class="weui_grid js_grid" data-id="toast"
			onclick="saoyisao()">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_toast.png" alt="">
			</div>
			<p class="weui_grid_label">扫一扫</p>
		</a> <a href="javascript:;" class="weui_grid js_grid" data-id="toast"
			onclick="location='adduser.jsp'">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_toast.png" alt="">
			</div>
			<p class="weui_grid_label">添加成员</p>
		</a> <a href="javascript:;" class="weui_grid js_grid" data-id="toast"
			onclick="distence()">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_toast.png" alt="">
			</div>
			<p class="weui_grid_label">考勤</p>
		</a> <a href="map.jsp" class="weui_grid js_grid" data-id="toast"
			onclick="distence()">
			<div class="weui_grid_icon">
				<img src="./images/icon_nav_toast.png" alt="">
			</div>
			<p class="weui_grid_label">百度map</p>
		</a>
	</div>
</body>
<script src="jquery-weui-build/dist/lib/jquery-2.1.4.js"></script>
<script src="jquery-weui-build/dist/js/jquery-weui.js"></script>
</html>
