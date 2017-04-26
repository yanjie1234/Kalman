<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>测试</title>
<link href="../assets/css/video-js.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="../assets/images/logo48.ico"
	type="image/x-icon" />
<script src="../assets/js/jquery-2.1.0.js" charset="utf-8"></script>
<script src="../assets/js/video.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<video id="example_video_1" class="video-js vjs-default-skin" controls
		preload="none" width="600" height="400"
		poster="../assets/images/example/baobei.png" data-setup="{}">
	<source src="../assets/video/${path }" type='video/mp4' /> </video>
	name:${path } <%=basePath%>
	<br>
	<script type="text/javascript">
		var myPlayer = videojs('example_video_1');
		videojs("example_video_1").ready(function() {
			var myPlayer = this;
			myPlayer.play();
		});
	</script>
</body>
</html>