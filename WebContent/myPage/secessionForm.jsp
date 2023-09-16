<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원탈퇴</title>
	<link rel="stylesheet" href="/myPage/css/secessionForm.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		function ck_form() {
			var form = document.change_pwd_form;
		        
			if(!$("#secessionPwdText").val()) {
				alert("현재 비밀번호를 입력해 주세요.");
				return false;
			}
		}
	</script>
</head>

<body id="secessionBg">
	<%
		String pwd_ck = request.getParameter("pwd_ck");
		if(pwd_ck != null) {
				out.println("<script>alert('비밀번호가 틀립니다.');</script>");
		}
	%>
	
	<form method="post" name="secession_form" action="secession.do" onsubmit="return ck_form()">
		<div id="secessionWrap">
			<img src="/images/secession.svg" id="secessionImg"/>
			<div id="secessionTit">회원탈퇴</div>
			<div id="secessionSubTit">그동안 서비스를 이용해 주셔서 감사합니다.</div>
			
			<div id="secessionPwdTit">비밀번호 확인</div>
			<input type="password" id="secessionPwdText" name="pwd" placeholder="비밀번호 확인">
			
			<div id="secessionWarningWrap">
				<img src="/images/warning.svg" id="secessionWarningImg"/>
				<div id="secessionWarning">탈퇴 후 학교측에 전달하는 상담기록을 제외한 회원정보 및 서비스 이용 기록이 삭제되며 복구가 불가능합니다.</div>
			</div>
			
			<div id="secessionBtnWrap">
				<input class="secessionBtn" id="secessionBtn" type="submit" value="회원탈퇴" />
				<input class="cancelBtn" id="cancelBtn" type="button" onclick="location.href='myPage.do'" value="취소" />
			</div>
		</div>
	</form>
</body>
</html>