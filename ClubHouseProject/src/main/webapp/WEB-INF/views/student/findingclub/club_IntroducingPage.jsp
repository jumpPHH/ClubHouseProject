<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="/cbh/resources/css/NewFile.css">
<link rel="stylesheet" href="/cbh/resources/css/findingclub.css">
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
	<img style="position:absolute; left:.5%; top:3%; height: 8vh" src="../../resources/logo.png">

	<div class="container-fluid">
		<div class="row" style="height: 7vh;">
			<div class="col text-end">
		
				<span style="cursor: pointer; font-size: 1.8vh" onclick="location.href='/cbh/staff/login/staff_LogoutProcess'">로그아웃</span>
		
			</div>
		</div>
	</div>

<div style="background: black; position:absolute; height: 3.5vh; width: 100vw; top: 10.5%"></div>
         
               
<div style="position: absolute; top: 10.5%; left: 1.5%; height: 89.5vh; width: 12vw;">

		<div class="text-center pe-0 mx-0"
		    style="background-color: #C4073D; height: 9vh; color: white; display: flex; align-items: center; justify-content: center;">
		    <p class="mb-0" id="bigMenuText" style="font-weight: bold">Club Activity</p>
		</div>
		
		<div style="border:1px solid #d9d9d9; background-color: #f8f9fa" id="sideBar">
			<ul style="list-style: none;">
				<li style="margin-top: 1vh; margin-bottom: 1vh">
					<!-- 아래 div 내부 전부 복사 -->
					<div style="background:linear-gradient( to right, #d95d84 , #e8d8dd ); margin-right: 1.0vw; padding-left:1vw; border-radius: 5vh; color:white; font-weight: bold;">동아리관리</div>
					<ul>
						<li>
							<!-- div태그 style 아래랑 교환, i태그도 교환 -->
							<div style="font-weight: bold;color: #bf1f51;letter-spacing: 0;"onclick="location.href='/cbh/student/findingclub/mainPage'" ><i class="bi bi-check-lg"></i> 동아리찾기</div>
						</li>
					</ul>
				</li>
<!-- 				<li class="border-top my-2" style="padding: 0"></li> -->
				
				<li>
					<div>공지사항</div>
					<ul>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>공지사항</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>봉사공고</div></li>
					</ul>
				</li>
<!-- 				<li class="border-top my-2" style="padding: 0"></li> -->
				<li>
					<div>동아리 개설 신청</div>
					<ul>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>신청서작성</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>동아리신청상태</div></li>
					</ul>
				</li>
<!-- 				<li class="border-top my-2" style="padding: 0"></li> -->
				<li>
					<div>내 동아리</div>
					<ul>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>메인</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>확동계획서작성</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>자유게시판</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>동아리일정</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>회원관리</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>경비신청</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>경비관리</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>회비관리</div></li>
						<li><div style="cursor: pointer;"><i class="bi bi-dot"></i>동아리소개작성</div></li>
					</ul>
				</li>

				
				
			</ul>
		</div>	
</div>

<div style="position: absolute; left: 13.5%; width: 86.5%; top: 14vh; height:86vh;overflow-y: auto">
	<div class="container-fluid">
		<div class="row" >
			<div class="col">
				
				<!-- 여기다 작성하세요 -->
				<div class="row">
					<div class="col" id="content">
							<!-- 컨텐트 of 헤더 -->
							<div class="row page_title">
								<div class="col page_title_text">
									<span><img src="../../resources/img/student/findingclub/pageTitle.png"
										class="page_title_image"></span> <span>동아리 찾기</span>
								</div>
								<div class="col-3 text_align_right">
								</div>
							</div>
							<!-- 카테고리 제목 -->
							<div class="row">
								<div class="col text_align_center" style="margin-top:7vh">
									<h2 class="font_bold">공연예술분과</h2>
								</div>
							</div>
							<div><hr style="height:1px; color:gray;" class="mx-4"></div>
							
							<!-- 진짜 컨텐트 -->
							<div class="row px-4 mt-5">
								<!-- 타이틀 이미지 부분 -->
								<div class="col-4" >
									<img src="/uploadFiles/aaa.jpg" style="width:100%">
								</div>
								<!-- 동아리 발행연도, 연락처, 대표자명 등 정보 박스 -->
								<div class="col">
									<div class="row">
										<div class="col">
											동아리 이름 ${clubData.club_name }
										</div>
									</div>
									<div class="row">
										<div class="col">
											<div class="row">
												<div class="col">동아리 설립일자 <fmt:formatDate value="${clubData.club_estbl_dt }" pattern="yyyy-MM-dd"/> </div>
												<div class="col">동아리 회장 ${clubData.club_boss }</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- 동아리 설명 -->
							<div class="row px-4 mt-5">
								<div class="col">
									${clubData.club_description }
								</div>
							</div>
							<!-- 동아리 설명 이미지 -->
							<div class="row px-4 mt-5">
								<div class="col">
									<img src="uploadFiles/${clubData.club_dscrp_image }" style="width:100%">
								</div>
							</div>
							<!-- 동아리 가입신청 및 목록 돌아가기 버튼 -->
							<div class="row px-4 mt-5">
								<div class="col text_align_right">
									<button type="button" class="btn btn-danger" style="color:white" onclick="location.href='./club_requestJoinProcess?club_no=${clubData.club_no}'">가입신청</button>
									<button type="button" class="btn btn-primary" style="color:white" onclick="location.href='./clubs_Of_CategoryPage?club_category_no=${clubData.club_category_no}'">목록</button>
								</div>
							</div>
							
							<hr class="mt-3 px-4 mt-5" style="height:1px;">
							<div class="row">
								<div class="col text_align_right">
								
								</div>
							</div>							
						</div>
						<div class="col-2"><div id="clubCategoryNo" type="hidden">${clubCategoryNo }</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</div>
					
</body>
</html>