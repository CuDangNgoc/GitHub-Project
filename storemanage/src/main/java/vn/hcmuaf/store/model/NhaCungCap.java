package vn.hcmuaf.store.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name ="nhacungcap")

public class NhaCungCap {
	
	@Id
	
	@Column(name ="maNhaCungCap")
	private String maNhaCungCap;
	
	@Column(name="tenNhaCungCap")
	private String tenNhaCungCap;
	
	@Column(name="soDienThoai")
	private String soDienThoai;
	
	@Column(name="diaChi")
	private  String diaChi;
	

	public String getMaNhaCungCap() {
		return maNhaCungCap;
	}


	public void setMaNhaCungCap(String maNhaCungCap) {
		this.maNhaCungCap = maNhaCungCap;
	}


	public String getTenNhaCungCap() {
		return tenNhaCungCap;
	}


	public void setTenNhaCungCap(String tenNhaCungCap) {
		this.tenNhaCungCap = tenNhaCungCap;
	}


	public String getSoDienThoai() {
		return soDienThoai;
	}


	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	
	
	
}
