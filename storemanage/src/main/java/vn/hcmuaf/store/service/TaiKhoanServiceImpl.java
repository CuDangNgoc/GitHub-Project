package vn.hcmuaf.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.hcmuaf.store.dao.TaiKhoanDao;
import vn.hcmuaf.store.model.ChiNhanh;
import vn.hcmuaf.store.model.NhanVien;
import vn.hcmuaf.store.model.TaiKhoan;

@Service
public class TaiKhoanServiceImpl implements TaiKhoanService {

	@Autowired
	private TaiKhoanDao taiKhoanDao;
	
	@Override
	@Transactional
	public void addTaiKhoan(TaiKhoan taiKhoan) {
		// TODO Auto-generated method stub
		this.taiKhoanDao.addTaiKhoan(taiKhoan);
	}

	@Override
	@Transactional
	public void upDateTaiKhoan(TaiKhoan taiKhoan) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public List<TaiKhoan> listTaiKhoan() {
		// TODO Auto-generated method stub
		return this.taiKhoanDao.listTaiKhoan();
	}

	@Override
	@Transactional
	public TaiKhoan getTaiKhoanById(String maNhanVien) {
		// TODO Auto-generated method stub
		return this.taiKhoanDao.getTaiKhoanById(maNhanVien);
	}

	@Override
	@Transactional
	public void removeTaiKhoan(String maNhanVien) {
		// TODO Auto-generated method stub
	}

	@Override
	@Transactional
	public TaiKhoan checkLogin(String maNhanVien,String password) {
		// TODO Auto-generated method stub
		return this.taiKhoanDao.checkLogin(maNhanVien,password);
	}


	@Override
	@Transactional
	public int changeUserPass(String maNhanVien, String new_user_password) {
		// TODO Auto-generated method stub
		return this.taiKhoanDao.changeUserPass(maNhanVien, new_user_password);
	}

	@Override
	@Transactional
	public NhanVien getNhanVien(String maNhanVien) {
		// TODO Auto-generated method stub
		return this.taiKhoanDao.getNhanVien(maNhanVien);
	}


	@Override
	@Transactional
	public boolean checkExists(String maNhanVien) {
		// TODO Auto-generated method stub
		return this.taiKhoanDao.checkExists(maNhanVien);
	}


}
