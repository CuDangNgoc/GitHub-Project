package vn.hcmuaf.store.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.CascadeType;
import javax.persistence.UniqueConstraint;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="nhanvien")
public class NhanVien   {

	 @Id	
	 @Column(name="maNhanVien")
	 private String maNhanVien;
	
	 @Column(name="maChucVu")
     private String maChucVu;
	
	 
	 @Column(name="maChiNhanh")
     private String maChiNhanh;
	
	 @Column(name="tenNhanVien")
	 private String tenNhanVien;
	
	 @Column(name="ngayVaoLam")
	 private Date ngayVaoLam;
	
	 @Column(name="ngaySinh")
	 private Date ngaySinh;
	
	 @Column(name="heSoLuong")
	 private float heSoLuong;
	
	 @Column(name="luongCoBan")
	 private float luongCoBan;
	
	@Column(name="soDienThoai")
	private String soDienThoai;
	

	public NhanVien() {
	}


	public NhanVien(String maNhanVien, String maChucVu, String maChiNhanh,
			String tenNhanVien, Date ngayVaoLam, Date ngaySinh,
			float heSoLuong, float luongCoBan, String soDienThoai) {
		super();
		this.maNhanVien = maNhanVien;
		this.maChucVu = maChucVu;
		this.maChiNhanh = maChiNhanh;
		this.tenNhanVien = tenNhanVien;
		this.ngayVaoLam = ngayVaoLam;
		this.ngaySinh = ngaySinh;
		this.heSoLuong = heSoLuong;
		this.luongCoBan = luongCoBan;
		this.soDienThoai = soDienThoai;
	}


	public String getMaNhanVien() {
		return maNhanVien;
	}


	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
	}


	public String getMaChucVu() {
		return maChucVu;
	}


	public void setMaChucVu(String maChucVu) {
		this.maChucVu = maChucVu;
	}


	public String getMaChiNhanh() {
		return maChiNhanh;
	}


	public void setMaChiNhanh(String maChiNhanh) {
		this.maChiNhanh = maChiNhanh;
	}


	public String getTenNhanVien() {
		return tenNhanVien;
	}


	public void setTenNhanVien(String tenNhanVien) {
		this.tenNhanVien = tenNhanVien;
	}


	public Date getNgayVaoLam() {
		return ngayVaoLam;
	}


	public void setNgayVaoLam(Date ngayVaoLam) {
		this.ngayVaoLam = ngayVaoLam;
	}


	public Date getNgaySinh() {
		return ngaySinh;
	}


	public void setNgaySinh(Date ngaySinh) {
		this.ngaySinh = ngaySinh;
	}


	public float getHeSoLuong() {
		return heSoLuong;
	}


	public void setHeSoLuong(float heSoLuong) {
		this.heSoLuong = heSoLuong;
	}


	public float getLuongCoBan() {
		return luongCoBan;
	}


	public void setLuongCoBan(float luongCoBan) {
		this.luongCoBan = luongCoBan;
	}


	public String getSoDienThoai() {
		return soDienThoai;
	}


	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	
	

}
