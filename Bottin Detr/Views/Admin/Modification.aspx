<%@ Page Title="" Language="C#" MasterPageFile="~/Views/SharedAdmin/Admin.Master" Inherits="System.Web.Mvc.ViewPage<Bottin_DetR.Models.etudiant>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Modification
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Modification</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.matricule) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.matricule) %>
                <%: Html.ValidationMessageFor(model => model.matricule) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.prenom) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.prenom) %>
                <%: Html.ValidationMessageFor(model => model.prenom) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.nom) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.nom) %>
                <%: Html.ValidationMessageFor(model => model.nom) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.annee_bac) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.annee_bac) %>
                <%: Html.ValidationMessageFor(model => model.annee_bac) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.courriel) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.courriel) %>
                <%: Html.ValidationMessageFor(model => model.courriel) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.mot_passe) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.mot_passe) %>
                <%: Html.ValidationMessageFor(model => model.mot_passe) %>
            </div>
            
            <p>
                <input type="submit" value="Modifier" />
            </p>
        </fieldset>

    <% } %>

   
</asp:Content>

