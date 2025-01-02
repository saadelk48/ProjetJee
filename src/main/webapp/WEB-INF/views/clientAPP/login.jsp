<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/login.css">
  <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<div class="main">
  <input type="checkbox" id="chk" aria-hidden="true">

  <div class="signup">
    <form method="post" action="">
      <label for="chk" aria-hidden="true">Sign up</label>
      <input type="text" name="nom" placeholder="User name" required>
      <input type="email" name="email" placeholder="Email" required>
      <input type="password" name="password" placeholder="Password" required>
      <button type="submit">Sign up</button>
    </form>
  </div>

  <div class="login">
    <form method="post" action="">
      <label for="chk" aria-hidden="true">Login</label>
      <input type="email" name="email" placeholder="Email" required>
      <input type="password" name="pswd" placeholder="Password" required>
      <button type="submit">Login</button>
    </form>
  </div>
</div>
</body>
</html>