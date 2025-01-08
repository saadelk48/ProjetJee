<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../layouts/adminHeader.jsp" %>
<%@ include file="../layouts/adminSidebar.jsp" %>

<div class="container mt-5">
    <h1 class="text-center mb-4 text-light">Client Management</h1>
    <table class="table table-striped table-hover">
        <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="admin" items="${admins}">
            <tr>
                <td>${admin.id}</td>
                <td>${admin.nom}</td>
                <td>${admin.email}</td>
                <td>${admin.password}</td>
                <td>
                    <a href="<%= request.getContextPath() %>/Admin?action=edit&id=${admin.id}" class="btn btn-primary btn-sm">Edit</a>
                    <a href="<%= request.getContextPath() %>/Admin?action=delete&id=${admin.id}" class="btn btn-danger btn-sm"
                       onclick="return confirm('Are you sure you want to delete this admin?');">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="<%= request.getContextPath() %>/Admin?action=add" class="btn btn-success">Add New Admin</a>
</div>

<%@ include file="../layouts/ProfileHeader.jsp" %>
<%@ include file="../layouts/adminFooter.jsp" %>
