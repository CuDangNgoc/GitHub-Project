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
@Table(name = "phieunhap")
public class PhieuNhap {

	@Id
	@Column(name = "maPhieuNhap")
	private String maPhieuNhap;

	@Column(name = "maSanPham")
	private String maSanPham;

	@Column(name = "maNhaCungCap")
	private String maNhaCungCap;

	@Column(name = "soLuong")
	private int soLuong;

	@Column(name = "ngayNhap")
	private Date ngayNhap;

	public PhieuNhap() {
		super();
	}

	public PhieuNhap(String maPhieuNhap, String maSanPham, String maNhaCungCap,
			int soLuong, Date ngayNhap) {
		this.maPhieuNhap = maPhieuNhap;
		this.maSanPham = maSanPham;
		this.maNhaCungCap = maNhaCungCap;
		this.soLuong = soLuong;
		this.ngayNhap = ngayNhap;
	}

	public String getMaPhieuNhap() {
		return maPhieuNhap;
	}

	public void setMaPhieuNhap(String maPhieuNhap) {
		this.maPhieuNhap = maPhieuNhap;
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

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public Date getNgayNhap() {
		return ngayNhap;
	}

	public void setNgayNhap(Date ngayNhap) {
		this.ngayNhap = ngayNhap;
	}

}
