<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap')
	;

.box{
	background-color: white;
	border-radius: 1rem;
	box-shadow: 0 .125rem .25rem rgba(0,0,0,.075);
}
.vertical-nav {
  min-width: 17rem;
  width: 17rem;
  height: 100vh;
  position: fixed;
  top: 0;
  left: 0;
  box-shadow: 3px 3px 10px rgba(0, 0, 0, 0.1);
  transition: all 0.4s;
}

.page-content {
  width: calc(100% - 17rem);
  margin-left: 17rem;
  transition: all 0.4s;
}

/* for toggle behavior */

#sidebar.active {
  margin-left: -17rem;
}

#content.active {
  width: 100%;
  margin: 0;
}

@media (max-width: 768px) {
  #sidebar {
    margin-left: -17rem;
  }
  #sidebar.active {
    margin-left: 0;
  }
  #content {
    width: 100%;
    margin: 0;
  }
  #content.active {
    margin-left: 17rem;
    width: calc(100% - 17rem);
  }
}


body {
  background: #ededed;
  background: -webkit-linear-gradient(to right, #599fd9, #c2e59c);
  background: linear-gradient(to right, #599fd9);
  min-height: 100vh;
  overflow-x: hidden;
  font-family: 'Noto Sans KR', sans-serif;
}

.separator {
  margin: 3rem 0;
  border-bottom: 1px dashed #fff;
}

.text-uppercase {
  letter-spacing: 0.1em;
}

.text-gray {
  color: #aaa;
}


</style>
<script type="text/javascript">
$(function() {
	  // Sidebar toggle behavior
	  $('#sidebarCollapse').on('click', function() {
	    $('#sidebar, #content').toggleClass('active');
	  });
	});
</script>

<!-- 사이드바 시작 -->
<div class="vertical-nav bg-white" id="sidebar">
  <div class="py-3 px-3 mb-2 bg-light">
    <div class="media d-flex align-items-center"><img src="https://bootstrapious.com/i/snippets/sn-v-nav/avatar.png" alt="..." width="65" class="mr-3 rounded-circle img-thumbnail shadow-sm">
      <div class="media-body ps-2">
        <h4 class="m-0">박한희</h4>
        <p class="font-weight-light text-muted mb-0">과장</p>
      </div> 
      <span style="cursor: pointer; font-size: 1.3vh" class="ms-4 font-weight-bold btn btn-light bg-white rounded-pill shadow-sm" 
      onclick="location.href='/cbh/student/login/student_LogoutProcess'">로그아웃</span>
    </div>
  </div>

  <p class="text-gray font-weight-bold text-uppercase px-3 small pb-2 mb-0">기준정보관리</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item ps-1">
      <a href="/cbh/staff/division/staff_DivisionPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-upc mr-3 text-primary fa-fw"></i>
                코드관리
            </a>
    </li>
  </ul>

   <p class="text-gray font-weight-bold text-uppercase px-3 small pb-2 mb-0">전자결재</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item ps-1">
      <a href="/cbh/staff/approval/staff_WriteDraftPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-pencil-square mr-3 text-primary fa-fw"></i>
                기안서작성
            </a>
    </li>
     <li class="nav-item ps-1">
      <a href="/cbh/staff/approval/staff_DraftManagementPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi-card-list mr-3 text-primary fa-fw"></i>
                기안서통합관리
            </a>
    </li>
  </ul>

  
   <p class="text-gray font-weight-bold text-uppercase px-3 small pb-2 mb-0">학생</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item ps-1">
      <a href="/cbh/staff/studentSearch/staff_StudentSearchPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-pencil-square mr-3 text-primary fa-fw"></i>
                학생조회
            </a>
    </li>
    
    <li class="nav-item ps-1">
      <a href="/cbh/staff/studentNotice/staff_StudentNoticePage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-ui-checks mr-3 text-primary fa-fw"></i>
                학생공지사항
            </a>
    </li>
  </ul>
  
   <p class="text-gray font-weight-bold text-uppercase px-3 small pb-2 mb-0">동아리</p>

  <ul class="nav flex-column bg-white mb-0">
 <li class="nav-item ps-1">
      <a href="/cbh/staff/applyClub/applyClubPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-house-door-fill mr-3 text-primary fa-fw"></i>
            	동아리신청
            </a>
    </li>
    <li class="nav-item ps-1">
      <a href="/cbh/student/myclub/main/student_MainPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-house-door-fill mr-3 text-primary fa-fw"></i>
                동아리관리
            </a>
    </li>
    
    <li class="nav-item ps-1">
      <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-pencil-square mr-3 text-primary fa-fw"></i>
                동아리맴버관리
            </a>
    </li>
    
    <li class="nav-item ps-1">
      <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-journal-text mr-3 text-primary fa-fw"></i>
                동아리경비관리
            </a>
    </li>
    
    <li class="nav-item ps-1">
      <a href="#" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-layout-text-sidebar mr-3 text-primary fa-fw"></i>
                동아리경비내역
            </a>
    </li> 
    
    <li class="nav-item ps-1">
      <a href="/cbh/student/myclub/membermgmt/student_MemberMgmtPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-person-square mr-3 text-primary fa-fw"></i>
                동아리경비접수
            </a>
    </li>
    
  </ul>
     <p class="text-gray font-weight-bold text-uppercase px-3 small pb-2 mb-0">봉사관리</p>

  <ul class="nav flex-column bg-white mb-0">
    <li class="nav-item ps-1">
      <a href="/cbh/staff/volunteer/staff_VlntrNotiPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-pencil-square mr-3 text-primary fa-fw"></i>
                봉사공고작성
            </a>
    </li>
    
    <li class="nav-item ps-1">
      <a href="/cbh/staff/volunteer/staff_VlntrControlPage" class="nav-link text-dark font-italic bg-light">
                <i class="fa bi bi-ui-checks mr-3 text-primary fa-fw"></i>
                봉사시간관리
            </a>
    </li>
  </ul>
</div>
<!-- 사이드바 끝 -->

