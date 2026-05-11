<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thất bại</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body { background-color: #fff5f5; display: flex; align-items: center; height: 100vh; font-family: 'Inter', sans-serif; }
        .fail-card { border: none; border-radius: 20px; box-shadow: 0 10px 30px rgba(220, 53, 69, 0.1); padding: 40px; text-align: center; background: white; }
        .error-icon { font-size: 80px; color: #dc3545; }
    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-5">
                <div class="fail-card">
                    <div class="error-icon">✘</div>
                    <h2 class="fw-bold mt-3 text-danger">Đã có lỗi xảy ra!</h2>
                    <p class="text-muted">Hệ thống không thể lưu thông tin lúc này. Vui lòng kiểm tra lại dữ liệu hoặc kết nối database.</p>
                    <div class="mt-4">
                        <a href="${pageContext.request.contextPath}/register" class="btn btn-danger px-4 me-2">Thử lại ngay</a>
                        <a href="${pageContext.request.contextPath}/" class="btn btn-outline-secondary px-4">Quay về chính</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>