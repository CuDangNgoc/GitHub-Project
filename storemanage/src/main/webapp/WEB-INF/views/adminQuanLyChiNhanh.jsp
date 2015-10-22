<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>quan ly cua hang</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/datatable/jquery.dataTables.css">
	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/datatable/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/datatable/jquery.dataTables.js"></script>



<script>
	$(document).ready(
			function() {
				var eventFired = function(type) {
					var n = $('#demo_info')[0];
					n.innerHTML += '<div>' + type + ' event - '
							+ new Date().getTime() + '</div>';
					n.scrollTop = n.scrollHeight;
				}

				$('#example')

				.dataTable();
			});
</script>

<!-- datatable -->



</head>
<body>

<div id="wrapper">
<jsp:include page="includes/header.jsp"></jsp:include>


<div id = "menu_ngang">
    <ul>
        <li><a href="${pageContext.request.contextPath}/admin/qlchinhanh.html" style="border-left:1px solid black;">Quản lý cửa hàng</a>   </li>
        <li><a href="${pageContext.request.contextPath}/admin/qlnhanvien.html">Quản lý nhân viên</a> </li>
        
        
    </ul>

</div>
		 <div id="content_main">
		 <div id="content">
		 
		 <table id="example" class="display" cellspacing="0" width="1018" 
					border="0">
					<thead>
						<tr bgcolor="Silver">
							<th>Mã chi nhánh</th>
							<th>Tên chi nhánh</th>
							<th>Ngày thành lập</th>
                            <th>Người quản lý</th>
							<th>Địa chỉ</th>
							<th><a href="${pageContext.request.contextPath}/admin/themchinhanh.html"> Thêm<img alt="" src="${pageContext.request.contextPath}/resources/images/Add.png"></a> </th>

						</tr>
					</thead>

					<tfoot>
						<tr>
							<th>Mã chi nhánh</th>
							<th>Tên chi nhánh</th>
							<th>Ngày thành lập</th>
                            <th>Người quản lý</th>
							<th>Địa chỉ</th>
							<th>Sửa/Xóa</th>
						</tr>
					</tfoot>

					<tbody>

						  <% 
						  
						  for (int i = 0; i < 28; i++) {
						  		  
						  %>
						 			  
						<tr>
							<td style="text-align: center;">ma chi nhanh</td>
							<td style="text-align: center;">ten chi nhanh</td>
							<td style="text-align: center;">ngay thanh lap</td>
							<td style="text-align: center;">nguoi quan ly</td>
							<td style="text-align: center;">dia chi</td>
							
							<td style="text-align: center;"><a href="adminSuaChiNhanh.jsp"><img alt="" src="${pageContext.request.contextPath}/resources/images/Modify.png"></a> <a
								href="#" onclick="return confirm('Are you sure you want to delete this film ?') " ><img alt="" src="${pageContext.request.contextPath}/resources/images/Delete.png"></a></td>
								
						</tr>

						<%
							}
						%>

					</tbody>
				</table>
		 
		 </div>
	
		 </div>

<jsp:include page="includes/footer.jsp"></jsp:include>

</div>

</body>
</html>