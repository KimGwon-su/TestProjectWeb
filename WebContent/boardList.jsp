<%@page import="www.jcc.com.control.BoardControl"%>
<%@page import="www.jcc.com.vo.Board"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	Board board = new Board();
	BoardControl control = new BoardControl();
	List<Board> list = control.selectBoardList(board);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<link rel="stylesheet" href="CSS/board.css">
</head>
<body>
	<div class="board_list_wrap">
		<table class="board_list">
			<caption>게시판 목록</caption>
			<thead>
				<tr>
					<th>순서</th>
					<th>제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>best</th>
				</tr>
			</thead>
			<tbody>
				 <%for(int i=0 ; i<list.size() ; i++){ %>	
				<tr>
					<td><%=list.get(i).getId()%></td>
					<td class = "tit">
					<a href="./detail.jsp?id=<%=list.get(i).getId()%>"><%=list.get(i).getTitle()%></a>
					</td>
					
					<td><%=list.get(i).getWriter()%></td>
					<td><%=list.get(i).getMdate()%></td>
					<td><%=list.get(i).getViewcount()%></td>
				</tr>
				<%} %>	
			</tbody>
		</table>
	</div>
					<a href="./writeForm.jsp">글쓰기</a>
</body>
</html>