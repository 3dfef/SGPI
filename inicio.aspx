<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="SGPI.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body class="m-0 vh-100 row justify-content-center align-items-center">
    <form id="form1" runat="server">
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
                    <asp:Button ID="btnEnviar" class="btn btn-success mb-2" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
                </div>
                <a href="recuperarContraseña.aspx">¿Olvidaste la contraseña?</a>
            </form>
        </div>
    </form>
</body>
</html>
