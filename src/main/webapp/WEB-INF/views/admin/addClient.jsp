<%@ include file="../layouts/adminHeader.jsp" %>
<%@ include file="../layouts/adminSidebar.jsp" %>

<!-- Add Admin Form -->
<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <h2 class="text-center mb-4 text-light">Add New Client</h2>
      <form action="${pageContext.request.contextPath}/Client" method="post">
        <input type="hidden" name="action" value="add">
        <div class="mb-3">
          <label for="name" class="form-label text-light">Name</label>
          <input type="text" name="name" id="name" class="form-control" placeholder="Enter client name" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label text-light">Email</label>
          <input type="email" name="email" id="email" class="form-control" placeholder="Enter client email" required>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label text-light">Password</label>
          <input type="password" name="password" id="password" class="form-control" placeholder="Enter client password" required>
        </div>
        <button type="submit" class="btn btn-success">Add Client</button>
      </form>
    </div>
  </div>
</div>

<%@ include file="../layouts/adminFooter.jsp" %>
