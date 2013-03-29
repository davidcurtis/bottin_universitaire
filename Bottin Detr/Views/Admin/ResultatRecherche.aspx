﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/SharedAdmin/Admin.Master" Inherits="System.Web.Mvc.ViewPage<Bottin_DetR.Models.etudiant>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ResultatRecherche
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Resultat de la Recherche</h2>

    <fieldset>
        <legend>Fields</legend>
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
            <tr>
            <td>
                <%: Model.matricule %>
            </td>
            <td>
                 <%: Model.prenom %>
            </td>
            <td>
               <%: Model.nom %>
            </td>
            <td>
            <%: Model.annee_bac %>
            </td>
            <td>
                <%: Model.courriel %>
            </td>
          
            <td>
                <%: Model.mot_passe %>
            </td>
         </tr>
      </table>  
    </fieldset>
    <p>
        <%: Html.ActionLink("Retourner à la liste", "ListeHome") %>
    </p>

</asp:Content>

