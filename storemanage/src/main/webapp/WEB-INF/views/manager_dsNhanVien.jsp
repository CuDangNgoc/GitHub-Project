<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manager</title>

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
       
         <li><a href="manager_hangHoa.jsp" style="border-left:1px solid black;">Quản lý hàng hóa</a>   </li>
         <li><a href="manager_kho.jsp">Quản lý kho</a> </li>
         <li><a href="manager_dsNhanVien.jsp">Quản lý nhân viên</a>   </li>
         <li><a href="manager_vatTu.jsp">Quản lý vật tư</a> </li>
         <li><a href="manager_baoCao.jsp">Hệ thống báo cáo</a>   </li>
        
    </ul>

</div>

		 <div id="content_main">
		 
		 
		 <div id="content">
		 
		 <table id="example" class="display" cellspacing="0" width="1018" 
					border="0">
					<thead>
						<tr>
							<th>Mã nhân viên</th>
							<th>Tên nhân viên</th>
							<th>Chức vụ</th>
                            <th>Ngày vào</th>
							<th>Lương</th>
							<th>Số điện thoại</th>
							<th><a href="manager_themNhanVien.jsp"> Thêm<img alt="" src="images/Add.png"></a> </th>

						</tr>
					</thead>

					<tfoot>
						<tr>
							<th>Mã nhân viên</th>
							<th>Tên nhân viên</th>
							<th>Chức vụ</th>
                            <th>Ngày vào</th>
							<th>Lương</th>
							<th>Số điện thoại</th>
							<th>Sửa/Xóa</th>
						</tr>
					</tfoot>

					<tbody>

						  <% 
						  
						  for (int i = 0; i < 6; i++) {
						  		  
						  %>
						 			  
						<tr>
							<td style="text-align: center;">maNV</td>
							<td style="text-align: center;">tenNV</td>
							<td style="text-align: center;">chuc vu</td>
							<td style="text-align: center;">luong</td>
							<td style="text-align: center;">ngay vao lam</td>
							<td style="text-align: center;">dien thoai</td>
							
							
							<td style="text-align: center;"><a href="manager_suaNhanVien.jsp"><img alt="" src="images/Modify.png"></a> <a
								href="#" onclick="return confirm('Are you sure you want to delete this film ?') " ><img alt="" src="images/Delete.png"></a></td>
								
				

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