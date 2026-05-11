<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hệ thống Quản lý Sinh viên</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
    <style>
        body { font-family: 'Inter', sans-serif; background-color: #f0f2f5; height: 100vh; display: flex; align-items: center; }
        .main-card { border: none; border-radius: 20px; box-shadow: 0 10px 30px rgba(0,0,0,0.1); overflow: hidden; }
        .welcome-section { background: linear-gradient(135deg, #0d6efd 0%, #0043a8 100%); color: white; padding: 60px 40px; }
        .menu-item { transition: all 0.3s ease; border: 1px solid #eee; border-radius: 12px; margin-bottom: 15px; text-decoration: none; color: #333; display: flex; align-items: center; padding: 20px; }
        .menu-item:hover { transform: translateY(-3px); box-shadow: 0 5px 15px rgba(0,0,0,0.05); border-color: #0d6efd; color: #0d6efd; }
        .icon-box { font-size: 24px; margin-right: 15px; }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-10">
            <div class="card main-card">
                <div class="row g-0">
                    <div class="col-md-5 welcome-section d-flex flex-column justify-content-center">
                        <h1 class="fw-bold mb-3">Xin chào, Bảo!</h1>
                        <p class="lead opacity-75">Chào mừng bạn đến với Hệ thống Quản lý Tốt nghiệp và Việc làm Sinh viên.</p>
                        <hr class="my-4 opacity-25">
                        <small class="opacity-50">© 2026 Quy Nhon University - Software Engineering</small>
                    </div>
                    
                    <div class="col-md-7 p-5 bg-white">
                        <h4 class="mb-4 fw-bold text-secondary">DANH MỤC CHỨC NĂNG</h4>
                        
                        <a href="register" class="menu-item">
                            <div class="icon-box">📝</div>
                            <div>
                                <div class="fw-bold">Khai báo tốt nghiệp</div>
                                <small class="text-muted">Nhập thông tin sinh viên và trường lớp (Yêu cầu 2)</small>
                            </div>
                        </a>

                        <a href="search/basic" class="menu-item">
                            <div class="icon-box">🔍</div>
                            <div>
                                <div class="fw-bold">Tìm kiếm cơ bản</div>
                                <small class="text-muted">Xem thông tin CMND, Họ tên, Email, SĐT (Yêu cầu 3.1)</small>
                            </div>
                        </a>

                        <a href="search/detail" class="menu-item">
                            <div class="icon-box">📊</div>
                            <div>
                                <div class="fw-bold">Thống kê Việc làm</div>
                                <small class="text-muted">Chi tiết tốt nghiệp và tình hình công việc (Yêu cầu 3.2)</small>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>