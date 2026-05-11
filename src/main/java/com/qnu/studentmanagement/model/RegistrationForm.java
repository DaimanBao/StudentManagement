package com.qnu.studentmanagement.model;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.springframework.format.annotation.DateTimeFormat;

public class RegistrationForm {
    @NotBlank(message = "Số CMND không được để trống")
    private String soCMND;
    private String hoTen;
    private String email;
    private String soDT;
    private String diaChi;

    @NotBlank(message = "Vui lòng chọn trường")
    private String maTruong;
    
    @NotBlank(message = "Vui lòng chọn ngành")
    private String maNganh;
    
    private String heTN;

    @NotNull(message = "Ngày tốt nghiệp không được để trống")
    @Past(message = "Ngày tốt nghiệp không được là ngày tương lai") 
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngayTN;

    private String loaiTN;

	public String getSoCMND() {
		return soCMND;
	}

	public void setSoCMND(String soCMND) {
		this.soCMND = soCMND;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSoDT() {
		return soDT;
	}

	public void setSoDT(String soDT) {
		this.soDT = soDT;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getMaTruong() {
		return maTruong;
	}

	public void setMaTruong(String maTruong) {
		this.maTruong = maTruong;
	}

	public String getMaNganh() {
		return maNganh;
	}

	public void setMaNganh(String maNganh) {
		this.maNganh = maNganh;
	}

	public String getHeTN() {
		return heTN;
	}

	public void setHeTN(String heTN) {
		this.heTN = heTN;
	}

	public Date getNgayTN() {
		return ngayTN;
	}

	public void setNgayTN(Date ngayTN) {
		this.ngayTN = ngayTN;
	}

	public String getLoaiTN() {
		return loaiTN;
	}

	public void setLoaiTN(String loaiTN) {
		this.loaiTN = loaiTN;
	}
    
    	
}
