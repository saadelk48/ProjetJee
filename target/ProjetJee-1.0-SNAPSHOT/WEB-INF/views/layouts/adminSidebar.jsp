<aside>
    <div class="top">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/static/images/library.png" alt="Library Logo">
            <h2>Library</h2>
        </div>
        <div class="close" id="close-btn">
            <span class="material-icons-sharp">close</span>
        </div>
    </div>
    <div class="sidebar">
        <a href="Admin?action=list">
            <span class="material-symbols-outlined">admin_panel_settings</span>
            <h3>Admin List</h3>
        </a>
        <a href="Client?action=list">
            <span class="material-icons-sharp">group</span>
            <h3>client List</h3>
        </a>
        <a href="dashboard.jsp">
            <span class="material-icons-sharp">grid_view</span>
            <h3>Dashboard</h3>
        </a>
        <a href="book?action=list">
            <span class="material-icons-sharp">book</span>
            <h3>Books</h3>
        </a>
        <a href="logout">
            <span class="material-icons-sharp">logout</span>
            <h3>Logout</h3>
        </a>
    </div>
</aside>