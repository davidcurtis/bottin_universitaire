<%@ Page Title="" Language="C#" MasterPageFile="~/Views/SharedAdmin/Admin.Master" Inherits="System.Web.Mvc.ViewPage<Bottin_DetR.Models.etudiant>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Suppression
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Suppression</h2>

    <h3>Are you sure you want to delete this?</h3>
    <fieldset>
        
        
        <div class="display-label">matricule</div>
        <div class="display-field"><%: Model.matricule %></div>
        
        <div class="display-label">prenom</div>
        <div class="display-field"><%: Model.prenom %></div>
        
        <div class="display-label">nom</div>
        <div class="display-field"><%: Model.nom %></div>
        
        <div class="display-label">annee_bac</div>
        <div class="display-field"><%: Model.annee_bac %></div>
        
        <div class="display-label">courriel</div>
        <div class="display-field"><%: Model.courriel %></div>
        
        <div class="display-label">mot_passe</div>
        <div class="display-field"><%: Model.mot_passe %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Supprimer" /> |
		    
        </p>
    <% } %>

</asp:Content>

