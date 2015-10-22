<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

<script type="text/javascript">


$(document).ready(function(){
	
	$("#submitdn").click(function(){
		
       var username = $("#username").val();
       var password = $("#password").val();
       
       $("#error").html("");
       
       if(username==""|password==""){
    	   
    	   $("#error").html("làm ơn điền đầy đủ thông tin nhé!!");
    	   
    	   return false;
    	   
       }
       else{
    	 
		$.ajax({
			
			url: "${pageContext.request.contextPath}/checklogin ",
			type :"post",
			data: {username :username , password:password },
			success:function(data){
							
				var chucvu =data;
				
				if(data=="error"){
 					$("#error").html("tên đăng nhập hoặc mật khẩu bị sai!");
 				}
 				else{
 					
 					alert("đăng nhập thành công");
  					window.location.href="dangnhapthanhcong?chucvu="+chucvu;

 				}
				
			}
		
		});
		
		return false;
		
       }
		
	});
	
	return false;
	
});


</script>
</head>
<body>

	<div id="wrapper">

		<jsp:include page="includes/header_login.jsp"></jsp:include>


		<div id="title"><p>ĐĂNG NHẬP HỆ THỐNG</p> </div>
			
		 <div id="content_main">

			<div id="formLogin"  >

				<form action="#" method="post">
				
				<table width="100%" border="0" style="padding-top:60px; " >
                    <tr>
                        <td  width="100" align="right">Tên đăng nhập:</td>
                        <td width="310" height="35"><input type="text" name="username" class="txt" id="username" autocomplete="off" class="submit" /><label id="lblUsername"></td>
                        <td></label></td>
                    </tr>
                    <tr>
                        <td  width="100" align="right">Mật khẩu:</td>
                        <td width="310" height="35"><input type="password" name="password" id="password" class="txt" autocomplete="off" class="submit" /><label id="lblPassword"></label></td>
                        <td></td>
                    </tr>
                    
                     <tr>
                        <td  width="100" align="right"></td>
                        <td><input type="checkbox" name="remember"  />Ghi nhớ mật khẩu</td>
                        <td></td>
                    </tr>
                    
                    <tr>
                    <td width="100"></td>
                        <td width="310" height="35"  colspan="2" align="left"><input height="35" type="submit" id="submitdn" value="Đăng nhập" class="submit"/>      <span> </span> <a href="quenmatkhau">   Quên mật khẩu?</a></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"> <font color="red"><span id="error"></span></font></td>
                    </tr>
                </table>

				</form>

			</div>

		</div>

		<jsp:include page="includes/footer.jsp"></jsp:include>

	</div>

</body>
</html>