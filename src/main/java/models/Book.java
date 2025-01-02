package models;

public class Book {
    private int id;
    private String titre;
    private String auteur;
    private String categorie;
    private int nbrDisponible;

    public Book(int id, String titre, String auteur, String categorie, int nbrDisponible) {
        this.id = id;
        this.titre = titre;
        this.auteur = auteur;
        this.categorie = categorie;
        this.nbrDisponible = nbrDisponible;
    }

    // Getters et setters
}
