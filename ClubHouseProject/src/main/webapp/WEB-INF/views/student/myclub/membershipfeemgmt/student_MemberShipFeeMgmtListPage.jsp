<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회비관리 내역 페이지</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="/cbh/resources/css/student_MainPage.css">

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>

<script type="text/javascript">

	
	function buttonClick(target) {

		var club_fee_no = $(target).next().text();

		var xhr = new XMLHttpRequest(); 
		xhr.onreadystatechange = function () {
			if(xhr.readyState == 4 && xhr.status == 200){
				var jsonObj = JSON.parse(xhr.responseText);
					
					var memberShipFeeMgmtDetail = jsonObj.data;
					var income_amount = jsonObj.income_amount;
					var using_amount = jsonObj.using_amount;
					var club_fee_use_date = jsonObj.club_fee_use_date;
					
					var modalBody = document.getElementById("modal-body");
					modalBody.innerHTML = ""; 
					
					var rowBox = document.createElement("div");
					rowBox.classList.add("row");
					modalBody.appendChild(rowBox);

					var col1Start = document.createElement("div");
					col1Start.classList.add("col-1");
					rowBox.appendChild(col1Start);

					var col = document.createElement("div");
					col.classList.add("col");
					rowBox.appendChild(col);

					var divisionBox = document.createElement("div");
					divisionBox.classList.add("mb-1");
					col.appendChild(divisionBox);

					var divisionLabel = document.createElement("label");
					divisionLabel.setAttribute("for","message-text");
					divisionLabel.classList.add("col-form-label");
					divisionLabel.innerText = "구 분";
					divisionBox.appendChild(divisionLabel);

					var divisionSelect = document.createElement("select");
					divisionSelect.classList.add("form-select");
					divisionSelect.setAttribute("aria-label","Default select example");
					divisionBox.appendChild(divisionSelect);

					var optionSeleted = document.createElement("option");
					optionSeleted.setAttribute("selected","selected");
					optionSeleted.innerText = memberShipFeeMgmtDetail.club_fee_division;
					divisionSelect.appendChild(optionSeleted);
					
					var option1= document.createElement("option");
					option1.setAttribute("value","경조사비");
					option1.innerText="경조사비";
					divisionSelect.appendChild(option1);
					
					var option2= document.createElement("option");
					option2.setAttribute("value","회식비");
					option2.innerText="회식비";
					divisionSelect.appendChild(option2);
					
					var option3= document.createElement("option");
					option3.setAttribute("value","회비");
					option3.innerText="회비";
					divisionSelect.appendChild(option3);
					
					var option4= document.createElement("option");
					option4.setAttribute("value","가입비");
					option4.innerText="가입비";
					divisionSelect.appendChild(option4);
					
					var detailBox = document.createElement("div");
					detailBox.classList.add("mb-1");
					col.appendChild(detailBox);

					var detailLabel = document.createElement("label");
					detailLabel.setAttribute("for","message-text");
					detailLabel.classList.add("col-form-label");
					detailLabel.innerText = "상세 내역";
					detailBox.appendChild(detailLabel);	

					var detailInput = document.createElement("input");
					detailInput.setAttribute("type","text");
					detailInput.setAttribute("value",memberShipFeeMgmtDetail.club_fee_detail);
					detailInput.classList.add("form-control");
					detailBox.appendChild(detailInput);

					var incomeAmountBox = document.createElement("div");
					incomeAmountBox.classList.add("mb-1");
					col.appendChild(incomeAmountBox);

					var incomeAmountLabel = document.createElement("label");
					incomeAmountLabel.setAttribute("for","message-text");
					incomeAmountLabel.classList.add("col-form-label");
					incomeAmountLabel.innerText = "수 입";
					incomeAmountBox.appendChild(incomeAmountLabel);	

					var incomeAmountInput = document.createElement("input");
					incomeAmountInput.setAttribute("type","text");
					incomeAmountInput.setAttribute("value",income_amount);
					incomeAmountInput.classList.add("form-control");
					incomeAmountBox.appendChild(incomeAmountInput);

					var usingAmountBox = document.createElement("div");
					usingAmountBox.classList.add("mb-1");
					col.appendChild(usingAmountBox);

					var usingAmountLabel = document.createElement("label");
					usingAmountLabel.setAttribute("for","message-text");
					usingAmountLabel.classList.add("col-form-label");
					usingAmountLabel.innerText = "지 출";
					usingAmountBox.appendChild(usingAmountLabel);	

					var usingAmountInput = document.createElement("input");
					usingAmountInput.setAttribute("type","text");
					usingAmountInput.setAttribute("value",using_amount);
					usingAmountInput.classList.add("form-control");
					usingAmountBox.appendChild(usingAmountInput);

					var useDateBox = document.createElement("div");
					useDateBox.classList.add("mb-1");
					col.appendChild(useDateBox);

					var useDateLabel = document.createElement("label");
					useDateLabel.setAttribute("for","message-text");
					useDateLabel.classList.add("col-form-label");
					useDateLabel.innerText = "사용 날짜";
					useDateBox.appendChild(useDateLabel);	

					var useDateInput = document.createElement("input");
					useDateInput.setAttribute("type","date");
					useDateInput.setAttribute("value",club_fee_use_date);
					useDateInput.classList.add("form-control");
					useDateBox.appendChild(useDateInput);

					var otherDetailBox = document.createElement("div");
					otherDetailBox.classList.add("mb-1");
					col.appendChild(otherDetailBox);

					var otherDetailLabel = document.createElement("label");
					otherDetailLabel.setAttribute("for","message-text");
					otherDetailLabel.classList.add("col-form-label");
					otherDetailLabel.innerText = "사용 날짜";
					otherDetailBox.appendChild(otherDetailLabel);	

					var otherDetailInput = document.createElement("input");
					otherDetailInput.setAttribute("type","text");
					otherDetailInput.setAttribute("value",memberShipFeeMgmtDetail.club_fee_other_detail);
					otherDetailInput.classList.add("form-control");
					otherDetailBox.appendChild(otherDetailInput);

					var col1End = document.createElement("div");
					col1End.classList.add("col-1");
					rowBox.appendChild(col1End);

					var modalFooter = document.getElementById("modal-footer");
					modalFooter.innerHTML = ""; 
					
					var closeButton = document.createElement("button");
					closeButton.setAttribute("type","button");
					closeButton.setAttribute("data-bs-dismiss","modal");
					closeButton.classList.add("btn");
					closeButton.classList.add("btn-secondary");
					closeButton.innerText = "닫기";
					modalFooter.appendChild(closeButton);

					var saveButton = document.createElement("button");
					saveButton.setAttribute("onclick","saveButton(club_fee_no)");
					saveButton.classList.add("btn");
					saveButton.classList.add("btn-primary");
					saveButton.innerText = "저장";
					modalFooter.appendChild(saveButton);

					var deleteButton = document.createElement("button");
					deleteButton.setAttribute("onclick","deleteButton(club_fee_no)");
					deleteButton.classList.add("btn");
					deleteButton.classList.add("btn-danger");
					deleteButton.innerText = "삭제";
					modalFooter.appendChild(deleteButton);

				}
			}
		xhr.open("get" , "/cbh/student/myclub/membershipfeemgmt/student_MemberShipFeeMgmtDetail?club_fee_no=" + club_fee_no); //리퀘스트 세팅..
		//xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded"); //Post
		xhr.send(); //AJAX로 리퀘스트함..
	}

