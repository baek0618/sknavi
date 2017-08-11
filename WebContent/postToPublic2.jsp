<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board to upload</title>
<script type="text/javascript">

	function moveToPost(){
		document.post.action = "moveToPost.do";
		document.post.submit();
	}
	
</script>
</head>
<body>
	<form name="post" method="post">
		<table>
		<tr>
			<th>게시판 번호</th>
			<th>제목 </th>
			<th>조회수</th>
			<th>작성 날짜</th>
			<th>좋아요</th>
		</tr>
		<c:forEach var="A" items="${board}">
			<tr>
				<td align="center"><a href="viewDetailBoard.do?board_id=${A.board_id}">${A.board_id}</td>
				<td align="center">제목</td>
				<td align="center">${A.board_hit}</td>
				<td align="center">${A.board_date}</td>
				<td align="center">${A.board_like}</a></td>
			</tr>
		</c:forEach>
		</table>
		<input type="button" name="post" value="일정 공유하기" onClick="moveToPost()" />
<!-- 			<input type="submit" value="일정 공유하기" /> -->
	</form>
</body>
</html>