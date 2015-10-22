<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee</title>

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


		<div id="menu_ngang">
			<ul>
				<li><a href="#" style="border-left: 1px solid black;">Xuất hóa đơn</a></li>
			</ul>

		</div>


		<div id="content_main">

            <div id="tieude"><p>HÓA ĐƠN</p> </div>


 <form action="" method="post"
					style="margin-left: 365px;margin-bottom:30px;margin-top:40px;  ">
					<table width="500" border="0" class="suachinhanh">
						<tr>
							<td width="120" height="35" >Mã hóa đơn:<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="maHoaDon" type="text" class="required" required="required"
								value="" name="maHoaDon" /></td>
						</tr>
						
						
						<tr>
							<td width="120" height="35">Tên hóa đơn :<span style="color: red;"> * </span></td>
							<td width="324" height="35"><input id="tenHoaDon" type="text" class="required" required="required"
								value="" name="tenHoaDon" /></td>
						</tr>
						
						
						<tr>
							<td width="120" height="35" >Số lương:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="soLuong" type="text" class="required" required="required"
								value="" name="soLuong" /></td>						</tr>
						
						
						<tr>
						
						<tr>
							<td width="120" height="35" >Tổng tiền:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="tongTien" type="text" class="required" required="required"
								value="" name="tongTien" /></td>						</tr>
						
						
						<tr>
						
						<tr>
							<td width="120" height="35" >Tiền bằng chữ:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="tienBangChu" type="text" class="required" required="required"
								value="" name="tienBangChu" /></td>						</tr>
						
						
						<tr>
						
						
						<tr>
							<td width="120" height="35" >Ngày lập:<span style="color: red;"> * </span></td>
                             <td width="324" height="35"><input id="ngayTL" type="date" class="required" required="required"
								value="" name="ngayTL" /></td>						</tr>
						
						<tr>
						
						
		 		      <td width="120" height="35" ></td> 
						  
							<td height="35" colspan="2" align="center"><input id="btnAction"
								type="submit" name="xuly" value="In hóa đơn"
								class="btnAction" /></td>
						</tr>
					</table>
				</form>
				 
				 </div>


		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>





</body>
</html>