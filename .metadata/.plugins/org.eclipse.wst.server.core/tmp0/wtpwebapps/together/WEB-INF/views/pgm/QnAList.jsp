<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting/setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function qDelete(rno, pgm_num) {
      var frmData = "rno="+rno+"&pgm_num="+pgm_num;
      $.post('qDelete.do', frmData, function(data) {
         alert("삭제 되었습니다");
         $('#QnAList').html(data);
      });
   }
   
   function lst(pgm_num) {
      $('#QnAList').load('QnAList.do'+pgm_num); 
   }

</script>
</head>
<body>
<div class="container">
   <h3><span class="label label-success">댓글</span></h3>
<table class="table table-bordered">
   <tr><th>작성자</th><th>내용</th><th>등록일</th><th>권한</th></tr>
<c:forEach var="rb" items="${QnAList}">
   <tr><c:if test="${rb.del=='y' }">
         <th colspan="4">삭제 되었습니다</th>
      </c:if>
      <c:if test="${rb.del!='y'}">
         <td>${rb.replyer}</td>
         <td id="td_${rb.rno}">${rb.replytext}</td>
         <td>${rb.updatedate}</td>
         <td id="btn_${rb.rno}">
           <c:if test="${rb.replyer eq member.nick_name}">
               <input type="button" value="삭제" onclick="qDelete(${rb.rno},${rb.pgm_num})">
            </c:if>
         </td>
      </c:if></tr>
</c:forEach>
</table>
</div>
</body>
</html>