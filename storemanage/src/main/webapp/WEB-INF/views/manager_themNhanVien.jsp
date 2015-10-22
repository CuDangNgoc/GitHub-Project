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
       
        <li><a href="#" style="border-left:1px solid black;">Quản lý cửa hàng</a>   </li>
        <li><a href="#">Quản lý nhân viên</a> </li>
        
    </ul>

</div>

	
		 <div id="content_main">
				 
				 <div id="tieude"><p>Admin Sửa Nhân viên</p> </div>
				 
				 <form action="" method="post"
					style="margin-left: 365px;margin-bottom:30px;margin-top:40px;  ">
					<table width="500" border="0" class="themNhanVien">
						<tr>
							<td width="120" height="35" >Mã nhân viên:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="maNhanVien" type="text" class="required" required="required"
								value="" name="maNhanVien" /></td>
						</tr>
						
						
						<tr>
							<td width="120" height="35">Tên nhân viên :<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="tenNhanVien" type="text" class="required" required="required"
								value="" name="tenNhanVien" /></td>
						</tr>
						
						
						<tr>
							<td width="120" height="35" >Chức vụ:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="chucVu" type="text" class="required" required="required"
								value="" name="chucVu" /></td>						</tr>
						
						
						<tr>
						
						<tr>
							<td width="120" height="35" >Ngày vào làm:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="ngayVao" type="date" class="required" required="required"
								value="" name="ngayVao" /></td>						</tr>
						
						<tr>
						
						
						
						<tr>
							<td width="120" height="35" >Lương:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="luong" type="text" class="required" required="required"
								value="" name="luong" /></td>						</tr>
						
						
						<tr>
						
						<tr>
							<td width="120" height="35" >Ngày sinh:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="ngaySinh" type="date" class="required" required="required"
								value="" name="ngaySinh" /></td>						</tr>
						
						<tr>
						
						<tr>
							<td width="120" height="35" >Số điện thoại:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="soDienThoai" type="number" class="required" required="required"
								value="" name="soDienThoai" /></td>						</tr>
						
						
						<tr>
						
						
						<tr>
							<td width="120" height="35" >Chi nhánh:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="chiNhanh" type="text" class="required" required="required"
								value="" name="chiNhanh" /></td>						</tr>
						
						
						<tr>
						
						
						<tr>
							<td width="120" height="35" >Địa chỉ:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><textarea rows="5" cols="35" name="diaChi" required="required" ></textarea></td>
						</tr>
						
						
						
		 		      <td width="120" height="35" ></td> 
						  
							<td height="35" colspan="2" align="center"><input id="btnAction"
								type="submit" name="xuly" value="Thêm nhân viên"
								class="btnAction" /></td>
						</tr>
					</table>
				</form>
				 
		 </div>


<jsp:include page="includes/footer.jsp"></jsp:include>

</div>



</body>
</html>