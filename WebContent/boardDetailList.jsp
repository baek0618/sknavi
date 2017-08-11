<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${board.board_id}번 게시물</title>
<script src="http://code.jquery.com/jquery-2.2.8.js"></script>
<script type="text/javascript">
	function improveLikeCnt(){
		document.Form.action="improveLikeCnt.do";
		document.Form.submit();
	}
	
	function addComment(){
		document.Form.action="writeComment.do";
		document.Form.submit();
	}
	
	function commentAlter(cnt){
// 		document.getElementById("comments"+ cnt).readOnly=true;
		document.Form.action="updateComment.do";
		document.Form.submit();
	}
	
	function commentRemove(){
		document.Form.action="deleteComment.do";
		document.Form.submit();
	}
</script>
</head>
<body>
	<h1>${board.board_id}번 게시물</h1>
	<form name="Form" method="post">
	<input type="hidden" id="boardId" name="boardId" value="${board.board_id}" />
		<table name="boardTable" border=1px; solid; height=200; width=1000;>
			<tr>
				<th>게시판 번호</th>
				<th>제목 </th>
				<th>조회수</th>
				<th>작성 날짜</th>
				<th><input type="button" name="likeButton" onClick="improveLikeCnt();" value="좋아요 ▲" /></th>
			</tr>
			<tr>
				<td align="center">${board.board_id}</a></td>
				<td align="center">${board.board_content}</td>
				<td align="center">${board.board_hit}</td>
				<td align="center">${board.board_date}</td>
				<td align="center">${board.board_like}</td>
			</tr>
			<tr>
				<th colspan="5">게시글 내용</th>
			</tr>
			<tr>
				<td align="center"  colspan="5" height=500>${board.board_content}</td>
			</tr>
		</table>
		<table name="pictureTable" border=1px solid; height=200; width=1000;>
			<tr>
				<th colspan="5"> 사 진</th>
			</tr>
			<tr>
				<td align="center" colspan="5" height=200>gg</td>
			</tr>
		</table>
		<h2>댓글</h2>
		<textarea name="bcontents" placeholder="댓글을 입력하세요" style="height:40px; width:800px"></textarea>
		<input type="button" name="writeCommentButton" onClick="addComment();" value="댓글 달기" style="height:40px; width:150px"/>
		
		<table name="tempTable" id="tempTable" border=1px; solid; width=1000;>
		<tr>
			<th>비고</th>
			<th>내용</th>
			<th>작성자</th>
			<th>작성날짜</th>
			<th>###</th>
		</tr>
		<c:forEach var="A" items="${comments}" varStatus="i">
		<tr>
			<td align="center"><input type="text" value="###"  readOnly/><input type="hidden" name="commentId" value="${A.comment_id}"/></td>
			<td align="center">
				<c:if test="${id==memberId}">
					<input type="text" name="comments" id="comments${i.index}" value="${A.comments}" readOnly/>
				</c:if>
				<c:if test="${id!=memberId}">
					<input type="text" name="comments" id="comments${i.index}" value="${A.comments}" />
				</c:if>
				<input type="button" name="commentAlterBtn" value="수정" onClick="commentAlter(${i.index});" />
			</td>
			<td align="center"><input type="text" name="memberId" value="${memberId}" readOnly/></td>
			<td align="center"><input type="text" name="commentDate" value="${A.comment_date}" readOnly/></td>
			<td align="center"><input type="button" name="commentRemoveBtn" value="삭제" onClick="commentRemove();" /></td>
		</tr>
		</c:forEach>
		</table>
	</form>
</body>
</html>