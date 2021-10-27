<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPrincipal.aspx.cs" Inherits="SGPI.AdminPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Administrador</title>
</head>
<body>

    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link active" href="AdminPrincipal.aspx">Modulo Administrador</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="AdminReportes.aspx">Modulo Reportes</a>
        </li>
        </ul>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand active" runat="server" href="~/AdminPrincipal">Crear Usuario</a>
                              <a class="navbar-brand" runat="server" href="~/AdministradorBuscar">Buscar Usuario</a>
                        <a class="navbar-brand" runat="server" href="~/AdminModificar">Modificar Usuario</a>
                        <a class="navbar-brand" runat="server" href="~/AdminEliminar">Eliminar Usuario</a>
                    </div>
                </div>
            </div>

            <div class="container">
                <h5>Usuario :&nbsp; <asp:Label ID="lblMostrarUsuario" runat="server" Text="Sesión no iniciada"></asp:Label></h5>
 <asp:Button ID="btnCerrarSesion"  class="btn btn-danger" runat="server" Text="Cerrar sesión" OnClick="btnCerrarSesion_Click" /> 
                <div class="abs-center">
                   
                    <!---------------------------------------------------------------------------------------------------------------->
             <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">

                                <span class="input-group-text">Tipo documento&nbsp;&nbsp; 
                                    <asp:DropDownList ID="TxtTipoDocumento" runat="server" DataSourceID="SqlDataSource4" DataTextField="TipoDocumento" DataValueField="IdDocumento">
                                    

                                    </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT * FROM [Documento]"></asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT * FROM [Documento]"></asp:SqlDataSource>
                                </span>
                                <asp:TextBox ID="TxtNumeroDocumentoUsuario" required="true" class="form-control" runat="server" placeholder="Numero de documento" Width="150px"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                   <!--------------------------------------------->
                    <div class="row" >
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                 <div class="form-group col">
                                <span class="input-group-text">Nombres y Apellidos&nbsp;&nbsp; <asp:TextBox ID="TxtNombreUsuario" required="true" class="form-control" runat="server" placeholder="Nombres" ></asp:TextBox>
                                <asp:TextBox ID="TxtApellidosUsuario" class="form-control" runat="server" required="true" placeholder="Apellidos" ></asp:TextBox>

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
                               <span class="input-group-text">Genero&nbsp;&nbsp; <asp:DropDownList ID="txtGenero" runat="server" Width="182px" DataSourceID="SqlDataSource3" DataTextField="Genero" DataValueField="IdGenero">
                                                                          
                                    </asp:DropDownList>                                                                                             
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT * FROM [Genero]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT * FROM [Genero]"></asp:SqlDataSource>
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
                                    <asp:RadioButtonList class="radio" ID="txtRol" runat="server" DataSourceID="SqlDataSource5" DataTextField="Rol" DataValueField="IdRol">
                                   
                                    </asp:RadioButtonList>





                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT * FROM [Rol]"></asp:SqlDataSource>





                                    </div></div>
                              <div class="form-group col">
                                <span class="input-group-text">Programa</span>
                                <asp:RadioButtonList ID="OpcionesProgramas" runat="server" Class="form-control" DataSourceID="SqlDataSource6" DataTextField="Programa" DataValueField="IdPrograma">
                                    
                                </asp:RadioButtonList>
                                  <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT * FROM [Programa]"></asp:SqlDataSource>
                            </div>
                        </div></div>
                       
            








                    </div>
                 <div class="abs-center">
                     <br />
                     <br />
                <asp:Button ID="btnCrear"  class="btn btn-success mb-2 " runat="server" Text="Crear"  Width="88px" OnClick="btnCrear_Click" />

            <asp:Button ID="btnCancelar"  class="btn btn-danger mb-2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click"  />

                     </div>




                </div>
            </div>
        
    </form>
</body>
</html>
