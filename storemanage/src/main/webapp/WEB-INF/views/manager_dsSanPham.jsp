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
         <li><a href="manager_nhanVien.jsp">Quản lý nhân viên</a>   </li>
         <li><a href="manager_vatTu.jsp">Quản lý vật tư</a> </li>
         <li><a href="manager_baoCao.jsp">Hệ thống báo cáo</a>   </li>
        
    </ul>

</div>


<div id = "menu_ngang" style="background:orange; ;margin-top:5px; ">
    <ul>
       
         <li><a href="manager_dsSanPham.jsp" style="border-left:1px solid black;">Danh sách sản phẩm</a>   </li>
         <li><a href="manager_dsLoaiSanPham.jsp">Loại sản phẩm</a> </li>
         <li><a href="manager_dsNhaCungCap.jsp">Nhà cung cấp</a>   </li>
       
    </ul>

</div>

		 <div id="content_main">
		 
		 
		 <div id="content">
		 
		 <table id="example" class="display" cellspacing="0" width="1018" 
					border="0">
					<thead>
						<tr>
							<th>Mã hàng hóa </th>
							<th>Tên hàng hóa</th>
							<th>Mã Loại hàng hóa</th>
                            <th>Mã nhà cung cấp</th>
							<th>Đơn giá</th>
							<th>Hạn sử dụng</th>
							<th><a href="manager_themSanPham.jsp"> Thêm<img alt="" src="images/Add.png"></a> </th>

						</tr>
					</thead>

					<tfoot>
						<tr>
							<th>Mã hàng hóa </th>
							<th>Tên hàng hóa</th>
							<th>Mã Loại hàng hóa</th>
                            <th>Mã nhà cung cấp</th>
							<th>Đơn giá</th>
							<th>Hạn sử dụng</th>
							<th>Sửa/Xóa</th>
						</tr>
					</tfoot>

					<tbody>

						  <% 
						  
						  for (int i = 0; i <20; i++) {
						  		  
						  %>
						 			  
						<tr>
							<td style="text-align: center;">ma HH</td>
							<td style="text-align: center;">ten HH</td>
							<td style="text-align: center;">ma loai HH</td>
							<td style="text-align: center;">ma cung cap</td>
							<td style="text-align: center;">don gia</td>
							<td style="text-align: center;">han su dung</td>
							
							<td style="text-align: center;"><a href="manager_suaSanPham.jsp"><img alt="" src="images/Modify.png"></a> <a
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