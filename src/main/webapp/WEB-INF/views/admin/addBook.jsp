<%@ include file="../layouts/adminHeader.jsp" %>
<%@ include file="../layouts/adminSidebar.jsp" %>

<!-- Add Book Form -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h2 class="text-center mb-4 text-light">Add New Book</h2>
            <form action="<%= request.getContextPath() %>/book" method="post">
                <!-- Book Title -->
                <div class="mb-3">
                    <label for="title" class="form-label text-light">Book Title</label>
                    <input type="text" name="title" id="title" class="form-control" placeholder="Enter book title" required>
                </div>

                <!-- Book Author -->
                <div class="mb-3">
                    <label for="author" class="form-label text-light">Author</label>
                    <input type="text" name="author" id="author" class="form-control" placeholder="Enter author's name" required>
                </div>

                <!-- Book Category -->
                <div class="mb-3">
                    <label for="category" class="form-label text-light">Category</label>
                    <input type="text" name="category" id="category" class="form-control" placeholder="Enter book category" required>
                </div>

                <!-- Book Quantity -->
                <div class="mb-3">
                    <label for="quantity" class="form-label text-light">Quantity</label>
                    <input type="number" name="quantity" id="quantity" class="form-control" placeholder="Enter quantity" min="1" required>
                </div>

                <!-- Submit Button -->
                <div class="text-center">
                    <button type="submit" class="btn btn-success">Add Book</button>
                    <a href="books?action=list" class="btn btn-secondary">Cancel</a>
                </div>
            </form>
        </div>
    </div>
</div>

<%@ include file="../layouts/adminFooter.jsp" %>
