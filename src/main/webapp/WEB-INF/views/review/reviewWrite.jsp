<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="comments-area col-lg-7 col-md-7" style="margin: 0 auto">

	<div class="comment-list">
		<form action="../review/reviewWrite" method="post" id="frm">
		<input type="hidden" id="member_num" name="member_num" value="${member.member_num}">
		<input type="hidden" id="rest_num" name="rest_num" value="${vo.rest_num}">

			<c:if test="${ not empty member  }">
				<input type="text" id="writer" name="writer" value="${member.name}" readonly="readonly">
				<select name="score" id="score">
					<option value="1">★☆☆☆☆</option>
					<option value="2">★★☆☆☆</option>
					<option value="3">★★★☆☆</option>
					<option value="4">★★★★☆</option>
					<option value="5">★★★★★</option>
				</select>
			</c:if>
			<div class="single-comment justify-content-between d-flex">
				<br>
				<textarea id="contents" name="contents"
					placeholder="리뷰 작성"
					style="width: 100%; max-height: 100px; min-height: 100px; margin: 5px 0; background-color: white;"
					onfocus="this.placeholder = ''" onblur="this.placeholder = '리뷰 작성'"
					required class="single-input"></textarea>


				<!-- session member, memberVO -->
				<div class="reply-btn">
					<%-- <c:if test="${ not empty member  }"> --%>
					<button type="submit" class="btn-reply text-uppercase">REPLY</button>
					<%-- </c:if> --%>
				</div>
			</div>
		</form>
	</div>

</div>