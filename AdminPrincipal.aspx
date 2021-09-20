<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPrincipal.aspx.cs" Inherits="SGPI.AdminPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>

    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link active" href="#">Modulo Administrador</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Modulo Reportes</a>
        </li>

    </ul>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand" runat="server" href="~/AdminPrincipal">Crear Usuario</a>
                        <a class="navbar-brand" runat="server" href="~/AdminModificar">Modificar Usuario</a>
                        <a class="navbar-brand" runat="server" href="~/">Eliminar Usuario</a>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="abs-center">
                    <!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">          
                         <div class="form-group col">
                        <div class="input-group mt-3 mb-3">        
                            
                                <span class="input-group-text">Tipo documento&nbsp;&nbsp;  <asp:DropDownList class="form-control" ID="TxtTipoDocumento" runat="server">
                                        <asp:ListItem Selected="True" Value="        ">  </asp:ListItem>
                                        <asp:ListItem Value="tarjetaIdentidad"> Tarjeta identidad </asp:ListItem>
                                        <asp:ListItem Value="CedulaCiudadania"> Cedula de ciudadania </asp:ListItem>
                                        <asp:ListItem Value="pasaporte"> Pasaporte </asp:ListItem>
                                        <asp:ListItem Value="cedulaextranjeria"> Cedula de extranjeria </asp:ListItem>
                                       
                                    </asp:DropDownList>  </span>
                           <asp:TextBox ID="TxtNumeroDocumentoUsuario" class="form-control" runat="server" placeholder="Numero de documento" Width="150px"></asp:TextBox>
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
                    <!------------------------------------------------------------------------------------------------------------------>
                     <div class="row">
                        <div class="input-group  mb-3">
                            <div class="input-group-prepend"> 
                                <div class="form-group col">
                               <span class="input-group-text">Genero&nbsp;&nbsp; <asp:DropDownList ID="txtGenero" runat="server" Width="182px">
                                        <asp:ListItem Selected="True" Value="        ">  </asp:ListItem>
                                        <asp:ListItem Value="masculino"> Masculino </asp:ListItem>
                                        <asp:ListItem Value="femenino"> Femenino </asp:ListItem>
                                        <asp:ListItem Value="Otro"> Otro </asp:ListItem>                                      
                                    </asp:DropDownList>                                                                                             
                                    </span>                                                                                             
                                    </div>
                                </div>
                           <div class="form-group col">
                           <span class="input-group-text">Correo electronico :&nbsp; <asp:TextBox ID="TxtCorreoElectronicoUsuario" class="form-control" runat="server" placeholder="Correo electronico" Width="500px" type="email"></asp:TextBox></span>
                               <span class="input-group-text">Contraseña:&nbsp; <asp:TextBox ID="TxtContraseña" class="form-control" runat="server" placeholder="Contraseña" Width="500px" ></asp:TextBox></span>
                           </div>        
                           
                            </div>
                        </div>

                    <!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">
                        <div class="input-group  mb-3">
                            <div class="input-group-prepend"> 
                                <div class="form-group col">
                                  <span class="input-group-text">Rol</span>
                                    <asp:RadioButtonList class="radio" ID="RadioButtonList1" runat="server">
                                        <asp:ListItem>Estudiante</asp:ListItem>
                                        <asp:ListItem>Coordinador</asp:ListItem>
                                    </asp:RadioButtonList>





                                    </div></div></div></div>
                       
            <asp:Button ID="btnCrear"  class="btn btn-success mb-2 " runat="server" Text="Crear"  Width="88px" />

            <asp:Button ID="btnCancelar"  class="btn btn-danger mb-2" runat="server" Text="Cancelar"  />








                    </div>








                </div>
            </div>
        
    </form>
</body>
</html>
