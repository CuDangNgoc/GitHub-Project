
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
    
    
<div id="header" >

<span id="savePass" style="display:none;" >${password}</span>

<div id="div_name_logo" ><h2 id="Slogan">STORE MANAGE</h2></div>
<div id="dangnhap" >  
           <a  href="#" id="dangxuat" >Đăng xuất </a>  
            <a href="#" id="doimatkhau" >Đổi mật khẩu</a>  
             <p id="tentaikhoan">Xin chào : ${usename}</p> 
    </div>
</div>

 <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/isLogin.js"></script>

<div id="banner">
				<img src="${pageContext.request.contextPath}/resources/images/banner.jpg" alt="" />
			
			</div>
			
			
