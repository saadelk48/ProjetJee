<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bibliothèque - Page Client</title>
  <style>
    /* Global styles */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f4f4f4;
    }

    /* Navbar styles */
    header {
      background-color: #333;
      color: white;
      padding: 10px 0;
    }

    nav ul {
      list-style: none;
      display: flex;
      justify-content: center;
    }

    nav ul li {
      margin: 0 20px;
    }

    nav ul li a {
      color: white;
      text-decoration: none;
      font-size: 18px;
    }

    nav ul li a:hover {
      text-decoration: underline;
    }

    /* Library info section */
    .library-info {
      text-align: center;
      padding: 40px;
      background-color: #fff;
    }

    .library-info h1 {
      color: #333;
    }

    .library-info p {
      font-size: 18px;
      color: #555;
    }

    .library-image {
      width: 80%;
      max-width: 600px;
      margin-top: 20px;
      border-radius: 8px;
    }

    /* Book list section */
    .book-list {
      display: flex;
      justify-content: space-around;
      padding: 40px;
      background-color: #f9f9f9;
    }

    .book {
      text-align: center;
      background-color: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 200px;
    }

    .book img {
      width: 100%;
      height: auto;
      border-radius: 4px;
    }

    .book h3 {
      margin: 15px 0;
      color: #333;
    }

    .book p {
      color: #555;
    }

    .book button {
      background-color: #4CAF50;
      color: white;
      padding: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .book button:hover {
      background-color: #45a049;
    }

    /* Footer styles */
    footer {
      background-color: #333;
      color: white;
      text-align: center;
      padding: 20px;
      position: absolute;
      width: 100%;
      bottom: 0;
    }
  </style>
</head>
<body>

  <!-- Navbar -->
  <header>
    <nav>
      <ul>
        <li><a href="#">Accueil</a></li>
        <li><a href="#">Nos Livres</a></li>
        <li><a href="#">Emprunter un Livre</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
  </header>

  <!-- Informations sur la Bibliothèque -->
  <section class="library-info">
    <h1>Bienvenue à notre bibliothèque</h1>
    <p>Notre bibliothèque offre une grande variété de livres allant des romans aux ouvrages techniques. Profitez de notre collection et empruntez vos livres préférés.</p>
    <img src="https://via.placeholder.com/600x300" alt="Bibliothèque" class="library-image">
  </section>

  <!-- Liste des Livres -->
  <section class="book-list">
    <h2>Nos Livres Disponibles</h2>
    
    <div class="book">
      <img src="https://via.placeholder.com/150x200" alt="Livre 1">
      <h3>Le Petit Prince</h3>
      <p>Auteur: Antoine de Saint-Exupéry</p>
      <button>Emprunter ce Livre</button>
    </div>

    <div class="book">
      <img src="https://via.placeholder.com/150x200" alt="Livre 2">
      <h3>1984</h3>
      <p>Auteur: George Orwell</p>
      <button>Emprunter ce Livre</button>
    </div>

    <div class="book">
      <img src="https://via.placeholder.com/150x200" alt="Livre 3">
      <h3>Moby Dick</h3>
      <p>Auteur: Herman Melville</p>
      <button>Emprunter ce Livre</button>
    </div>
  </section>

  <!-- Footer -->
  <footer>
    <p>&copy; 2025 Bibliothèque - Tous droits réservés</p>
  </footer>

</body>
</html>
