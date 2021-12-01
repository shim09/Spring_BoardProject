<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>insert.jsp</h2>
	<form action="insert" method="post">
	작성자 : <input type="text" name="b_writer" id="b_writer">
	글 비밀번호 <input type="text" name="b_password" id="b_password">
	제목 <input type="text" name="b_title" id="b_title">
	내용 <input type="text" name="b_contents" id="b_contents">
	<input type="submit" value="글 등록">
	

	</form>

</body>
</html>