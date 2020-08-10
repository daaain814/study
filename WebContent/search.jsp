<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="top.jsp"%>

<%
	if (dto == null) {
%>
<script>
	alert("로그인을 해야 이용 가능합니다");
	location.href = 'login.nhn';
</script>
<%
	}
%>


<div class="container">
	<div class="card bg-light">
		<article class="card-body mx-auto" style="max-width: 400px;">
			<h4 class="card-title mt-3 text-center">날씨 검색</h4>
			<p class="text-center">검색창에 지역만 입력 하세요</p>

			<div class="form-group input-group">
				<input id="search" name="search" class="form-control"
					placeholder="날씨 검색" type="text">
			</div>
			<!-- form-group// -->
			<div class="form-group">
				<button type="submit" id="searchBtn"
					class="btn btn-primary btn-block">검색</button>
			</div>
			<!-- form-group// -->

		</article>

	</div>

	<h3>검색 결과 출력</h3>
	<div id="result"></div>
</div>
<script>
	$(document).ready(function() {
		$("#searchBtn").click(function() {
			var search = $("#search").val();
			$("#result").html("여기에 찍히나: " + search); // html활용하면 위에 나타남!!!
			console.log(search);
			$.post("searchok.nhn", {
				search : search
			}, function(data, status) {
				var html = "";
				console.log(data["total"]);
				console.log(data.items);
				$.each(data.items, function(i, field) {
					html += "<a href='" + field.link + "' target='_blank'>"
					html += field.title + "<br>" // 반복되서 하나밖에 안나오니까 여기서 값 나오는 걸 html형태로 반복하게끔 해서 밑에 호출
					//             $("div").append(field + " ");
					//       console.log("Data: " + field.title);  // field.title 이거랑 이거랑 같음 field['title']
				});
				$("#result").html(html); // 결과값 출력하는거 아까는 안에 있었는데 이걸 밖으로 빼서 html로 묶은걸 여기서 다시 html형태로 출력
			});
		});
	});
</script>

