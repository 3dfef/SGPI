<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SGPI._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div class="">
        <h1>Bienvenido</h1>

    </div>
    <div class="view" style="background-image: url('Images/87818-1.png'); background-repeat: no-repeat; background-size: cover; background-position: center center;">
        <form class="form-inline" action="/action_page.php">

            <div class="col align-self-center">
                <i class="glyphicon glyphicon-user"></i>
                <asp:Label ID="LblUsuario" class="mr-sm-2" runat="server" Text="Usuario" for="TxtUsuario"></asp:Label>
                <asp:TextBox ID="TxtUsuario" runat="server" class="form-control mb-2 mr-sm-2" placeholder="Ingrese Usuario"></asp:TextBox>
                <i class="	glyphicon glyphicon-lock"></i>
                <asp:Label ID="LblContraseña" class="mr-sm-2" runat="server" Text="Contraseña" for="TxtContraseña"></asp:Label>
                <asp:TextBox ID="TxtContraseña" runat="server" class="form-control mb-2 mr-sm-2" placeholder="Ingrese Contraseña" type="Password"></asp:TextBox>
                <div class="form-check mb-2 mr-sm-2">

                    <label class="form-check-label">
                        <input class="form-check-input" type="checkbox">
                        Recuerdame
                    </label>
                 
                </div>
                <button type="submit" class="btn btn-success mb-2">Enviar</button>

            </div>
            <a href="recuperarContraseña.aspx">¿Olvidaste la contraseña?</a>
        </form>
    </div>


</asp:Content>
