<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="/cbh/resources/css/NewFile.css">
<link rel="stylesheet" href="/cbh/resources/css/establishingclub.css">
<script src="https://code.jquery.com/jquery-3.6.1.js"
        integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
        crossorigin="anonymous">
</script>

<style type="text/css">
.tab {
	border: 1px solid white;
	border-bottom: 0px;
	background-color: black;
	color: white;
	width: auto;
	align-self: end;
	flex: 0 0 auto;
	border-radius: 0.3rem 0.3rem 0% 0%;
}

.scroll-container {
	display: flex;
	flex-wrap: no-wrap;
	overflow-x: hidden;
	overflow-y: hidden;
	align-items: end;
}

.MP {
	padding-left: 2.2rem;
}

#bigMenuText{
	font-size: 2.5vh;
}
#sideBar>ul>li{
	font-size: 2vh;
	padding-left: 1.0vw;
}
#sideBar>ul>li>div{
	background:linear-gradient( to right, #d6d6d6 , #ededed );
	margin-right: 1.0vw;
	padding-left:1vw;
	border-radius: 5vh;
	color:#969696;
	font-weight: bold;
}
#sideBar>ul>li>div{
	margin-bottom: .2vh;
	margin-right: 1.0vw;
	padding-left:1vw;
	border-radius: 5vh;
}
#sideBar li ul li{
	font-size: 1.8vh;
	list-style-type: disc;
	list-style: none;
	margin-bottom: .5vh;
	color: #828282;
}
#sideBar li ul li:hover{
	font-weight: bold;
	color: #bf1f51;
	letter-spacing: 0.05vw;
}
#sideBar ul{
	margin-bottom: 1.5vh;
	padding-left: 0;
}
#sideBar li ul{
	padding-left: 1vw;
	margin-bottom: 2.2vh;
}
.bi-chevron-right{
	
}
</style>


<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/student_common/student_header.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/student_common/student_sidevar.jsp"></jsp:include>


<div style="position: absolute; left: 13.5%; width: 86.5%; top: 14vh; height:86vh;overflow-y: auto">
	<div class="container-fluid">
		<div class="row" >
			<div class="col">
				
				<!-- 여기다 작성하세요 -->
				<div class="row">
					<div class="col" id="content">
							<!-- 컨텐트 of 헤더 -->
							<div class="row page_title">
								<div class="col-4 page_title_text">
									<span><img src="/cbh/resources/img/student/myclub/clubactivities/contentTitleLogo.png/"
									 style="margin-left: 0.5em; width: 2.1em; height: 1.5em"></span> <span style="margin-left:0.3em;">활동내역 작성</span>
								</div>
								<div class="col text_align_left pt-2" style="color:red">
									* 표시가 있는 항목들은 필수 입력항목입니다.
								</div>
							</div>
							
							
							<!-- 신청서 양식 시작 -->
							<form action="./student_writeClubActProcess" method="post">
							<div class="row px-4 mt-2" style="border: 1px solid #e2dede; border-radius:5px;">
								<div class="col" >
									<!-- 작성자 -->
									<div class="row p-3 mt-2">
										<div class="col-3 pt-2">
											<span style="color:red;">*</span> 작성자
										</div>
										<div class="col pt-2">
											동아리 회장
										</div>
									</div>
									<hr style="height:1px; color:#adb5bd">
									<!-- 활동내역 제목. -->
									<div class="row p-3 mt-2">
										<div class="col-3 pt-2">
											<span style="color:red;">*</span> 제목
										</div>
										<div class="col">
											<input type="text" class="form-control" name="club_act_title">
										</div>
									</div>
									<hr style="height:1px; color:#adb5bd">
									
									<!-- 동아리 설명 -->
									<div class="row p-3">
										<div class="col-3">
											<span style="color:red;">*</span> 동아리 설명
										</div>
										<div class="col">
											<div class="row">
												<div class="col text_align_left">
													<textarea class="form-control" style="height:15vh" name="club_act_content"></textarea>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" value="${clubNo }" name="club_no">
							
							<div class="row mt-5">
								<div class="col text_align_right">
									<button class="btn" style="background-color:gray; color:white; width:15em; height:3em;">뻐튼</button>
								</div>
								<div class="col">
									<button type="submit" class="btn" style="background-color:#c4073d; color:white; width:15em; height:3em;">제출하기</button>
								</div>
							</div>
							</form>
							<hr class="mt-3 hrSetting">
							<div class="row">
								<div class="col text_align_right">
								
								</div>
							</div>							
						</div>
						<div class="col-2"></div>
						</div>
				</div>
			</div>
		</div>
	</div>
					
</body>
</html>