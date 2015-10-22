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


<script type="text/javascript">

 //khi click vao doi mat khau
	$(document).ready(function(){
		  
	  	$("#doimatkhau").click(function(){
	  		
	  		 $("#thaydoimatkhau").removeClass("active");
	  	 	 $("#title").css("color","black");
	  	});
		
	});
	
	
	// khi submit doi mat khau
	$(document).ready(function(){
		
	 $("#submitdn").click(function(){
		
		 var matkhaucu = $("#matkhaucu").val();
		 var matkhaumoi = $("#matkhaumoi").val();
		 var cmatkhaumoi = $("#cmatkhaumoi").val();
		 var oldpass = $("#savePass").text();//kiem tra mat khau cu co khop trong database k
		 
		 if(matkhaucu==""){
			 alert("vui lòng nhập mật khẩu cũ");
			 document.myform.oldpass.focus();
			 return false;
			 
		 }else if(matkhaucu!=oldpass){
			 
			 alert("mật khẩu cũ không chính xác");
			 
			  return false;
			  
		 } else if(matkhaumoi==""){
		 	 
			 alert("vui lòng nhập mật khẩu mới");
			 document.myform.newpass.focus();
			 return false;
			 
		 } else if(matkhaumoi!=cmatkhaumoi){
			 
			 alert("mật khẩu mới không khớp");
			 document.myform.cnewpass.focus();
			 return false;
			 
		 }else{
			 
			
				$.ajax({
					url: "${pageContext.request.contextPath}/doimatkhau ",
					type :"get",
					data: {matkhaumoi :matkhaumoi },
					success:function(data){
						
						if(data=="error"){
							alert("có lỗi xảy ra vui lòng thử lại");
							return false;
						}else if (data=="errorPass"){
							
							alert("mật khẩu cũ không chính xác");
							return false;
						}
						
						else{
							
							alert("thay đổi mật khẩu thành công !");
							 $("#thaydoimatkhau").addClass("active");
						}
						
					}
				
				});
			 
		 }
		 
	 })	;	
		
	});
	
	
	// khi click dang xuat
	  $(document).ready(function(){
		 
		  $("#dangxuat").click(function(){
			  $.ajax({
					url: "${pageContext.request.contextPath}/logout ",
					type :"get",
					success:function(){
						alert("đăng xuất thành công");
						window.location.href="${pageContext.request.contextPath}/"; //chuyen sang trang login
					}
				
				});
		  });
		  
	  });
	  

</script>

<style type="text/css">

	.active{
	  
 	  display:none; 
	
	}

</style>


</head>
<body>


<div id="wrapper">

<jsp:include page="includes/header.jsp"></jsp:include>


<div id = "menu_ngang">
    <ul>
       
         <li><a href="manager_hangHoa.jsp" style="border-left:1px solid black;">Quản lý hàng hóa</a>   </li>
         <li><a href="manager_kho.jsp">Quản lý kho</a> </li>
         <li><a href="manager_dsnhanVien.jsp">Quản lý nhân viên</a>   </li>
         <li><a href="manager_vatTu.jsp">Quản lý vật tư</a> </li>
         <li><a href="manager_baoCao.jsp">Hệ thống báo cáo</a>   </li>
        
    </ul>

</div>

	
		 <div id="content_main" style="height:550px; ">
				 
				 <div id="thaydoimatkhau" class="active" >
				 <jsp:include page="changePass.jsp"></jsp:include>
				 </div>
		 </div>


<jsp:include page="includes/footer.jsp"></jsp:include>

</div>







</body>
</html>