package vn.hcmuaf.store.dao;

import java.util.List;

import vn.hcmuaf.store.model.ChiNhanh;
import vn.hcmuaf.store.model.NhanVien;
import vn.hcmuaf.store.model.TaiKhoan;

public interface TaiKhoanDao {
	
	
	public boolean checkExists(String maNhanVien);
	
	public void addTaiKhoan(TaiKhoan taiKhoan);

	public void upDateTaiKhoan(TaiKhoan taiKhoan);

	public List<TaiKhoan> listTaiKhoan();

	public TaiKhoan getTaiKhoanById(String maNhanVien);
	
	public NhanVien getNhanVien(String maNhanVien);
	
	public void removeTaiKhoan(String maNhanVien);
	
	public TaiKhoan checkLogin(String maNhanVien,String password);
	
	public int changeUserPass(String maNhanVien ,String new_user_password);
	
	
	
}
