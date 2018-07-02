<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>소셜 플랫폼 Together</title>
<script type="text/javascript">
	$(function() {
		$('#id_Chk').click(function() {
			var id = frm.id.value;
			if(!id){
				alert("아이디를 입력하고 체크하세요");
				frm.id.focus(); return false;
			}
			$.post('id_Chk.do','id='+id,function(data){
				//가져온 데이터는 JSON이 아닌 그냥 텍스트 연결문
				var index1 = data.indexOf('|');//해당문자 위치 번호
				var msg = data.slice(0,index1);//0번부터 해당 위치번호 앞까지
				alert(msg);
				var same = data.substr(index1+1);//해당번호+1 부터
				if(same==0){
					$("#id").attr('readonly', 'true');
					$("#cen_btn").removeClass("hid");
					$("#id_Chk").addClass("hid");
					id_Chk_Sit.value = "on";
				}
			});
		});
		
		$("#cen_btn").on('click', function(){
			$("#id").removeAttr('readonly');
			$("#id_Chk").removeClass("hid");
			$("#cen_btn").addClass("hid");
			id_Chk_Sit.value = "null";
		})
	});
	function Chk() {
		var pw = document.getElementById("Pw").value;
   		var pwck = document.getElementById("PwCheck").value;
        if (pw != pwck) {
            alert('비밀번호가 틀렸습니다. 다시 입력해 주세요');
            return false;
        }

   		var id_Chk_Sit = document.getElementById("id_Chk_Sit").value;
   		if(id_Chk_Sit == "null"){
            alert('중복확인을 하지 않았습니다');
            return false;
   		}
    }
</script>
<style>
#f3 {
	position:relative;
	width:100%;
	max-width:600px;
}

#f3_info{
	position:relative;
	width:100%;
}
h2{
	margin-bottom: 20px;
}
th {
	width:150px !important;
	padding-left: 30px !important;
	padding-top: 13px !important;
}
td {
	padding-left: 100px !important;
	height: 52px;
}
#birth {
	width:174px;
}
input {
	margin:0;
	height:30px;
}
#id_btn {
	margin-left: 10px !important;
}
#man, #woman {
	position: relative;
	top:3px;
	margin:0;
}
#woman_label, #man_label {
	position: relative;
	top:-8px;
	margin:0;
}
#gen {
	height:47px;
}
#subm {
	text-align: center;
}

.f3_2_hid {
	display: none;
}
</style>
</head>
<body>
<div id="container">
    <jsp:include page="../setting/header.jsp"></jsp:include>
    
    <div id="f3">
		<div id="f3_info">
		<input type="hidden" name="id_Chk_Sit" id="id_Chk_Sit" value="null">
		<form action="join.do" method="post" name="frm" onsubmit="return Chk()">
			<h2 class="text-primary">회원정보 입력</h2>
			<table class="table table-bordered">
				<tr>
					<th><span>아이디</span></th>
					<td>
						<input type="text" id="id" name="id" required="required" autofocus="autofocus">
						<input type="button" id="id_Chk" value="중복확인" style="width: 80px">
						<input type="button" id="cen_btn" class="hid" value="취소" style="width: 80px">
					</td>
				</tr>
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="password" id="Pw" required="required"></td>
				</tr>
				<tr>
					<th>비밀번호확인</th>
					<td><input type="password" name="password2" id="PwCheck" required="required"></td>
				</tr>
				<tr>
					<th>닉네임</th>
					<td><input type="text" name="nick_name" required="required"></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required="required"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td><input type="tel" name="tel" required="required"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" name="addr" required="required"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td id="gen">
						<input type="radio" id="man" name="gender" value="man" checked="checked">
						<label for="man" id="man_label">남성</label>	
						<input type="radio" id="woman" name="gender" value="woman">
						<label for="woman" id="woman_label">여성</label>
					</td>
				</tr>
				
				<tr>
					<th>생일</th>
					<td><input type="date" id="birth" name="birth" required="required"></td>
				</tr>
				
				<tr>
					<th>이메일</th>
					<td><input type="email" name="email" required="required"></td>
				</tr>
				<tr>
					<th colspan="2" id="subm"><input type="submit" value="확인" style="width: 60px"></th>
				</tr>
			</table>
		</form>
		</div>
	</div>
	
	<jsp:include page="../setting/footer.jsp"></jsp:include>
</div>
</body>
</html>