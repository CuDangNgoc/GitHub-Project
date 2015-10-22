<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin sua chi nhanh</title>

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
        <li><a href="adminQuanLyChiNhanh.jsp" style="border-left:1px solid black;">Quản lý cửa hàng</a>   </li>
        <li><a href="adminQuanLyNhanVien.jsp">Quản lý nhân viên</a> </li>
        
        
    </ul>

</div>

	
		 <div id="content_main">
				 
				 <div id="tieude"><p>Admin Sửa Chi Nhánh</p> </div>
				 
				 <form action="" method="post"
					style="margin-left: 365px;margin-bottom:30px;margin-top:40px;  ">
					<table width="500" border="0" class="suachinhanh">
						<tr>
							<td width="120" height="35" >Mã chi nhánh:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="machinhanh" type="text" class="required" required="required"
								value="" name="maChiNhanh" /></td>
						</tr>
						
						
						<tr>
							<td width="120" height="35">Tên chi nhánh :<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="tenchinhanh" type="text" class="required" required="required"
								value="" name="tenChiNhanh" /></td>
						</tr>
						
						
						<tr>
							<td width="120" height="35" >Người quản lý:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="nguoiQL" type="text" class="required" required="required"
								value="" name="nguoiQL" /></td>						</tr>
						
						
						<tr>
						
						<tr>
							<td width="120" height="35" >Ngày thành lập:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="ngayTL" type="text" class="required" required="required"
								value="" name="ngayTL" /></td>						</tr>
						
						<tr>
						
						
						
						<tr>
							<td width="120" height="35" >Địa chỉ:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><textarea rows="5" cols="35" name="diaChi" required="required" ></textarea></td>
						</tr>
						
						
						
		 		      <td width="120" height="35" ></td> 
						  
							<td height="35" colspan="2" align="center"><input id="btnAction"
								type="submit" name="xuly" value="Lưu chỉnh sửa"
								class="btnAction" /></td>
						</tr>
					</table>
				</form>
				 
		 </div>


<jsp:include page="includes/footer.jsp"></jsp:include>

</div>






</body>
</html>