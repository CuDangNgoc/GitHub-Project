package vn.hcmuaf.store.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="sanpham")
public class SanPham {

	@Id
	@Column(name="maSanPham")
	private String maSanPham;
	
	@Column(name = "maNhaCungCap")
	private String maNhaCungCap;
	
	@Column(name = "maLoaiSanPham")
	private String maLoaiSanPham;
	
	@Column(name="tenSanPham")
	private String tenSanPham;
	
	@Column(name="donGia")
	private float donGia;
	
	@Column(name="donViTinh")
	private  String donViTinh;
	
	public SanPham() {
	}

	public SanPham(String maSanPham, String maNhaCungCap, String maLoaiSanPham,
			String tenSanPham, float donGia, String donViTinh) {
		super();
		this.maSanPham = maSanPham;
		this.maNhaCungCap = maNhaCungCap;
		this.maLoaiSanPham = maLoaiSanPham;
		this.tenSanPham = tenSanPham;
		this.donGia = donGia;
		this.donViTinh = donViTinh;
	}

	public String getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(String maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getMaNhaCungCap() {
		return maNhaCungCap;
	}

	public void setMaNhaCungCap(String maNhaCungCap) {
		this.maNhaCungCap = maNhaCungCap;
	}

	public String getMaLoaiSanPham() {
		return maLoaiSanPham;
	}

	public void setMaLoaiSanPham(String maLoaiSanPham) {
		this.maLoaiSanPham = maLoaiSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public float getDonGia() {
		return donGia;
	}

	public void setDonGia(float donGia) {
		this.donGia = donGia;
	}

	public String getDonViTinh() {
		return donViTinh;
	}

	public void setDonViTinh(String donViTinh) {
		this.donViTinh = donViTinh;
	}

	
	
}
