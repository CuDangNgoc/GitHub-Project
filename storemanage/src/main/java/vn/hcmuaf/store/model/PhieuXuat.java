package vn.hcmuaf.store.model;

import java.util.Date;

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
@Table(name="phieuxuat")

public class PhieuXuat {

	@Id
	@Column(name="maPhieuXuat")
	private String maPhieuXuat;
	
	@Column(name="maSanPham")
	private String maSanPham;
	
	@Column(name="maChiNhanh")
	private String maChiNhanh;
	
	@Column(name="soLuong")
	private int soLuong;
	
	@Column(name="ngayGiao")
	private Date ngayGiao;
	
	public PhieuXuat() {
		super();
	}

	public PhieuXuat(String maPhieuXuat, String maSanPham, String maChiNhanh,
			int soLuong, Date ngayGiao) {
		super();
		this.maPhieuXuat = maPhieuXuat;
		this.maSanPham = maSanPham;
		this.maChiNhanh = maChiNhanh;
		this.soLuong = soLuong;
		this.ngayGiao = ngayGiao;
	}

	public String getMaPhieuXuat() {
		return maPhieuXuat;
	}

	public void setMaPhieuXuat(String maPhieuXuat) {
		this.maPhieuXuat = maPhieuXuat;
	}

	public String getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(String maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getMaChiNhanh() {
		return maChiNhanh;
	}

	public void setMaChiNhanh(String maChiNhanh) {
		this.maChiNhanh = maChiNhanh;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public Date getNgayGiao() {
		return ngayGiao;
	}

	public void setNgayGiao(Date ngayGiao) {
		this.ngayGiao = ngayGiao;
	}

	
	
}
