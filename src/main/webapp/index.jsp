<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- 新 Bootstrap4 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<!-- popper.min.js 用于弹窗、提示、下拉菜单 -->
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>


<script>

function down(){
	$.ajax({
	    type : 'POST',
	    url :'down.do',
	    data :{"url":$('#url').val()},
	    dataType : 'JSON',
	    success : function(dto) {
	           /* if (dto.stat == "suc") {
	        	   alert('suc');
	           }else{
	        	   alert('err');
	           } */
	    	alert('已加入下载任务列表，请稍候刷新页面查看下载结果');
	    }});
}



</script>
</head>


<body>

<div class="container">
<div class="row">
	<div class="col-*-*" style="height: 100px"></div> 
</div>
 


<div class="row">
   <div class="col-12"> 
	  <form class="form-inline"  >
	    <input type="url" class="form-control" style="width:1000px" id="url" placeholder="复制要下载视频的地址到这里">
	    <button type="button" class="btn btn-primary" onclick="down();">下载</button>
	  </form>
	</div>
</div>
<div class="row">
	<div class="col-*-*" style="height: 100px"></div> 
</div>
<div class="row">
	<div class="col-4"> </div>
  	<div class="col-4"><h3><a href="#">xxxxx.mp4</a></h3></div>
  	<div class="col-4"> </div>
</div>


</div>

</body>
</html>