<%@page import="dao.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page = "../header.jsp" />
	<!-- 관리자 계정 -->
	<div class="alert alert-info" role="alert">
		<h6 class="display-6" style="padding-left:30px">회원 정보</h6>
	</div>
	
	<%
		ArrayList<UserObj> members = (new UserDAO()).getList();
	%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-6">고객 목록</h1>
		</div>
	</div>
	
		<div class = "container">
			<div class="row" align="center">
				<%
					for (UserObj member : members) {
				%>

				<%=member.getSid() %>
				<%=member.getSname() %>
				<%=member.getSemail() %>
				<a href="" class="btn btn-secondary" role="button">상세정보 &raquo;</a>		

			<%} %>
</div>
</div>
	
	<jsp:include page = "../footer.jsp" />
</body>
</html>