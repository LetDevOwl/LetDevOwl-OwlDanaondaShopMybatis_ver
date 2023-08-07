<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록 조회</title>
<link rel="stylesheet" href="/resources/css/notice/listCss.css" />
</head>
<body>
	<header>
		<div class="header">
			<div class="category">
				<details>
					<summary></summary>
					<ul>
						<li><a href="/products/productList.do">
								<h3>PC주요부품</h3>
						</a></li>
						<li><a href="/products/productList.do">
								<h3>PC저장장치</h3>
						</a></li>
						<li><a href="/products/productList.do">
								<h3>모니터/사운드</h3>
						</a></li>
						<li><a href="/products/productList.do">
								<h3>PC주변기기</h3>
						</a></li>
						<li><a href="/products/productList.do">
								<h3>복합기/프린터/소프트웨어</h3>
						</a></li>
						<li><a href="/notice/list.do">
								<h3>공지사항</h3>
						</a></li>
					</ul>
				</details>
			</div>
			<div class="logoImg">
				<img src="/resources/images/computet_icon.png" />
			</div>
			<a href="/index.jsp">
				<div class="title">DANAONDA SHOP</div>
			</a>
			<div class="login_register_box">
				<c:if test="${userId ne null }">
					<a href="/user/logout.do" class="logout" style="margin-right: 8px">로그아웃</a>
					<div class="vertical_devider"></div>
					<a href="/user/mypage.do" class="myPage">마이페이지</a>
				</c:if>
				<c:if test="${userId eq null }">
					<a href="/user/login.do" class="login">로그인</a>
					<div class="vertical_devider"></div>
					<a href="/user/register.do" class="login">회원가입</a>
				</c:if>
			</div>
		</div>
	</header>
	<main>
		<hr />
		<div class="noticeMain">
			<div class="noticeList">
				<h1>공지사항 목록</h1>
				<table>
					<colgroup>
						<col width="10%">
						<col width="35%">
						<col width="10%">
						<col width="25%">
						<col width="10%">
					</colgroup>
					<thead>
						<tr>
							<th>글번호</th>
							<th>글제목</th>
							<th>글쓴이</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="notice" items="${nList}">
							<tr>
								<td>${notice.noticeNo }</td>
								<td><a
									href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject }</a></td>
								<td>${notice.noticeWriter }</td>
								<td>${notice.noticeDate }</td>
								<td>${notice.viewCount }</td>
							</tr>
						</c:forEach>
						<tr>
							<td colspan="5" align="center">${pageNavi }</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="noticeInsert">
				<a href="/notice/insert.do">글쓰기</a>
			</div>
		</div>
	</main>
	<footer></footer>
</body>
</html>