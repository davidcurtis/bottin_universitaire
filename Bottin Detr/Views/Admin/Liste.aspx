<%@ Page Title="" Language="C#" MasterPageFile="~/Views/SharedAdmin/Admin.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Bottin_DetR.Models.etudiant>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Liste des étudiants
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Liste</h2>

    <table>
        <tr>
            
            <th>
                Matricule
            </th>
            <th>
                Prénom
            </th>
            <th>
                Nom
            </th>
            <th>
                Année au Bac
            </th>
            <th>
                Courriel
            </th>
            <th>
                Mot de passe
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
           
            <td>
                <%: item.matricule %>
            </td>
            <td>
                <%: item.prenom %>
            </td>
            <td>
                <%: item.nom %>
            </td>
            <td>
                <%: item.annee_bac %>
            </td>
            <td>
                <%: item.courriel %>
            </td>
            <td>
                <%: item.mot_passe %>
            </td>
               <td>
                <%: Html.ActionLink("Modifier Etudiant", "Modification", new { matricule = item.matricule })%> |
                <%: Html.ActionLink("Supprimer Etudiant", "Supprimer", new { matricule = item.matricule})%> 

            </td>
        </tr>
    
    <% } %>

    </table>

    
</asp:Content>

