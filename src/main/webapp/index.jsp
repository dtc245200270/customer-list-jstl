<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.codegym.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #f8fafc; margin: 40px; }
        .table-container { max-width: 900px; margin: 0 auto; background: white; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.08); overflow: hidden; }
        h2 { text-align: center; color: #1b2a7a; padding: 25px 0 10px; margin: 0; }
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 14px 16px; text-align: left; border-bottom: 1px solid #e2e8f0; }
        th { background-color: #1b2a7a; color: white; font-weight: 600; text-transform: uppercase; font-size: 13px; }
        tr:hover { background-color: #f1f5f9; }
        .avatar { width: 60px; height: 60px; border-radius: 50%; object-fit: cover; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
    </style>
</head>
<body>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=100"));
    customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?w=100"));
    customerList.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=100"));
    customerList.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=100"));
    customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?w=100"));
    request.setAttribute("customerList", customerList);
%>
<div class="table-container">
    <h2>DANH SÁCH KHÁCH HÀNG</h2>
    <table>
        <thead>
            <tr>
                <th>STT</th>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>Địa chỉ</th>
                <th>Ảnh</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="customer" items="${customerList}" varStatus="loop">
                <tr>
                    <td>${loop.index + 1}</td>
                    <td style="font-weight: 600; color: #1e293b;">${customer.name}</td>
                    <td>${customer.dob}</td>
                    <td>${customer.address}</td>
                    <td><img src="${customer.image}" alt="${customer.name}" class="avatar"/></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
