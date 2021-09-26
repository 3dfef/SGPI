<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuOpciones.aspx.cs" Inherits="SGPI.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body class="m-0 vh-100 row justify-content-center align-items-center">
    <form id="form1" runat="server">
       <div class="">
            <h1>¿Que tipo de usuario eres?</h1>
            <p>&nbsp;</p>
        </div>
        

        <div class="row">
  <div class="col">
      <img src="Images/Admin.png" height="100" href="~/AdminPrincipal" id="imageAdmin"/><br />
      <asp:Button ID="BtnOpcionAdministrador" runat="server" Text="Administrador" class="form-control" OnClick="BtnOpcionAdministrador_Click" Width="120px"/>
  </div>

  <div class="col">
      <img src="Images/estudiante.jpg" width="100" height="100" />
      <br />
       <asp:Button ID="Button1" runat="server" Text="Estudiante" class="form-control" Width="100px" OnClick="Button1_Click"/>
  </div>

  <div class="col">
      <img src="Images/coordinadoe.jpg" width="100" height="100"/>
      <br />
     <asp:Button ID="Button2" runat="server" Text="Coordinador" class="form-control" Width="120px" OnClick="Button2_Click"/>

  </div>
</div>
        

    </form>
</body>
</html>
