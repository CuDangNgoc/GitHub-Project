<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<div id="wrapper">

		<div id="title"><p>THAY ĐỔI MẬT KHẨU</p> </div>
			
		 <div id="content_main">

			<div id="formLogin"  >

				<form action="#" method="get" name="myform">
				
				<table width="100%" border="0" style="padding-top:60px; " >
                    <tr>
                        <td  width="100" align="right">Mật khẩu cũ:</td>
                        <td width="310" height="35"><input type="password" name="oldpass" id="matkhaucu" class="txt" autocomplete="off" class="submit" /><label id="lblUsername"></td>
                        <td></label></td>
                    </tr>
                    <tr>
                        <td  width="100" align="right">Mật khẩu mới:</td>
                        <td width="310" height="35"><input type="password" name="newpass" id="matkhaumoi" class="txt" autocomplete="off" class="submit" /><label id="lblPassword"></label></td>
                        <td></td>
                    </tr>
                    
                     <tr>
                        <td  width="100" align="right">Nhập lại mật khẩu mới:</td>
                        <td width="310" height="35"><input type="password" name="cnewpass" id="cmatkhaumoi" class="txt" autocomplete="off" class="submit" /><label id="lblPassword"></label></td>
                        <td></td>
                    </tr>
                    
                    
                    <tr>
                    <td width="100"></td>
                        <td width="310" height="35"  colspan="2" align="left"><input height="35" type="button" id="submitdn" value="Đổi mật khẩu" class="submit"/> </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"> <font color="red"><span id="error"></span></font></td>
                    </tr>
                </table>

		
				</form>

			</div>

		</div>


	</div>

