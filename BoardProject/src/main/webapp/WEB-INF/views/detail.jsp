<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<h2>detail</h2>
	<table class="table table-dark table-hover text-conter">
		<tr>
	<th>글번호</th>
	<th>작성자</th>
	<th>제목</th>
	<th>내용</th>
	<th>조회수</th>
	<th>작성시간</th>
	</tr>
	<tr>
	<td>${board.b_number}</td>
	<td>${board.b_writer}</td>
	<td>${board.b_title}</td>
	<td>${board.b_contents}</td>
	<td>${board.b_hits}</td>
	<td>${board.b_date}</td>
	</tr>
	</table>
</body>
</html>