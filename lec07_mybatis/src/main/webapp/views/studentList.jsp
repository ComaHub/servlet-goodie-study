<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@page import="java.util.List"%>

<%@page import="com.gn.dto.Student"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>학생 목록 조회</title>
</head>

<body>
	<h2>===== 학생 리스트 =====</h2>
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>나이</th>
			</tr>
		</thead>
			
		<tbody>
			<c:forEach var="student" items="${ studentList }">
				<tr onclick="location.href='/student/detail?no=${student.studentNo}'">
					<td>${ student.studentNo }</td>
					<td>${ student.studentName }</td>
					<td>${ student.studentAge }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	<a href="<c:url value='/student/insert' />">학생 등록</a>
</body>

</html>