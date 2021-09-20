<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresarNuevaContraseña.aspx.cs" Inherits="SGPI.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title></title>
</head>
<body class="m-0 vh-100 row justify-content-center align-items-center">
    
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblNuevaContraseña" runat="server" Text="Nueva contraseña" for="TxtNuevaContraseña"></asp:Label>
            <asp:TextBox ID="TxtNuevaContraseña" runat="server" type ="password" class="form-control mb-2 mr-sm-2"></asp:TextBox>


            <asp:Label ID="LblRepetirNuevaContraseña" runat="server" Text="Repita nueva contraseña" for="TxtRepetirNuevaContraseña"></asp:Label>
            <asp:TextBox ID="TxtRepetirNuevaContraseña" runat="server" type="password" class="form-control"></asp:TextBox>

            <asp:Button ID="btnEnviar"  class="btn btn-success mb-2 " runat="server" Text="Enviar" OnClick="btnEnviar_Click" Width="88px" />

            <asp:Button ID="btnCancelar"  class="btn btn-danger mb-2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
            <br />
        </div>
        <p>
         </p>
    </form>
</body>
</html>
