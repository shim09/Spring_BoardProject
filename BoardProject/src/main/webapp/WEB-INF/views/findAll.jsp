<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<h2>findAll.jsp</h2>
	<table class="table table-dark table-hover text-center">
	<tr>
	<th>글번호</th>
	<th>작성자</th>
	<th>제목</th>
	<th>내용</th>
	<th>조회수</th>
	<th>작성시간</th>
	</tr>
	<c:forEach items="${bList}" var="b">
	<tr>
	<td>${b.b_number}</td>
	<td>${b.b_writer}</td>
	<td>${b.b_title}</td>
	<td>${b.b_contents}</td>
	<td>${b.b_hits}</td>
	<td>${b.b_date}</td>
	<td><a href="detail?b_number=${b.b_number}">상세조회</a>
	</tr>
	</c:forEach>
	</table>
</body>
</html>