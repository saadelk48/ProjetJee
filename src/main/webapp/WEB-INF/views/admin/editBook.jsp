<%@ include file="../layouts/adminHeader.jsp" %>
<%@ include file="../layouts/adminSidebar.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container mt-5">
    <h2 class="text-center mb-4 text-light">Edit Book</h2>
    <form action="${pageContext.request.contextPath}/book" method="post">
        <!-- Hidden input for Book ID -->
        <input type="hidden" name="id" value="${book.id}">

        <!-- Book Title -->
        <div class="mb-3">
            <label for="title" class="form-label text-light">Book Title</label>
            <input type="text" name="title" id="title" class="form-control" value="${book.title}" required>
        </div>

        <!-- Book Author -->
        <div class="mb-3">
            <label for="author" class="form-label text-light">Author</label>
            <input type="text" name="author" id="author" class="form-control" value="${book.author}" required>
        </div>

        <!-- Book Category -->
        <div class="mb-3">
            <label for="category" class="form-label text-light">Category</label>
            <input type="text" name="category" id="category" class="form-control" value="${book.category}" required>
        </div>

        <!-- Book Quantity -->
        <div class="mb-3">
            <label for="quantity" class="form-label text-light">Quantity</label>
            <input type="number" name="quantity" id="quantity" class="form-control" value="${book.quantity}" min="1" required>
        </div>

        <!-- Submit Button -->
        <div class="text-center">
            <button type="submit" class="btn btn-success">Update Book</button>
            <a href="${pageContext.request.contextPath}/book?action=list" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</div>

<%@ include file="../layouts/adminFooter.jsp" %>
