package models;

import java.util.Date;

public class Emprunt {
    private int id;
    private int clientId;
    private int bookId;
    private String status;
    private Date dateEmprunt;
    private Date dateRetour;

    // Constructeur par défaut
    public Emprunt() {
    }

    // Constructeur avec paramètres
    public Emprunt(int id, int clientId, int bookId, Date dateEmprunt, Date dateRetour, String status) {
        this.id = id;
        this.clientId = clientId;
        this.bookId = bookId;
        this.dateEmprunt = dateEmprunt;
        this.dateRetour = dateRetour;
        this.status = status;
    }

    // Getters
    public int getId() {
        return id;
    }

    public int getClientId() {
        return clientId;
    }

    public int getBookId() {
        return bookId;
    }

    public String getStatus() {
        return status;
    }

    public Date getDateEmprunt() {
        return dateEmprunt;
    }

    public Date getDateRetour() {
        return dateRetour;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public void setLivreId(int bookId) {
        this.bookId = bookId;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setDateEmprunt(Date dateEmprunt) {
        this.dateEmprunt = dateEmprunt;
    }

    public void setDateRetour(Date dateRetour) {
        this.dateRetour = dateRetour;
    }

    @Override
    public String toString() {
        return "Emprunt{" +
                "id=" + id +
                ", clientId=" + clientId +
                ", bookId=" + bookId +
                ", dateEmprunt=" + dateEmprunt +
                ", dateRetour=" + dateRetour +
                ", status='" + status + '\'' +
                '}';
    }
}