</script>

</head>
<body>
	<jsp:include
		page="/WEB-INF/views/student_common/student_navigationvar.jsp"></jsp:include>
	<!-- 페이지 내용 부분 시작 (이 부분만 카피해서 사용할것. 카피 후 삭제) -->
	<div class="page-content p-5" id="content">
		<!-- 토글 버튼 -->
		<button id="sidebarCollapse" type="button"
			class="btn btn-light bg-white rounded-pill shadow-sm px-4 mb-4">
			<i class="fa fa-bars mr-2"></i><small
				class="text-uppercase font-weight-bold"
				style="box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .075) !important;">Toggle</small>
		</button>

		<div class="card"
			style="width: 100%; height: auto; border-radius: 2%; box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .075) !important;">
			<div class="dashboard-card-bottom">
				<!-- 실제 내용 -->
				<div class="container-fluid">
					<div class="row">
						<div class="col-1"></div>

						<div class="col">
							<div class="row my-5">
								<div class="col">
									<i class="bi bi-cash-coin"
										style="font-size: 40px; color: #EF1B3F;"></i> <span
										style="font-size: 30px;">회비 내역</span>
								</div>
							</div>

							<div class="row my-5">
								<div class="col-2" style="text-align: center;">
									<a
										href="/cbh/student/myclub/membershipfeemgmt/student_MemberShipFeeMgmtPage"
										style="font-size: 19px;">회비 내역 작성</a>
								</div>
								<div class="col-1" style="text-align: center;">|</div>
								<div class="col-2" style="text-align: center;">
									<a
										href="/cbh/student/myclub/membershipfeemgmt/student_MemberShipFeeMgmtListPage"
										style="font-size: 19px;">회비 내역</a>
								</div>

								<div class="col" style="text-align: center;">[검색 결과 :
									${MemberShipFeeSelectCount} 명]</div>
							</div>

							<div class="row">
								<table class="table">
									<thead>
										<tr>
											<th scope="col">#</th>
											<th scope="col">구 분</th>
											<th scope="col">상세 내역</th>
											<th scope="col">수 입</th>
											<th scope="col">지 출</th>
											<th scope="col">사용 날짜</th>
											<th scope="col">작성일</th>
											<th scope="col">비고</th>
										</tr>
									</thead>
									<c:if test="${empty CLubFeeAllData}">
										<tbody>
											<tr>
												<th scope="row"></th>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
												<td></td>
											</tr>
										</tbody>
									</c:if>
										
									<c:forEach begin="0" end="${CLubFeeAllData.size() -1}" var="i">
										<tbody>
											<tr>
												<th scope="row">${CLubFeeAllData[i].Club_FeeVo.club_fee_no}</th>
												<td>${CLubFeeAllData[i].Club_FeeVo.club_fee_division}</td>
												<td>		
												<button class="btn btn-light" onclick="buttonClick(this)" 
												data-bs-toggle="modal" data-bs-target="#exampleModal">
												${CLubFeeAllData[i].Club_FeeVo.club_fee_detail}</button>
												
												<div hidden="hidden" class="club_fee_no">${CLubFeeAllData[i].Club_FeeVo.club_fee_no}</div>
												
											<div class="modal fade" id="exampleModal" tabindex="-1"
												aria-labelledby="exampleModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="exampleModalLabel">
																상세내역</h5>
															<button type="button" class="btn-close"
																data-bs-dismiss="modal" aria-label="닫기"></button>
														</div>
														
														<div class="modal-body" id="modal-body"></div>

														<div class="modal-footer" id="modal-footer"></div>

													</div>
												</div>
											</div>
											
											</td>

												<td>${CLubFeeAllData[i].Club_fee_income_amount}원</td>
												<td>${CLubFeeAllData[i].Club_fee_using_amount}원</td>
												<td><fmt:formatDate
														value="${CLubFeeAllData[i].Club_FeeVo.club_fee_use_date}"
														pattern="yy.MM.dd" /></td>
												<td><fmt:formatDate
														value="${CLubFeeAllData[i].Club_FeeVo.club_fee_date}"
														pattern="yy.MM.dd" /></td>
												<td>${CLubFeeAllData[i].Club_FeeVo.club_fee_other_detail}</td>
											</tr>
										</tbody>
									</c:forEach>
								</table>

								<div class="row my-3" style="border: 1px solid gray;">
									<div class="row my-1">
										<div class="col-4"></div>
										<div class="col-2" style="text-align: center;">
											<i class="bi bi-plus-square" style="padding-right: 20px;"></i>총
											수입 :
										</div>
										<div class="col" style="text-align: center;">
											<fmt:setLocale value="ko_KR" />
											<fmt:formatNumber type="currency"
												value="${AmountTotalResult[0].IncomeAamountTotal}" />
										</div>
										<div class="col"></div>
									</div>

									<div class="row my-1">
										<div class="col-4"></div>
										<div class="col-2" style="text-align: center;">
											<i class="bi bi-dash-square" style="padding-right: 20px;"></i>총
											지출 :
										</div>
										<div class="col" style="text-align: center;">
											<fmt:setLocale value="ko_KR" />
											<fmt:formatNumber type="currency"
												value="${AmountTotalResult[0].UsingAmountTotal}" />
										</div>
										<div class="col"></div>



									</div>

									<div class="row my-1">
										<div class="col-4"></div>
										<div class="col-2" style="text-align: center;">
											<i class="bi bi-plus-square-fill"
												style="padding-right: 20px;"></i>총 합계 :
										</div>
										<div class="col" style="text-align: center;">
											<fmt:setLocale value="ko_KR" />
											<fmt:formatNumber type="currency"
												value="${AmountTotalResult[0].Total}" />
										</div>
										<div class="col"></div>
									</div>
								</div>
							</div>


							<form
								action="/cbh/student/myclub/membershipfeemgmt/student_MemberShipFeeMgmtListPage"
								method="get">
								<div class="row my-5">
									<div class="col">
										<h6
											style="font-size: 15px; color: #333; font-weight: bold; margin-top: 20px;">검색어</h6>
									</div>

									<div class="col">
										<div class="form-floating">
											<select name="searchType" class="form-select"
												id="floatingSelect"
												aria-label="Floating label select example"
												style="font-size: 15px; color: #333; font-weight: bold; padding: 10px;">
												<option selected value="division">구분</option>
												<option selected value="detail">상세내용</option>
												<option selected value="otherdetail">비고</option>
											</select>
										</div>
									</div>

									<div class="col-6">
										<div class="form-floating">
											<textarea name="searchWord" class="form-control"
												placeholder="Leave a comment here" id="floatingTextarea"></textarea>
											<label for="floatingTextarea" style="font-size: 15px;">검색어를
												입력해주세요.</label>
										</div>
									</div>

									<div class="col">
										<button type="submit" class="btn btn-primary btn-lg"
											style="height: 60px; font-size: 15px;">
											<i class="bi bi-search">검색</i>
										</button>
									</div>
								</div>
							</form>


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
													href="/cbh/student/myclub/membershipfeemgmt/student_MemberShipFeeMgmtListPage?pageNum=${startPage -1}">◀</a></li>
											</c:otherwise>
										</c:choose>

										<c:forEach begin="${startPage}" end="${endPage}" var="i">
											<c:choose>
												<c:when test="${i == currentPageNum}">
													<li class="page-item"><a class="page-link"
														style="text-decoration-line: none; color: blue; font-weight: 600;"
														href="/cbh/student/myclub/membershipfeemgmt/student_MemberShipFeeMgmtListPage?pageNum=${i}">${i}</a></li>
												</c:when>
												<c:otherwise>
													<li class="page-item"><a class="page-link"
														style="text-decoration-line: none; color: black;"
														href="/cbh/student/myclub/membershipfeemgmt/student_MemberShipFeeMgmtListPage?pageNum=${i}">${i}</a></li>
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
													href="/cbh/student/myclub/membershipfeemgmt/student_MemberShipFeeMgmtListPage?pageNum=${endPage +1}">▶</a></li>
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