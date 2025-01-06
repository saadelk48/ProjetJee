<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Inscription réussie</title>
  <style>
    .success {
      color: green;
      font-weight: bold;
      text-align: center;
      margin-top: 20px;
    }
    a {
      text-decoration: none;
      color: blue;
    }
  </style>
</head>
<body>
<div class="success">
  <p>Inscription réussie !</p>
  <a href="${pageContext.request.contextPath}/clientApp">Retour à la page d'accueil</a>
</div>
</body>
</html>

