<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>Document</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/mypage_sellbox.css">
<link rel="stylesheet" href="/css/admin2.css">
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>

	<!-- ------------ 관리자 페이지 ---------- -->
	<section>
		<div>
			<h2 class="title">관리자 페이지</h2>
		</div>

		<div class="line"></div>
		<div class="mypage_inner">
			<div class="inner">
				<a href="/admin/admin" class="item">회원 관리</a> <a
					href="/admin/admin_delivery" class="item">배송 관리</a>
			</div>
			<div style="position: relative;">
				<i class="fas fa-caret-left"></i>
			</div>

			<div class="container">
				<table class="delete_table">
					<!-- 표 카테고리 -->
					<tr class="table_head">
						<td class="member_date">가입날짜</td>
						<td class="member_orderCode">주문번호</td>
						<td class="member_name">수령자</td>
						<td class="member_phone">핸드폰</td>
						<td class="member_email">수량</td>
						<td class="member_address">주소</td>
						<td class="member_situation">배송현황</td>
						<td class="member_delete"></td>
					</tr>

					<!-- 회원정보 -->
					<c:forEach var="admin" items="${admin}">

						<form action="/admin/update/" method="post" class="admin_update">
							<tr class="table_data">
								<td class="member_date"><fmt:formatDate
										value="${admin.orderDate}" pattern="yy-MM-dd" /></td>
								<input type="hidden" value="<c:out value="${admin.orderCode}" />" name="orderCode"/>
								<td class="member_orderCode"><c:out value="${admin.orderCode}" /></td>
								<td class="member_name">
									<c:choose>
										<c:when test="${admin.newuserName == null}">
											<c:out value="${admin.userId }" />
										</c:when>
										<c:otherwise>
											<c:out value="${admin.newuserName}" />
										</c:otherwise>
									</c:choose>
									</td>
								<td class="member_phone">
									<c:choose>
										<c:when test="${admin.newuserTel == Null}">
											<c:out value="${admin.userTel}" />
										</c:when>
										<c:otherwise>
											<c:out value="${admin.newuserTel}" />
										</c:otherwise>
									</c:choose>
									</td>
									
								<td class="member_email"><c:out value="${admin.orderEa}" /></td>
								<td class="member_address"><c:out value="${admin.orderAddress}" /></td>
								<td class="member_situation">
								
								<select name="orderSituation">
									<option value="<c:out value="${admin.orderSituation}"/>">-<c:out value="${admin.orderSituation}" />-</option>
									<option value="배송대기">배송대기</option>
									<option value="배송중">배송중</option>
									<option value="배송완료">배송완료</option>
								</select>
								
								</td>
								<td class="update"><button class="update_button">업데이트</button></td>
							</tr>
						</form>

					</c:forEach>
				</table>
				<div class="paging">
					<div class="middle_page">
						<ul>
							<li><a href="/admin/admin_delivery?p=1"> <i
									class="fas fa-angle-double-left"></i></a></li>
							<li><a href="/admin/admin_delivery?p=${orderListPaging.startPage-1}">
									<i class="fas fa-angle-left"></i>
							</a></li>

							<c:forEach var="page" begin="${orderListPaging.startPage}"
								end="${orderListPaging.endPage}">
								<li><a href="/admin/admin_delivery?p=${page}"
									class="${orderListPaging.pageNum==page? 'pageNum':''}">${page}</a></li>
							</c:forEach>

							<li><a href="/admin/admin_delivery?p=${orderListPaging.endPage+1}">
									<i class="fas fa-angle-right"></i>
							</a></li>
							<li><a href="/admin/admin_delivery?p=${orderListPaging.realEnd}">
									<i class="fas fa-angle-double-right"></i>
							</a></li>
						</ul>
					</div>
					<div class="right_page">
						<a href="#"></a>
					</div>
				</div>
			</div>
	</section>
	<!-- -----------푸터------------- -->
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>
<script>
	$(document).on('click', '.update_button', function() {
		let ok = confirm('수정하시겠습니까?');
		let index = $('.update_button').index(this);
		if (ok == true) {
			$('.admin_update:eq(' + index + ')').submit();
		}
	});
	
		
</script>