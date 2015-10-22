package vn.hcmuaf.store.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="chinhanh")
public class ChiNhanh implements Serializable{

	@Id
	@Column(name="maChiNhanh")
	private String maChiNhanh;
	
	@Column(name="tenChiNhanh")
	private String tenChiNhanh;
	
	@Column(name="diaChi")
	private String diaChi;
	
	@Column(name="ngayThanhLap")
	private Date ngayThanhLap;
	
	@Column(name="soDienThoai")
	private String soDienThoai;
	
	

	public String getMaChiNhanh() {
		return maChiNhanh;
	}

	public void setMaChiNhanh(String maChiNhanh) {
		this.maChiNhanh = maChiNhanh;
	}

	public String getTenChiNhanh() {
		return tenChiNhanh;
	}

	public void setTenChiNhanh(String tenChiNhanh) {
		this.tenChiNhanh = tenChiNhanh;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	@Temporal(TemporalType.DATE)
	public Date getNgayThanhLap() {
		return ngayThanhLap;
	}

	public void setNgayThanhLap(Date ngayThanhLap) {
		this.ngayThanhLap = ngayThanhLap;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	
	
}
