package vn.hcmuaf.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.hcmuaf.store.model.ChiNhanh;
import vn.hcmuaf.store.service.ChiNhanhService;


//@Controller
public class ChiNhanhController {

	@Autowired
	private ChiNhanhService chiNhanhService;
	
	
	@RequestMapping(value ="/", method = RequestMethod.GET)
	public String login() {
		return "show";
	}
//	
	
//	
//	@RequestMapping(value ="/getlist", method = RequestMethod.GET)
//	public @ResponseBody TaiKhoan  getlist() {
//		
//		TaiKhoan tk = this.taiKhoanService.getTaiKhoanById("NV1");
//		
//			
//		return tk;
//		
//	}
//	
//
//	@RequestMapping(value ="/getc", method = RequestMethod.GET)
//	public @ResponseBody ChiNhanh  get() {
//		ChiNhanh tk = this.chiNhanhService.getChiNhanhById("LL");
//		return tk;
//		
//	}
	
	
	
	@RequestMapping(value ="/getlist", method = RequestMethod.GET)
	public  String  get(ModelMap model) {
		ChiNhanh tk = this.chiNhanhService.getChiNhanhById("LL");
	
		model.addAttribute("list", tk);
		
		return "home";
		
	}
	
	
}
