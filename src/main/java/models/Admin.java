package models;

public class Admin extends User {
    public Admin(int id, String nom, String email, String password) {
        super(id, nom, email, password);
    }

    public void ajouterLivre() {
        // Logic pour ajouter un livre
    }

    public void supprimerLivre() {
        // Logic pour supprimer un livre
    }
}

