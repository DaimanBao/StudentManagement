package com.qnu.studentmanagement.dao;

import com.qnu.studentmanagement.model.RegistrationForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.Map;

@Repository
public class RegistrationDAO {
    @Autowired
    private JdbcTemplate jdbcTemplate;


    public List<Map<String, Object>> getAllTruong() {
        return jdbcTemplate.queryForList("SELECT MaTruong, TenTruong FROM TRUONG");
    }


    public List<Map<String, Object>> getAllNganh() {
        return jdbcTemplate.queryForList("SELECT MaNganh, TenNganh FROM NGANH");
    }

    @Transactional
    public void save(RegistrationForm form) {

        String sqlSV = "INSERT INTO SINHVIEN (SoCMND, HoTen, Email, SoDT, DiaChi) VALUES (?,?,?,?,?)";
        jdbcTemplate.update(sqlSV, form.getSoCMND(), form.getHoTen(), form.getEmail(), form.getSoDT(), form.getDiaChi());

        String sqlTN = "INSERT INTO TOT_NGHIEP (SoCMND, MaTruong, MaNganh, HeTN, NgayTN, LoaiTN) VALUES (?,?,?,?,?,?)";
        jdbcTemplate.update(sqlTN, form.getSoCMND(), form.getMaTruong(), form.getMaNganh(), form.getHeTN(), form.getNgayTN(), form.getLoaiTN());
    }
    public List<Map<String, Object>> searchBasic(String keyword) {
        String sql = "SELECT SoCMND, HoTen, Email, SoDT, DiaChi FROM SINHVIEN " +
                     "WHERE HoTen LIKE ? OR SoCMND LIKE ?";
        return jdbcTemplate.queryForList(sql, "%" + keyword + "%", "%" + keyword + "%");
    }

    public List<Map<String, Object>> searchDetail(String keyword) {
        String sql = "SELECT sv.SoCMND, sv.HoTen, tn.MaNganh AS MaNganhTN, tn.MaTruong, " +
                     "cv.MaNganh AS MaNganhCT, cv.TenCongTy, cv.ThoiGianLamViec " +
                     "FROM SINHVIEN sv " +
                     "JOIN TOT_NGHIEP tn ON sv.SoCMND = tn.SoCMND " +
                     "LEFT JOIN CONG_VIEC cv ON sv.SoCMND = cv.SoCMND " +
                     "WHERE sv.HoTen LIKE ? OR sv.SoCMND LIKE ?";
        return jdbcTemplate.queryForList(sql, "%" + keyword + "%", "%" + keyword + "%");
    }
}