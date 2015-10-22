<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin them chi nhanh</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/datatable/jquery.dataTables.css">
	
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/datatable/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/datatable/jquery.dataTables.js"></script>


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
				 
				 <div id="tieude"><p>Manager Sửa Nhà Cung Cấp</p> </div>
				 
				 <form action="" method="post"
					style="margin-left: 365px;margin-bottom:30px;margin-top:40px;  ">
					<table width="500" border="0" class="suaNhaCungCap">
						<tr>
							<td width="120" height="35" >Mã nhà cung cấp:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="maNhaCC" type="text" class="required" required="required"
								value="" name="maNhaCC" /></td>
						</tr>
						
						
						<tr>
							<td width="120" height="35">Tên nhà cung cấp:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="tenNhaCC" type="text" class="required" required="required"
								value="" name="tenNhaCC" /></td>
						</tr>
						
						
						<tr>
							<td width="120" height="35">Số điện thoại:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="soDienThoai" type="number" class="required" required="required"
								value="" name="soDienThoai" /></td>
						</tr>
						
							<tr>
							<td width="120" height="35" >Địa chỉ:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><textarea rows="5" cols="35" name="diaChi" required="required" ></textarea></td>
						</tr>
						
						
						
		 		      <td width="120" height="35" ></td> 
						  
							<td height="35" colspan="2" align="center"><input id="btnAction"
								type="submit" name="xuly" value="Lưa nhà cung cấp"
								class="btnAction" /></td>
						</tr>
					</table>
				</form>
				 
		 </div>


<jsp:include page="includes/footer.jsp"></jsp:include>

</div>



</body>
</html>