<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>프로그램 등록</title>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


<style>
#f3 {
	position:relative;
	width:100%;
	max-width:700px;
}

#f3_info{
	position:relative;
	width:100%;
}
h2{
	margin-bottom: 20px !important;
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

.img_wrap {
    width: 300px;
    margin-top: 50px;
}

.img_wrap img {
    max-width: 100%;
}

</style>

<script type="text/javascript" src="./js/jquery-3.1.0.min.js" charset="utf-8"></script>
<script type="text/javascript">
$(function(){
	$("#frm").submit(function(){
		var startDate = frm.period_start.value;
	    var endDate = frm.period_end.value;
	    var startArray = startDate.split('-');
	    var endArray = endDate.split('-');
	    var start_date = new Date(startArray[0], startArray[1], startArray[2]);
	    var end_date = new Date(endArray[0], endArray[1], endArray[2]);
	    
		var startDate2 = frm.start_date.value;
	    var endDate2 = frm.end_date.value;
	    var startArray2 = startDate2.split('-');
	    var endArray2 = endDate2.split('-');   
	    var start_date2 = new Date(startArray2[0], startArray2[1], startArray2[2]);
	    var end_date2 = new Date(endArray2[0], endArray2[1], endArray2[2]);	
	
	    if(start_date.getTime() > end_date.getTime()) {
	        alert("신청가능 기간설정이 잘못되었습니다.");
	        return false;
		} else if(start_date2.getTime() > end_date2.getTime()) {
	        alert("프로그램 기간설정이 잘못되었습니다.");
	        return false;
		}
	
	});
});

/* 이미지 스크립트 창에 출력 */
	var sel_file;
 
        $(document).ready(function() {
            $("#input_img").on("change", handleImgFileSelect);
        }); 
 
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }
 
                sel_file = f;
 
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#img").attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
        }

</script>
</head>
<body>
<div id="container">
    <div id="f1">
        <jsp:include page="../setting/header.jsp"></jsp:include>
    </div>

	<div id="f3">
		<form action="pgmCre.do" method="post" enctype="multipart/form-data" id="frm">
		<h2 class="text-primary">투게더 만들기</h2>
			<table class="table table-bordered">
				<tr>
					<th>프로그램 종별</th>
					<td>	
						<input type="radio" id="out" name="prgtype" value="out" checked="checked">
						<label for="out">아웃도어</label>
						<input type="radio" id="in" name="prgtype" value="in">
						<label for="in">문화/예술</label> 
					</td>
				</tr>
				<tr>
					<th>프로그램명</th>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<th>프로그램 부제</th>
					<td>
						<input type="text" name="sidename"><br>
						※프로그램에 대한 간략한 설명
					</td>
				</tr>
				<tr>
					<th>가격</th>
					<td><input type="number" name="price" ></td>
				</tr>
				<tr>
					<th>실행 장소</th>
					<td><input type="text" name="place"></td>
				</tr>
				<tr>
					<th>프로그램 설명</th>
					<td>
						<textarea rows="7" cols="40" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<th>최대 가능 인원</th>
					<td><input type="number" name="maximum"></td>
				</tr>
				<tr>
					<th>신청가능 기간</th>
					<td>
						<input type="date" name="period_start">에서
						<input type="date" name="period_end">까지
					</td>
				</tr>
				<tr>
					<th>프로그램 기간</th>
					<td>
						<input type="date" name="start_date">에서
						<input type="date" name="end_date">까지
					</td>
				</tr>
				<tr>
					<th>배경화면 등록</th>
					<td><input type="file" id="input_img" name="wall_paper"></td>
				</tr>
				<tr>
					<th colspan="2">
						<div>
        					<div class="img_wrap"><img id="img" /></div>
    					</div>
    				</th>
				</tr>
				<tr>
					<th colspan="2" class="btn_th">
						<input class="btn btn-info" type="submit" value="확인">
						<input class="btn btn-danger" type="button" value="취소"> 
					</th>
				</tr>
			</table>
			<div>
        		<div class="img_wrap"><img id="img" /></div>
    		</div>
		</form>
	</div>
	
	<div id="f5">
		<jsp:include page="../setting/footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>