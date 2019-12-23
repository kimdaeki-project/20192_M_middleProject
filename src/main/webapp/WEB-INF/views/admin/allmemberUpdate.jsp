<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:import url="../layout/admin/header.jsp"></c:import>
</head>
<body>
	<c:import url="../layout/admin/header_area.jsp"></c:import>

	<!--================Blog Area =================-->
	<div class="comments-area " id="upd_area">
		<h4>${vo.id}님의 페이지</h4>
		<form action="./allmemberUpdate" method="post">
			<div class="comment-list">
				<div class="single-comment justify-content-between d-flex">
					<div class="user justify-content-between d-flex">
						<div class="thumb">
							<img src="../resources/images/blog-details/c1.jpg" alt="">
						</div>
						<div class="desc">
							<h5>
								<p>Id</p>
							</h5>
							<input type="hidden" class="form-control upd_input" id="id"
								name="id" value="${vo.id}">
							<p class="comment">${vo.id}</p>
						</div>
					</div>
				</div>
				<div class="desc" id="etc">
					<p class="date"></p>
				</div>
			</div>
			<div class="comment-list left-padding">
				<div class="single-comment justify-content-between d-flex">
					<div class="user justify-content-between d-flex">
						<div class="desc">
							<h5>
								<p>Password</p>
							</h5>
							<input type="password" id="pw" name="pw"
								class="form-control upd_input" placeholder="새비밀번호"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '새비밀번호'">
							<div id=pw_update></div>
							<input type="password" id="pw2" name="pw2"
								class="form-control upd_input pw2_input" placeholder="새비밀번호 확인"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '새비밀번호 확인'">
							<div id=pw2_update></div>
						</div>

					</div>
				</div>
			</div>
			<div class="comment-list left-padding">
				<div class="single-comment justify-content-between d-flex">
					<div class="user justify-content-between d-flex">
						<div class="desc">
							<h5>
								<p>Name</p>
							</h5>
							<div>
								<input type="text" id="name" name="name" value="${vo.name}"
									class="form-control upd_input" placeholder="${vo.name}"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = '${vo.name}'" required>
								<div id="name_check"></div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="comment-list left-padding">
				<div class="single-comment justify-content-between d-flex">
					<div class="user justify-content-between d-flex">
						<div class="desc">
							<h5>
								<p>Phone Number</p>
							</h5>
							<input type="text" id="tel" name="tel" value="${vo.tel}"
								class="form-control upd_input" placeholder="${vo.tel}"
								onfocus="this.placeholder = ''"
								onblur="this.placeholder = '${vo.tel}'" required>
							<div id="tel_check"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="comment-list left-padding">
				<div class="single-comment justify-content-between d-flex">
					<div class="user justify-content-between d-flex">
						<div class="desc">
							<h5>
								<p>Email</p>
							</h5>
							<input type="text" id="email" name="email"
								value="${vo.email}" class="form-control upd_input"
								placeholder="${vo.email}" onfocus="this.placeholder = ''"
								onblur="this.placeholder = '${vo.email}'" required>
							<div id="email_check"></div>
						</div>
					</div>
				</div>
			</div>
<%-- 			<c:if test="${vo.grade == 2}">
				<div class="comment-list left-padding">
					<div class="single-comment justify-content-between d-flex">
						<div class="user justify-content-between d-flex">
							<div class="desc">
								<h5>
									<p>corporate registration number</p>
								</h5>
								<input type="text" id="reg_number" name="reg_number"
									value="${vo.reg_number}" class="form-control upd_input"
									placeholder="${vo.reg_number}"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = '${vo.reg_number}'" required>
							</div>
						</div>
					</div>
				</div>
			</c:if> --%>

			<div id="post_btn">
				<button class="genric-btn info" type="submit">회원 정보 수정</button>
				<input type="button" class="genric-btn danger" id="danger_btn"
					onclick="history.go(-1)" value="취소">
			</div>
		</form>
	</div>
	<!---------------- script ----------------->
	<script type="text/javascript">
   
   /* 비밀번호 */
	$("#pw").blur(function(pw) {
		var pw = $('#pw').val();
		var pwRule = /^[A-Za-z0-9]{6,12}$/;
		
		if(pwRule.test(pw)){
			$('#pw_update').text(" ");
		}else if(pw == ""){
			$('#pw_update').text(" ");	
		}
		else{
				$("#pw_update").html("비밀번호는 문자와 숫자 포함, 6~12자리만 가능합니다.");		
				$("#pw_update").css("color","red");			
				$("#btn").attr("disabled",true);
				return false;			
			}			
	}); 
   
   
	/****** 비밀번호 일치 ******/  
	 $("#pw2").blur(function() {
			var pw = $("#pw").val();
			var pw2 = $("#pw2").val();	
			var pwRule = /^[A-Za-z0-9]{6,12}$/;
					
				if(pw == pw2 && pwRule.test(pw2)){
						if(pw !="" && pw2 != ""){
							$("#pw2_update").html("사용가능한 비밀번호입니다.")
							$("#pw2_update").css("color","green")
						}else{
							$("#pw2_update").html("비밀번호가 일치하지 않습니다.");		
							$("#pw2_update").css("color","red");
							$("#btn").attr("disabled",true);			
						}	
				}
			});

	 	 $("#pw").change(function() {
			$("#pw2").val("");
			$("#pw2_update").html("");
		});
   
	 	 
	 	 
 /* email */ 
 $("#email").blur(function(email) {
	var email = $('#email').val();
	var emailRule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	var query= {email: $('#email').val()};	
	$.ajax({
		url:"memberCheckEmail",
		type: "post",
		data: query,
		success:function(data){
			if(data == 1){
				$("#email_check").text("이미 사용중인 이메일입니다.");
				$("#email_check").css("color","red");
				$("#btn").attr("disabled",true);										
			}else{
				if(emailRule.test(email)){
					$('#email_check').text(" ");
					$("#btn").attr("disabled",false);			
				}else{
					$('#email_check').text("이메일 주소를 다시 확인해주세요.");
					$('#email_check').css('color','red');
					$('#btn').attr("disabled",true);
					return false;					
				}		
			}	
		},error:function(){		
			
		}
				
	});						
}); 

 	
/********* Tel 형식 *************/
 $("#tel").blur(function(tel) {
		var tel = $('#tel').val();
 		var telRule = /^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;
			
		if(telRule.test(tel)){
			$('#tel_check').text(" ");
			$("#btn").attr("disabled",false);
		}else{
				$("#tel_check").html("형식에 맞지 않는 번호입니다.");		
				$("#tel_check").css("color","red");			
				$("#btn").attr("disabled",true);
				return false;			
			}			
	});
 
	 	 
	 	 
   
   </script>




	<!--=============== footer =================-->
	<c:import url="../layout/admin/footer.jsp" />

</body>
</html>