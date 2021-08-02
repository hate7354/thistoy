<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<title>Document</title>
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/mypage_wishlist.css?ver=1">
<!-- <script src="js/mypage.js" defer></script> -->
<script src="https://kit.fontawesome.com/a216194d9c.js"
	crossorigin="anonymous"></script>
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
</head>

<body>
	<%@ include file="../includes/header.jsp"%>
	<!-- ------------마이페이지---------- -->
	<section>
		<%@ include file="../includes/mypage.jsp"%>
			<div class="gridContainer">
				<c:forEach var="ws" items="${wishList}">
					<c:set var="i" value='${fn:indexOf(ws.productMainImg,",")}' />
					<c:set var="mimg"
						value="${fn:substring(ws.productMainImg,0,i)}" />
					<div class="gridItem">
						<a href="/mypage/wishdelete?pc=${ws.productCode}"><i class="fas fa-times"></i></a><a
							href="/product/detail_main?pc=${ws.productCode}"> <img
							src="/upload/product/main/${mimg}" alt="" class="wishImg"/>
						</a>
						<div class="product_info">
							<a href="/product/detail_main?pc=${ws.productCode}"> <span
								class="product_name"><span class="product_logo">This
										Toy </span>${ws.productName}</span>
							</a>
							<div class="product_price">가격 : ${ws.productPrice}원</div>
							<div class="product_deliver_price">배송비 : 3,000원</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- -----------푸터------------- -->
	<%@ include file="../includes/footer.jsp"%>
</body>

</html>