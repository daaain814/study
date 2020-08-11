<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.naver.dto.HugiPrintDto" %>
<%@page import="java.util.ArrayList" %>
    
<%@ include file="top.jsp" %>

<%
	ArrayList<HugiPrintDto> list = (ArrayList<HugiPrintDto>)request.getAttribute("hugiList");
%>

<!-- bar-rating -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/themes/fontawesome-stars.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-bar-rating/1.2.2/jquery.barrating.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<div class="container">
<br>

<!-- The Modal -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">후기 내용</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
       
            <div class="form-group">
              <label for="m_tit">영화제목:</label>
              <input type="text" class="form-control" id="m_tit" placeholder="영화제목" name="m_tit" disabled>
              <input type="hidden" id="mv_num" value="">
            </div>
            <div class="form-group">
              <label for="name">작성자:</label>
              <input type="text" class="form-control" id="name" placeholder="작성자" name="name" disabled>
              <input type="hidden" id="mb_num" value="">
            </div>
           <div class="form-group">
              <label for="h_tit">후기제목:</label>
              <input type="text" class="form-control" id="h_tit" placeholder="후기제목" name="h_tit">
            </div>
    
            <div class="form-group">
              <label for="hugi">후기 내용</label>
              <textarea class="form-control" rows="5" id="hugi" name="hugi"></textarea>
            </div>
            

        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" id="close_modal">Close</button>
        </div>
        
      </div>
	</div>
	</div>
 <!-- The Modal -->
 
<div style="text-align:center">
<h1>영화 후기</h1><br>
</div>
<table class="table table-striped" style="text-align:center">
<thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>후기제목</th>
        <th>작성자</th>
      </tr>
</thead>
<tbody>
<% for (HugiPrintDto d : list) { %>
<tr onclick="modal_show(<%= d.getNo() %>)">
<td><%= d.getNo() %></td>
<td><%= d.getJe() %></td>
<td><%= d.getTitle() %></td>
<td><%= d.getName() %></td>
</tr>
<% } %>
</tbody>
</table>

</div>					


<script>
$(document).ready(function(){
//     $.get("movieok.nhn",
//     function(data, status){
//     	var html = "";
//     	console.log(data);
// //     	console.log(data.items);
//     	$.each(data, function(key, field){
//     		console.log(key);	
//     		console.log(field);	
// //     		html += "<a href='" + field.link + "' target='_blank'>"
// //     		html += "<img src='" + field.img + "'></a><br>";
// //     		html += field.je + "<br>";
// //     		html += field.gam + "<br>";
// //     		html += field.bae + "<br>";
//           });
// 		$("#result").html(html);
//     });
});


function modal_show(num) {
    $("#myModal").modal("show");
//     alert(num);

	$
}

</script>
</body>
</html>