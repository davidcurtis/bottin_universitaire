<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Bottin_DetR.Models.etudiant>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Page d'accueil
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: ViewData["Message"] %></h2>
    <p>
        Ce bottin vous aidera à trouver un membre de l'université. Cliquer sur "Rechercher Étudiant"
    </p>

              <form  id="dd" runat= "server" action="">
                 <%: Html.ActionLink("Rechercher Étudiant", "Recherche")%> 
              </form>

                 

</asp:Content>
      
  