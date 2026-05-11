<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Khai báo tốt nghiệp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f8f9fa; }
        .card { border: none; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1); }
        .btn-primary { border-radius: 8px; padding: 10px 20px; font-weight: 600; }
        .form-control:focus, .form-select:focus { border-color: #0d6efd; box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.15); }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card p-4">
                <h2 class="text-center mb-4 text-primary fw-bold">KHAI BÁO THÔNG TIN TỐT NGHIỆP</h2>
                <form:form action="register" method="post" modelAttribute="regForm" class="row g-3">
                    
                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Số CMND</label>
                        <form:input path="soCMND" class="form-control" placeholder="Nhập số CMND"/>
                        <form:errors path="soCMND" cssClass="text-danger small mt-1 d-block"/>
                    </div>
                    
                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Họ và Tên</label>
                        <form:input path="hoTen" class="form-control" placeholder="Nguyễn Văn A"/>
                    </div>

                    <div class="col-md-12">
                        <label class="form-label fw-semibold">Email</label>
                        <form:input path="email" class="form-control" placeholder="example@qnu.edu.vn"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Trường tốt nghiệp</label>
                        <form:select path="maTruong" class="form-select">
                            <form:option value="" label="-- Chọn Trường --"/>
                            <c:forEach items="${listTruong}" var="t">
                                <form:option value="${t.MaTruong}" label="${t.TenTruong}"/>
                            </c:forEach>
                        </form:select>
                        <form:errors path="maTruong" cssClass="text-danger small mt-1 d-block"/>
                    </div>

                    <div class="col-md-6">
                        <label class="form-label fw-semibold">Ngành tốt nghiệp</label>
                        <form:select path="maNganh" class="form-select">
                            <form:option value="" label="-- Chọn Ngành --"/>
                            <c:forEach items="${listNganh}" var="n">
                                <form:option value="${n.MaNganh}" label="${n.TenNganh}"/>
                            </c:forEach>
                        </form:select>
                        <form:errors path="maNganh" cssClass="text-danger small mt-1 d-block"/>
                    </div>

                    <div class="col-md-4">
                        <label class="form-label fw-semibold">Ngày tốt nghiệp</label>
                        <form:input type="date" path="ngayTN" class="form-control"/>
                        <form:errors path="ngayTN" cssClass="text-danger small mt-1 d-block"/>
                    </div>

                    <div class="col-md-4">
                        <label class="form-label fw-semibold">Hệ TN</label>
                        <form:input path="heTN" class="form-control" placeholder="Chính quy..."/>
                    </div>

                    <div class="col-md-4">
                        <label class="form-label fw-semibold">Loại TN</label>
                        <form:input path="loaiTN" class="form-control" placeholder="Khá, Giỏi..."/>
                    </div>

                    <div class="col-12 text-center mt-4">
                        <button type="submit" class="btn btn-primary px-5 shadow-sm">Gửi Thông Tin</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
</body>
</html>