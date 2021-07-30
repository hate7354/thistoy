<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<title>Document</title>
</head>
<body>
	ID : ${authInfo.userName}로 로그인 성공~
	<script type="text/javascript">
		var naver_id_login = new naver_id_login("5sh4TrG6DyRbb_FeQOmr",
				"http://localhost:9090/login/navercall");
		// 접근 토큰 값 출력
		alert(naver_id_login.oauthParams.access_token);
		// 네이버 사용자 프로필 조회
		naver_id_login.get_naver_userprofile("naverSignInCallback()");
		// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
		function naverSignInCallback() {
			alert(naver_id_login.getProfileData('email'));
			alert(naver_id_login.getProfileData('name'));
			alert(naver_id_login.getProfileData('phone'));

		}
	</script>
</body>

</html>