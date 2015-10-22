package vn.hcmuaf.store.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.hcmuaf.store.model.ChiNhanh;
import vn.hcmuaf.store.model.NhanVien;
import vn.hcmuaf.store.model.TaiKhoan;
import vn.hcmuaf.store.service.TaiKhoanService;

@Controller
public class TaiKhoanController {

	@Autowired
	private TaiKhoanService taiKhoanService;
	
	@RequestMapping(value ="/", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value ="/get", method = RequestMethod.GET)
	public @ResponseBody TaiKhoan  get() {
		TaiKhoan tk = this.taiKhoanService.getTaiKhoanById("NV1");
		return tk;
		
	}

	
	@RequestMapping(value ="/checklogin", method = RequestMethod.POST)
	public @ResponseBody String checklogin(HttpServletRequest request ,HttpServletResponse response) {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		TaiKhoan taiKhoan =  this.taiKhoanService.checkLogin(username,password);
		
		if(taiKhoan==null){
			return "error";
		}
		
		request.getSession().setAttribute("maNhanVien",username);
		request.getSession().setAttribute("password",password);
		
		NhanVien nv = this.taiKhoanService.getNhanVien(username);
		
		request.getSession().setAttribute("ten", nv.getTenNhanVien());
		
		return nv.getMaChucVu();
		
	}

	
	@RequestMapping(value ="/dangnhapthanhcong", method = RequestMethod.GET)
	public String homeAdmin(HttpServletRequest request ,HttpServletResponse response,ModelMap model ) {
		
		String cv = request.getParameter("chucvu");
		String tenNhanVien = (String) request.getSession().getAttribute("ten");
		
		model.addAttribute("usename", tenNhanVien);
		
		if(cv=="Admin"){
			return "homeAdmin";
			
		}else if(cv=="QL"){
		  return "homeManager";		
		}
		return "homeEmployee";
	}
	
	
	
	
	@RequestMapping(value ="/doimatkhau", method = RequestMethod.GET)
	public @ResponseBody String changePass(HttpServletRequest request ,HttpServletResponse response) {
		
		String matkhaumoi = request.getParameter("matkhaumoi");
		String maNhanVien = (String) request.getSession().getAttribute("maNhanVien");
		String password = (String) request.getSession().getAttribute("password");
		
		int result = this.taiKhoanService.changeUserPass(maNhanVien, matkhaumoi);
		//neu co loi xay ra
		if(result==0){
			return "error";
		}
		
		request.getSession().setAttribute("password",matkhaumoi);
		
		return "thay đổi mật khẩu thành công" ;
		
	}
		
	
	
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logoutSystem(HttpServletRequest request,
			HttpServletResponse response) {
		//reset session attributes
		request.getSession().invalidate();
		
	}

	

}
