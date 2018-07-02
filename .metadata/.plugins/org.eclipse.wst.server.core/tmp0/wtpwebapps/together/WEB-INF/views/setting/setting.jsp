<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:set var="path" value="${pageContext.request.contextPath}"/>
<link href="${path}/css/bootstrap.min.css" rel="stylesheet">
<link rel="shortcut icon" href="images/pavi.png" type="image/x-icon">
<link rel="icon" href="images/pavi.png" type="image/x-icon">
<script src="${path}/js/jquery.js"></script>
<script src="${path}/js/bootstrap.min.js"></script>
<style>	
.err { color: red; font-size: 20px; }	
* {	
	margin:0 auto;
	padding:0;
	font-size:14px;}
a{	text-decoration:none; }
ul{	clear:both; }
ul:nth-child(2) {
	clear:none;
	float:right }
li {list-style:none;}
#container {
	position:absolute !important;
	width:100%;
	min-height: 100%;
	padding-bottom: 150px;}
#container #container {
	position: relative;
	height: 100%;
	padding-bottom: 20px;
}
.hid {	display:none;}
</style>