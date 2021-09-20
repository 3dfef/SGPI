<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recuperarContraseña.aspx.cs" Inherits="SGPI.recuperarPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body class="m-0 vh-100 row justify-content-center align-items-center">
    <form id="form1" runat="server">
        
            <div class="container">
             <div class="col align-self-center">
                 <!----------------------------------------------------------------------------------------->
                 <div class="row">
                     <div class="input-group mb-3">
                         
                             <div class="form-group col">
                                 <asp:Label ID="LblDocumento" runat="server" Text="Correo electronico" for="TxtDocumento" ></asp:Label>
                                 <asp:TextBox ID="TxtDocumento" class="form-control" runat="server" placeholder="Nombres"></asp:TextBox>
                                 <asp:Label ID="LblEmail" runat="server" Text="Correo electronico" for="TxtEmail" ></asp:Label>
                                 <asp:TextBox ID="TxtEmail" runat="server" type="Email"  class="form-control mb-2 mr-sm-2" placeholder="Ingrese correo electronico"></asp:TextBox>

                                 <asp:Button ID="Button1" class="btn btn-success mb-2" runat="server" Text="Recuperar contraseña" OnClick="btnRecuperarContraseña_Click" />
                                 
                             </div>
                             
                         </div>
                         
                     
                     
                 </div>
              <!----------------------------------------------------------------------------------------------->

           
                 
            </div>
      
        </div>
          
    </form>
</body>
</html>
