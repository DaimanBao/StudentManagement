<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Chi tiết Tốt nghiệp & Việc làm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f8f9fa; }
        .table th { vertical-align: middle; text-align: center; background-color: #f1f3f5; }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card p-4 shadow-sm border-0">
        <h3 class="mb-4 fw-bold">📊 Thống kê Tốt nghiệp & Việc làm</h3>
        
        <form action="detail" method="get" class="row g-2 mb-4">
            <div class="col-md-4">
                <input type="text" name="q" class="form-control" placeholder="Nhập thông tin tìm kiếm..." value="${param.q}">
            </div>
            <div class="col-auto">
                <button type="submit" class="btn btn-success px-4">Lọc dữ liệu</button>
            </div>
        </form>

        <div class="table-responsive">
            <table class="table table-bordered align-middle">
                <thead class="table-light">
                    <tr>
                        <th rowspan="2">CMND</th>
                        <th rowspan="2">Họ Tên</th>
                        <th colspan="2" class="text-primary">Thông tin Tốt nghiệp</th>
                        <th colspan="3" class="text-success">Thông tin Công việc</th>
                    </tr>
                    <tr>
                        <th>Ngành</th><th>Trường</th>
                        <th>Công ty</th><th>Ngành nghề</th><th>Thời gian</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${results}" var="r">
                        <tr>
                            <td class="text-center">${r.SoCMND}</td>
                            <td>${r.HoTen}</td>
                            <td>${r.MaNganhTN}</td>
                            <td>${r.MaTruong}</td>
                            <td class="fw-semibold">${r.TenCongTy}</td>
                            <td>${r.MaNganhCT}</td>
                            <td class="text-center"><span class="badge bg-info text-dark">${r.ThoiGianLamViec} tháng</span></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>