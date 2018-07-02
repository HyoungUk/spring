<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>호스트신청</title>
<style>
.wrapper {
	position: relative;
	width: 80%;
	text-align: center;
}
.wrapper img {
	width: 100%;
	height: 500px;
}
#send_btn {
	margin: 20px 0 !important;
}
li h4 {
	margin-top: 20px !important;
	margin-bottom: 10px !important;
}
li p {
	margin-bottom: 20px;
}
.name_space{
	height: 34px;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	
})
</script>
</head>
<body>
	<div id="container">
		<jsp:include page="../setting/header.jsp"></jsp:include>

		<div class="wrapper">
			<img src="images/sub/kiteboarding.jpg">
			<form action="hostApply.do" method="post">
				<ul>
					
					<li>
						<h4>호스트명</h4>
						<p>* 등록한 호스트명은 변경하실수 없습니다. 신중하게 정해주세요</p>
						<input class="name_space" type="text" name="host_name">
						<input class="chk_btn btn btn-success" type="button" value="중복확인(미구현)">
					</li>
					<li id="send_btn"><input class="btn btn-info" type="submit" value="확인"></li>
				</ul>
			</form>
		</div>

		<jsp:include page="../setting/footer.jsp"></jsp:include>
	</div>
</body>
</html>