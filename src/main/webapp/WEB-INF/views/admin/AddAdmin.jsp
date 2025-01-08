<%@ include file="../layouts/adminHeader.jsp" %>
<%@ include file="../layouts/adminSidebar.jsp" %>

<!-- Add Admin Form -->
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <h2 class="text-center mb-4 text-light">Add New Admin</h2>
      <form action="<%= request.getContextPath() %>/Admin" method="post">
        <!-- Admin Name -->
        <div class="mb-3">
          <label for="name" class="form-label text-light">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Enter admin's name" required>
        </div>

        <!-- Admin Email -->
        <div class="mb-3">
          <label for="email" class="form-label text-light">Email</label>
          <input type="email" name="email" id="email" class="form-control" placeholder="Enter admin's email" required>
        </div>

        <!-- Admin Password -->
        <div class="mb-3">
          <label for="password" class="form-label text-light">Password</label>
          <input type="password" name="password" id="password" class="form-control" placeholder="Enter a password" required>
        </div>

        <!-- Submit Button -->
        <div class="text-center">
          <button type="submit" class="btn btn-success">Add Admin</button>
          <a href="<%= request.getContextPath() %>/Admin?action=list" class="btn btn-secondary">Cancel</a>
        </div>
      </form>
    </div>
  </div>
</div>

<%@ include file="../layouts/adminFooter.jsp" %>
