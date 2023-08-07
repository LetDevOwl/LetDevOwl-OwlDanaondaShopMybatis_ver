<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
            <div class="header">
                <div class="category">
                    <details>
                        <summary></summary>
                        <ul>
                            <li>
                                <a href="/products/productList.do">
                                    <h3>PC주요부품</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/products/productList.do">
                                    <h3>PC저장장치</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/products/productList.do">
                                    <h3>모니터/사운드</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/products/productList.do">
                                    <h3>PC주변기기</h3>
                                </a>
                            </li>
                            <li>
                                <a href="/products/productList.do">
                                    <h3>복합기/프린터/소프트웨어</h3>
                                </a>
                            </li>
                        </ul>
                    </details>
                    <!-- <img src="../../src/asset/icon/item/icon.svg" /> -->
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