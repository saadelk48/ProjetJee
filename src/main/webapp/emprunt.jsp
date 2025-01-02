<%@ page import="java.util.List" %>
<%@ page import="dao.EmpruntDAO" %>
<%@ page import="models.Emprunt" %>

<div class="main-content">
    <h1>Liste des emprunts</h1>

    <%
        // Simuler un client connecté (par exemple, avec session)
        int clientId = (int) session.getAttribute("clientId");

        // Récupérer les emprunts
        EmpruntDAO empruntDAO = new EmpruntDAO();
        List<Emprunt> emprunts = empruntDAO.findEmpruntsByClientId(clientId);

        if (emprunts.isEmpty()) {
    %>
            <p>Aucun emprunt trouvé.</p>
    <%
        } else {
    %>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Livre ID</th>
                    <th>Date d'emprunt</th>
                    <th>Date de retour</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (Emprunt emprunt : emprunts) {
                %>
                    <tr>
                        <td><%= emprunt.getId() %></td>
                        <td><%= emprunt.getBookId() %></td>
                        <td><%= emprunt.getDateEmprunt() %></td>
                        <td><%= emprunt.getDateRetour() %></td>
                        <td><%= emprunt.getStatus() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    <%
        }
    %>
</div>

