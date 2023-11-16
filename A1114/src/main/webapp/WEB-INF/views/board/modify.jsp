<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="root" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>우리반 화이팅</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h2>화이팅♥</h2>
		<div class="panel-body">
		<form action="${root }/board/modify" method="post">
			<table class="table table-bordered">
				<tr>
					<td>번호</td>
					<td><input type="text" class="form-control" name="idx"
						readonly="readonly" value="${vo.idx }"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" class="form-control" name="title" value="<c:out value='${vo.title }'/>"/> </td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea rows="10" class="form-control" name="content"><c:out value='${vo.content }'/></textarea></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" class="form-control" name="writer"
						readonly="readonly" value="${vo.writer }"</td>
				</tr>
				
				<tr>
					<td colspan="2" style="text-align: center;">
					<c:if test="${!empty mem && mem.memberID eq vo.memberID }">
						<button type="submit" class="btn btn-md btn-primary">수정</button>
						<button type="button" class="btn btn-md btn-success" onclick="location.href='${root}/board/remove?idx=${vo.idx }'">삭제</button>
					</c:if>
					<c:if test="${empty mem || mem.memberID ne vo.memberID }">
						<button type="submit" class="btn btn-md btn-primary" disabled="disabled">수정</button>
						<button type="button" class="btn btn-md btn-success" disabled="disabled" onclick="location.href='${root}/board/remove?idx=${vo.idx }'">삭제</button>
					</c:if>
						<button type="button" class="btn btn-md btn-info" onclick="location.href='${root}/board/list?idx=${vo.idx }'">목록</button>
					</td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>
</html>