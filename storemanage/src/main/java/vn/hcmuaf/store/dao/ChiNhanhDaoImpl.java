package vn.hcmuaf.store.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import vn.hcmuaf.store.model.ChiNhanh;

@Repository
public class ChiNhanhDaoImpl implements ChiNhanhDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	
	@Override
	public ChiNhanh getChiNhanhById(String maChiNhanh) {
		
		try {
			// Return a user object with determined userName
			return (ChiNhanh) sessionFactory.getCurrentSession()
					.createQuery("FROM ChiNhanh WHERE maChiNhanh='" + maChiNhanh + "'")
					.list().get(0);
		} catch (Exception e) {
			return null;
		}finally{
		}
	}
		
	}

	

