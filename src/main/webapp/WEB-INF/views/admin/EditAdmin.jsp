<%@ include file="../layouts/adminHeader.jsp" %>
<%@ include file="../layouts/adminSidebar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container mt-5">
    <h2 class="text-center mb-4 text-light">Edit Admin</h2>
    <form action="${pageContext.request.contextPath}/Admin" method="post">
        <!-- Hidden field to pass admin ID for update -->
        <input type="hidden" name="id" value="${admin.id}">

        <!-- Name Field -->
        <div class="mb-3">
            <label for="name" class="form-label text-light">Name</label>
            <input type="text" name="name" id="name" class="form-control" value="${admin.nom}" placeholder="Enter name" required>
        </div>

        <!-- Email Field -->
        <div class="mb-3">
            <label for="email" class="form-label text-light">Email</label>
            <input type="email" name="email" id="email" class="form-control" value="${admin.email}" placeholder="Enter email" required>
        </div>

        <!-- Password Field -->
        <div class="mb-3">
            <label for="password" class="form-label text-light">Password</label>
            <input type="password" name="password" id="password" class="form-control" placeholder="Enter new password (leave blank to keep unchanged)">
        </div>

        <!-- Submit Button -->
        <div class="text-center">
            <button type="submit" class="btn btn-success">Save Changes</button>
            <a href="${pageContext.request.contextPath}/Admin?action=list" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</div>

<%@ include file="../layouts/adminFooter.jsp" %>
