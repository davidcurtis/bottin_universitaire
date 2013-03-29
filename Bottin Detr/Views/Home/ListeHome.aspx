<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ListeHome
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Liste des étudiants</h2>
    
    <table>
        <tr>
                       
            <th>
              ***Nom***
            </th>

            <th>
               ***Prénom***
            </th>
            
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: item.nom %>
            </td>
          
            <td>
               <%: item.prenom %>
            </td>
           
        </tr>
        
    
    <% } %>

    </table>

</asp:Content>

