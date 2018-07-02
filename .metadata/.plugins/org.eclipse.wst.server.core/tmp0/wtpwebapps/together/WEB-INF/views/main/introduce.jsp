<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>투게더 소개</title>
<style>
.wrapper {
	position: relative;
	width: 60%;
	text-align: left;
}

.wrapper img {
	width: 100%;
	height: 700px;
	border-radius: 5px;
}
.text_box{
	margin-bottom: 30px;
}
.wrapper h2 {
	margin-bottom: 20px !important;
}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="../setting/header.jsp"></jsp:include>

		<div class="wrapper">
			<img src="images/sub/intro.jpg">

			<div class="text_box">
				<h2 class="text-primary">뭐라고 써야 그럴싸 할까</h2>
				<p>뭔가 신나는 액티비티를 해보고 싶은데 무얼 해야할지 모르겠다면? 하고싶은 액티비티가 있는데 같이할 친구들을
					찾는다면?</p>

				<p>세상에는 패러글라이딩, 윈드서핑, 클라이밍 등 참 많은 아웃도어 액티비티들이 있지만 어디에서 어떻게 할 수
					있는지 조사하려면 많은 노력과 시간이 들어갑니다.</p>
				<p>적당한 곳을 찾았으나 교통편이 애매하기도 하고, 같이 갈 친구들이 없으면 계속 미루게 되는것이 현실입니다.</p>

				<p>투게더는 사람들을 모아 액티비티를 함께 즐기고 소통하며 더 행복한 삶을 살 수 있게 하고자 합니다. 지친
					일상속에서 투게더를 통해 활력을 찾아보는건 어떨까요?</p>
			</div>
		</div>

		<jsp:include page="../setting/footer.jsp"></jsp:include>
	</div>
</body>
</html>