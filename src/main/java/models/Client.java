package models;

import java.util.ArrayList;
import java.util.List;

public class Client extends User {
    public Client(int id, String nom, String email, String password) {
        super(id, nom, email, password);
    }

    public void chercherLivre() {
        // Logic pour chercher un livre
    }

    public void emprunterLivre() {
        // Logic pour emprunter un livre
    }
}