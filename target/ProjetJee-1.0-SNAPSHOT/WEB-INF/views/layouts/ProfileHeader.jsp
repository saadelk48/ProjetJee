<%@ page session="true" %>
<div class="right">
  <div class="top">
    <button id="menu-btn">
      <span class="material-icons-sharp">menu</span>
    </button>

    <div class="theme-toggler">
      <span class="material-icons-sharp active">dark_mode</span>
      <span class="material-icons-sharp">light_mode</span>
    </div>

    <div class="profile">
      <div class="info">
        <p>Bonjour, <b><%= session.getAttribute("userName") != null ? session.getAttribute("userName") : "Utilisateur" %></b></p>
        <small class="text-muted text-sm">
          <%= session.getAttribute("role") != null ? session.getAttribute("role") : "admin" %>
        </small>
      </div>
      <div class="profile-photo">
        <img src="${pageContext.request.contextPath}/static/images/avatar.png" alt="">
      </div>
    </div>
  </div>
</div>