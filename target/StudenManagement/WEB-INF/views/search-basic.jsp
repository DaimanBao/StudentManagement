<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tìm kiếm sinh viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f8f9fa; }
        .card { border-radius: 15px; border: none; box-shadow: 0 4px 15px rgba(0,0,0,0.05); }
        .table thead { background-color: #212529; color: white; }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card p-4">
        <h3 class="mb-4 fw-bold text-dark">🔍 Tìm kiếm sinh viên</h3>
        
        <form action="basic" method="get" class="row g-2 mb-4">
            <div class="col-md-4">
                <input type="text" name="q" class="form-control" placeholder="Nhập tên hoặc CMND..." value="${param.q}">
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-primary px-4">Tìm kiếm</button>
            </div>
        </form>

        <div class="table-responsive rounded-3 border">
            <table class="table table-hover table-striped mb-0">
                <thead>
                    <tr>
                        <th>SoCMND</th>
                        <th>Họ Tên</th>
                        <th>Email</th>
                        <th>Số ĐT</th>
                        <th>Địa chỉ</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${empty results}">
                        <tr><td colspan="5" class="text-center py-4 text-muted">Không tìm thấy dữ liệu</td></tr>
                    </c:if>
                    <c:forEach items="${results}" var="sv">
                        <tr>
                            <td class="fw-bold text-primary">${sv.SoCMND}</td>
                            <td>${sv.HoTen}</td>
                            <td>${sv.Email}</td>
                            <td>${sv.SoDT}</td>
                            <td>${sv.DiaChi}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>