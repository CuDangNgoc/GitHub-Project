package vn.hcmuaf.store.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


@Entity
@Table(name="loaisanpham")
//@JsonIgnoreProperties(value = { "handler", "hibernateLazyInitializer" })
public class LoaiSanPham {

	@Id
	@Column(name="maLoaiSanPham")
	private String maLoaiSanPham;
	
	@Column(name="tenLoaiSanPham")
	private String tenLoaiSanPham;
	

	public String getMaLoaiSanPham() {
		return maLoaiSanPham;
	}

	public void setMaLoaiSanPham(String maLoaiSanPham) {
		this.maLoaiSanPham = maLoaiSanPham;
	}

	public String getTenLoaiSanPham() {
		return tenLoaiSanPham;
	}

	public void setTenLoaiSanPham(String tenLoaiSanPham) {
		this.tenLoaiSanPham = tenLoaiSanPham;
	}

	
	
}
