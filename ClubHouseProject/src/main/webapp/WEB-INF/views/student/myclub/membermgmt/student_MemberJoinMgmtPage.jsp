<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 동아리 동아리원 관리 페이지</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="/cbh/resources/css/student_MainPage.css">
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<script type="text/javascript">
	function updateApprove(target) {

		var club_stud_no = $(target).parent().children('.club_stud_no').text();

		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var result = JSON.parse(xhr.responseText);

			}
		}

		xhr.open("get",
				"/cbh/student/myclub/membermgmt/updateApprove?club_stud_no="
						+ club_stud_no);
		xhr.send();

		location.reload();
	}

	function deleteApprove(target) {

		var club_stud_no = $(target).parent().children('.club_stud_no').text();

		alert(club_stud_no);

		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var result = JSON.parse(xhr.responseText);

			}
		}

		xhr.open("get",
				"/cbh/student/myclub/membermgmt/deleteApprove?club_stud_no="
						+ club_stud_no);
		xhr.send();

		location.reload();
	}
</script>
</head>
<body>
	<jsp:include
		page="/WEB-INF/views/student_common/student_navigationvar.jsp"></jsp:include>

	<!-- 페이지 내용 부분 시작 (이 부분만 카피해서 사용할것. 카피 후 삭제) -->
	<div class="page-content p-5" id="content">
		<!-- 토글 버튼 -->
		<button id="sidebarCollapse box" type="button"
			class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4">
			<small
				class="text-uppercase font-weight-bold" >MENU</small>
		</button>

		<div class="card box"
			style="width: 100%; height: auto; border-radius: 2%;">
			<div class="dashboard-card-bottom">
				<!-- 실제 내용 -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-1"></div>

						<div class="col">
							<div class="row my-5">
								<div class="col">
									<i class="bi bi-person-video3"
										style="font-size: 40px; color: #EF1B3F;"></i> <span
										style="font-size: 30px;">회원 가입 관리</span>
								</div>
							</div>

							<div class="row my-5">
								<div class="col-2" style="text-align: center;">
									<a href="/cbh/student/myclub/membermgmt/student_MemberMgmtPage"
										style="font-size: 19px;">전체 회원 관리</a>
								</div>
								<div class="col-1" style="text-align: center;">|</div>
								<div class="col-2" style="text-align: center;">
									<a
										href="/cbh/student/myclub/membermgmt/student_MemberJoinMgmtPage"
										style="font-size: 19px;">가입 관리</a>
								</div>
								<div class="col"></div>
							</div>

							<div class="row">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">아이디</th>
											<th scope="col">이름</th>
											<th scope="col">가입신청일</th>
											<th scope="col">성별</th>
											<th scope="col"></th>
											<th scope="col"></th>
										</tr>
									</thead>

									<c:if test="${ApplicantMemberDataList.size() == 0}">
										<tbody>
											<tr>
												<th scope="row"></th>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</tbody>
									</c:if>

									<c:if test="${ApplicantMemberDataList.size() > 0}">
										<c:forEach begin="0"
											end="${ApplicantMemberDataList.size() -1}" var="i">
											<tbody>
												<tr>
													<td>${ApplicantMemberDataList[i].ApplicantMemberInfoVO.stud_id }</td>
													<td>${ApplicantMemberDataList[i].ApplicantMemberInfoVO.stud_name }</td>
													<td><fmt:formatDate
															value="${ApplicantMemberDataList[i].ApplicantMemberInfoVO.club_stud_appl_date }"
															pattern="yy.MM.dd" /></td>
													<td>${ApplicantMemberDataList[i].ApplicantMemberInfoVO.stud_gender }</td>
													<td><input type="text" class="btn btn-secondary"
														onclick="updateApprove(this)" value="가입 승인">
														<div hidden="hidden" class="club_stud_no">${ApplicantMemberDataList[i].ApplicantMemberInfoVO.club_stud_no}</div>
													</td>
													<td><input type="text" class="btn btn-danger"
														onclick="deleteApprove(this)" value="가입 거절">
														<div hidden="hidden" class="club_stud_no">${ApplicantMemberDataList[i].ApplicantMemberInfoVO.club_stud_no}</div>
													</td>
												</tr>


											</tbody>
										</c:forEach>
									</c:if>
								</table>
							</div>

							<div class="row my-5">
								<nav aria-label="Page navigation example">
									<ul class="pagination justify-content-center pagination-lg">
										<c:choose>
											<c:when test="${startPage <= 1}">
												<li class="page-item disabled"><a class="page-link"
													style="text-decoration-line: none; color: red;">◀</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item disabled"><a class="page-link"
													style="text-decoration-line: none; color: black;"
													href="/cbh/student/myclub/membermgmt/student_MemberJoinMgmtPage?pageNum=${startPage -1}">◀</a></li>
											</c:otherwise>
										</c:choose>

										<c:forEach begin="${startPage}" end="${endPage}" var="i">
											<c:choose>
												<c:when test="${i == currentPageNum}">
													<li class="page-item"><a class="page-link"
														style="text-decoration-line: none; color: blue; font-weight: 600;"
														href="/cbh/student/myclub/membermgmt/student_MemberJoinMgmtPage?pageNum=${i}">${i}</a></li>
												</c:when>
												<c:otherwise>
													<li class="page-item"><a class="page-link"
														style="text-decoration-line: none; color: black;"
														href="/cbh/student/myclub/membermgmt/student_MemberJoinMgmtPage?pageNum=${i}">${i}</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>

										<c:choose>
											<c:when test="${endPage >= totalPageCount }">
												<li class="page-item"><a class="page-link"
													style="text-decoration-line: none; color: red;">▶</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link"
													style="text-decoration-line: none; color: black;"
													href="/cbh/student/myclub/membermgmt/student_MemberJoinMgmtPage?pageNum=${endPage +1}">▶</a></li>
											</c:otherwise>
										</c:choose>

									</ul>
								</nav>
							</div>

						</div>

						<div class="col-1"></div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>