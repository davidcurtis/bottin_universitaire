<%@ Page Title="" Language="C#" MasterPageFile="~/Views/SharedAdmin/Admin.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Acceuil
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Accueil Administrateur</h2>
    <h3>Veuillez rechercher un étudiant ou bien selectionner un des onglets ci-dessus.</h3>

         <form  id="dd" runat= "server" action="">
                 <%: Html.ActionLink("Rechercher Étudiant", "Recherche")%> 
              </form>
  
</asp:Content>
