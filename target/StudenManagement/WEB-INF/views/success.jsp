<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thành công</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #f8f9fa; display: flex; align-items: center; height: 100vh; }
        .success-card { border: none; border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); padding: 40px; text-align: center; background: white; }
        .checkmark { font-size: 80px; color: #28a745; }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="success-card">
                    <div class="checkmark">✔</div>
                    <h2 class="fw-bold mt-3">Thành công!</h2>
                    <p class="text-muted">Thông tin tốt nghiệp của sinh viên đã được lưu vào hệ thống.</p>
                    <div class="mt-4">
                        <a href="${pageContext.request.contextPath}/" class="btn btn-primary px-4 me-2">Về trang chủ</a>
                        <a href="${pageContext.request.contextPath}/register" class="btn btn-outline-secondary px-4">Tiếp tục nhập</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>