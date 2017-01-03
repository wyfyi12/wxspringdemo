<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no">
<meta name=apple-mobile-web-app-capable content=yes>
<link rel="stylesheet" href="vux/dist/vux.css">
<title>Insert title here</title>
<script src="js/vue.min.1.0.24.js"></script>
<script src="vux/dist/components/group/index.js"></script>
<script src="vux/dist/components/cell/index.js"></script>
<script src="vux/dist/components/divider/index.js"></script>
<script src="vux/dist/components/blur/index.js"></script>
<script src="vux/dist/components/date-formatter/index.js"></script>
</head>
<body>

	<div id="demo" style="height: 100%" >
	<blur :blur-amount=40 url="https://o3e85j0cv.qnssl.com/tulips-1083572__340.jpg" >
	<span v-text="time1 | date-formatter 'YYYY-MM-DD HH:mm:ss'"></span>
	</blur>
   	<divider></divider>
	</div>
	<script>
	
	Vue.component('group', vuxGroup)
	Vue.component('divider', vuxDivider)
	Vue.component('cell', vuxCell)
	Vue.component('blur', vuxBlur)
	Vue.component('date-formatter', vuxDateFormatter)
	new Vue({
		el : '#demo',
		data: {
		    time1: new Date('2016/01/03 19:19:19'),
		  }
	})</script>
</body>
</html>
