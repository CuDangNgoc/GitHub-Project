package vn.hcmuaf.store.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import vn.hcmuaf.store.model.ChiNhanh;
import vn.hcmuaf.store.model.NhanVien;
import vn.hcmuaf.store.model.TaiKhoan;

@Repository
public class TaiKhoanDaoImpl implements TaiKhoanDao {
	private static final Logger logger = LoggerFactory
			.getLogger(TaiKhoanDao.class);

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addTaiKhoan(TaiKhoan taiKhoan) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(taiKhoan);
		logger.info("Member saved successfully, Member Details=" + taiKhoan);
	}

	@Override
	public void upDateTaiKhoan(TaiKhoan taiKhoan) {
		// TODO Auto-generated method stub

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TaiKhoan> listTaiKhoan() {
		Session session = this.sessionFactory.getCurrentSession();
		Query query = session.createQuery("from TaiKhoan");
		List<TaiKhoan> userList = query.list();
		for (TaiKhoan m : userList) {
			logger.info("User List:" + m);
		}
		return userList;
	}

	@Override
	public TaiKhoan getTaiKhoanById(String maNhanVien) {
		try {
			// Return a user object with determined userName
			return (TaiKhoan) sessionFactory
					.getCurrentSession()
					.createQuery(
							"FROM TaiKhoan WHERE maNhanVien='" + maNhanVien
									+ "'").list().get(0);
		} catch (Exception e) {
			return null;
		} finally {
		}

	}

	@Override
	public void removeTaiKhoan(String maTaiKhoan) {
		// TODO Auto-generated method stub

	}

	@Override
	public TaiKhoan checkLogin(String maNhanVien ,String password) {
		try {
			// Return a user object with determined userName
			return (TaiKhoan) sessionFactory
					.getCurrentSession()
					.createQuery(
							"FROM TaiKhoan WHERE maNhanVien='" + maNhanVien
									+ "' and matKhau = '"+password+"'   ").list().get(0);
		} catch (Exception e) {
			return null;
		} finally {
		}

	}

	@Override
	public int changeUserPass(String maNhanVien, String new_user_password) {

		try {
			TaiKhoan taiKhoan = this.getTaiKhoanById(maNhanVien);
			taiKhoan.setMatKhau(new_user_password);
			this.sessionFactory.getCurrentSession().update(taiKhoan);
			return 1;

		} catch (Exception e) {
			return 0;
		}

	}

	@Override
	@SuppressWarnings("unchecked")
	public NhanVien getNhanVien(String maNhanVien) {
		
		if(this.checkExists(maNhanVien))
		{
			NhanVien nv =(NhanVien)sessionFactory.getCurrentSession().createQuery("from NhanVien where maNhanVien ='"+maNhanVien+"' ").list().get(0);
			return nv;
		}
		
		return null;
	}

	
	@Override
	public boolean checkExists(String maNhanVien) {

		TaiKhoan tk = this.getTaiKhoanById(maNhanVien);
		if (tk != null){
			return true;
		}
		else
		return false;
	}

}
