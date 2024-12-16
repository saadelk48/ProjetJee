<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../layouts/adminHeader.jsp" %>
<%@ include file="../layouts/adminSidebar.jsp" %>



<div class="container mt-5">
    <h1 class="text-center mb-4 text-light">Book Management</h1>
    <table class="table table-striped table-hover">
        <thead class="table-dark">
        <tr>
            <th>#</th>
            <th>Title</th>
            <th>Author</th>
            <th>Category</th>
            <th>Quantity</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>

            <c:forEach var="book" items="${books}">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td>${book.category}</td>
                    <td>${book.quantity}</td>
                    <td>
                        <button class="btn btn-primary btn-sm"
                                onclick="window.location.href='${pageContext.request.contextPath}/book?action=edit&id=${book.id}'">
                            Edit</button>
                        <button class="btn btn-danger btn-sm" onclick="if(confirm('Are you sure you want to delete this book?'))
                                window.location.href='${pageContext.request.contextPath}/book?action=delete&id=${book.id}'" >
                            Delete</button>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="<%= request.getContextPath() %>/book?action=add"  class="btn btn-success">Add New Book</a>
</div>
<%@ include file="../layouts/ProfileHeader.jsp" %>
<%@ include file="../layouts/adminFooter.jsp" %>

