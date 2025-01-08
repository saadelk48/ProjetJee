<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../layouts/adminHeader.jsp" %>
<%@ include file="../layouts/adminSidebar.jsp" %>

<div class="container mt-5">
  <h2 class="text-center mb-4 text-light">Client Management</h2>
  <table class="table table-striped table-hover">
    <thead class="table-dark">
    <tr>
      <th>#</th>
      <th>Name</th>
      <th>Email</th>
      <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="client" items="${clients}">
      <tr>
        <td>${client.id}</td>
        <td>${client.nom}</td>
        <td>${client.email}</td>
        <td>
          <a href="${pageContext.request.contextPath}/Client?action=edit&id=${client.id}" class="btn btn-primary btn-sm">Edit</a>
          <a href="${pageContext.request.contextPath}/Client?action=delete&id=${client.id}" class="btn btn-danger btn-sm"
             onclick="return confirm('Are you sure you want to delete this client?');">Delete</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <a href="${pageContext.request.contextPath}/Client?action=add" class="btn btn-success">Add New Client</a>
</div>

<%@ include file="../layouts/ProfileHeader.jsp" %>
<%@ include file="../layouts/adminFooter.jsp" %>
