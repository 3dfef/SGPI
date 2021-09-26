<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Estudiante.aspx.cs" Inherits="SGPI.Estudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Estudiante</title>
</head>
<body >
   
     <br /> <br />
     <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                     <h1>Estudiante</h1>
                    <div class="navbar-header">
                        <a class="navbar-brand active" runat="server" href="~/Estudiante">Modulo perfil</a>
                        <a class="navbar-brand" runat="server" href="~/estudianteMatricula">Pagos Matricula</a>
                     
                    </div>
                </div>
            </div>
     <br />
     <br />
    <form id="form1" runat="server">
        <div class="container">
            <h5>Usuario :&nbsp; <asp:Label ID="lblMostrarUsuario" runat="server" Text="Sesión no iniciada"></asp:Label></h5>
             <asp:Button ID="btnCerrarSesion"  class="btn btn-danger" runat="server" Text="Cerrar sesión" OnClick="btnCerrarSesion_Click" /> 
                <div class="abs-center">
                     <!---------------------------------------------------------------------------------------------------------------->
                <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
                                <span class="input-group-text">Numero de documento</span>
                                <asp:TextBox ID="TxtNumeroDocumentoUsuario" class="form-control" runat="server" placeholder="Numero de documento" Width="150px"></asp:TextBox>
                                <br />
                            </div>
                        </div>
                    </div>
                    
                   <!--------------------------------------------->
                      <div class="row" >
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                 <div class="form-group col">
                                <span class="input-group-text">Nombres y Apellidos&nbsp;&nbsp; <asp:TextBox ID="TxtNombreUsuario" class="form-control" runat="server" placeholder="Nombres" ></asp:TextBox>
                                <asp:TextBox ID="TxtApellidosUsuario" class="form-control" runat="server" placeholder="Apellidos" ></asp:TextBox>

                                     </span>

                            </div>
</div>
                        </div>
                        
                    </div>
                    
                    <!--------------------------------------------->
                     <div class="row" >
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                 <div class="form-group col">
                           <span class="input-group-text">Correo electronico :&nbsp; <asp:TextBox ID="TxtCorreoElectronicoUsuario" class="form-control" runat="server" placeholder="Correo electronico" Width="500px" type="email"></asp:TextBox>
                                     <br />
                                     </span>
                               
                           </div>    
                                </div>
                                        </div></div>
                         <!--------------------------------------------->
                     <div class="row" >
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                 <div class="form-group col">
                                     <asp:Button ID="btnModificar"  class="btn btn-success mb-2 " runat="server" Text="Modificar"  Width="88px" OnClick="btnModificar_Click"  />

                                      <asp:Button ID="btnCancelar"  class="btn btn-danger mb-2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click"   />



                                     </div></div></div>




                    </div></div>
            </div>
    </form>
</body>
</html>
