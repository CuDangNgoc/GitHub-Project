package vn.hcmuaf.store.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vn.hcmuaf.store.dao.ChiNhanhDao;
import vn.hcmuaf.store.model.ChiNhanh;

@Service
public class ChiNhanhServiceImpl implements ChiNhanhService {

	@Autowired
	private ChiNhanhDao chiNhanhDao;
	

	@Override
	@Transactional
	public ChiNhanh getChiNhanhById(String maChiNhanh) {
		// TODO Auto-generated method stub
		return this.chiNhanhDao.getChiNhanhById(maChiNhanh);
	}
	
}
