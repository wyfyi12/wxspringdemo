<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <head>
    <title>vux demo</title>
    <link rel="stylesheet" type="text/css" href="vux/dist/vux.css">
    <style>
    * {margin:0;padding:0;}
    body {padding-right:5px;}
    
    </style>
    <script src="https://cdn.jsdelivr.net/vue/1.0.24/vue.min.js"></script>
    <!--components-->
    <script src="https://vux.li/gitfile/dist/components/divider/index.js?v0.1.1"></script>
    <!--filters-->
  </head>
  <body>
    <div id="demo">
      <divider>华丽分割线</divider>
<divider><span style="color:green;">华丽分割线</span></divider>
    </div>
    <script>
    // register components
      Vue.component('divider', vuxDivider)

    // register filters

    new Vue({
      el: '#demo',
      
    })
    </script>
  </body>
</html>
