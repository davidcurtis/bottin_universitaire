<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Bottin_DetR.Models.etudiant>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Recherche
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Recherche</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
       
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.nom) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nom) %>
                <%: Html.ValidationMessageFor(model => model.nom) %>
            </div>
            
            <p>
                <input type="submit" value="Chercher" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Retourner à la Liste", "ListeHome") %>
    </div>

</asp:Content>

