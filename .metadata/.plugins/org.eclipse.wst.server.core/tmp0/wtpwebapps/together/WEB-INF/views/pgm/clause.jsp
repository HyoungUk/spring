<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜 플랫폼 Together</title>
<style>
#f2 {
	position:relative;
	width: 80%;
	text-align: center;
}
#f2 h2 {
	margin-bottom: 20px;
}
#f2 p {
	font-size: 16px;
	margin-bottom: 20px;
}
#f2 img {
	width: 100%;
	height: 500px;
}
.btn_box {
	margin-bottom: 20px;
}
</style>
</head>
<body>
<div id="container">
    <div id="f1">
        <jsp:include page="../setting/header.jsp"></jsp:include>
    </div>
    <div id="f2">
		<img src="images/sub/cyclist.jpg">
    
    	<h2 class="text-primary">지금 호스트로 등록하여 소중한 경험을 공유하세요 !</h2>
    	<p>
    		'나도 투게더 모임 하나 만들어볼까?' '이런 투게더가 있으면 재밌지 않을까?' 라고 생각하셨던 분들!
			투게더에서 호스트로 투게더를 기획하시면 된답니다.
		</p>
		<p>
			현재 올라와 있는 투게더도, 연락을 주신 호스트 분들께서 직접 기획한 투게더라는거!
			사람들이 다양한 도전과 경험을 즐기고, 
		</p>
		<p>
			사람과 사람이 연결되면 더욱 풍요롭고 행복한 삶을 살 수 있지 않을까요?
		</p>
		<p>
			클라이밍, 서핑, 러닝, 자전거 등 다양한 아웃도어 액티비티부터 꽃꽂이, 와인모임 등의 가벼운 모임까지.
			여러분의 소중한 경험들을 공유해주세요!
		</p>
		<div class="btn_box">
    		<a href="hostApplyForm.do"><input type="button" class="btn btn-info" value="호스트 신청하기"></a>
    	</div>
    </div>
    
	<jsp:include page="../setting/footer.jsp"></jsp:include>
</div>
</body>
</html>