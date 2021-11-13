<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estudianteModificar.aspx.cs" Inherits="SGPI.estudianteModificar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Estudiante</title>
</head>
<body>
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

                                <span class="input-group-text">Tipo documento&nbsp;&nbsp; 
                                    <asp:DropDownList ID="TxtTipoDocumento" runat="server" DataSourceID="SqlDataSource3" DataTextField="TipoDocumento" DataValueField="IdDocumento">

                                    </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT Documento.IdDocumento, Documento.TipoDocumento FROM Documento INNER JOIN Usuario ON Documento.IdDocumento = Usuario.IdDocumento"></asp:SqlDataSource>
                                </span>
                                <asp:TextBox ID="TxtNumeroDocumentoUsuario" class="form-control" runat="server" placeholder="Numero de documento" Width="150px"></asp:TextBox>
                                <br />
                            </div>
                        </div>
                    </div>
                     <!---------------------------------------------------------------------------------------------------------------->


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
                               <span class="input-group-text">Genero&nbsp;&nbsp; <asp:DropDownList ID="txtGenero" runat="server" Width="182px" DataSourceID="SqlDataSource2" DataTextField="Genero" DataValueField="IdGenero" OnSelectedIndexChanged="txtGenero_SelectedIndexChanged">
                                    </asp:DropDownList>                                                                                             
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT Genero.* FROM Genero INNER JOIN Usuario ON Genero.IdGenero = Usuario.IdGenero"></asp:SqlDataSource>
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
              





                                    
                              <div class="form-group col">
                                <span class="input-group-text">Programa</span>
                                <asp:RadioButtonList ID="OpcionesProgramas" runat="server" Class="form-control" DataSourceID="SqlDataSource1" DataTextField="Programa" DataValueField="IdPrograma">
                                </asp:RadioButtonList>
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" SelectCommand="SELECT Programa.IdPrograma, Programa.Programa FROM Programa INNER JOIN Usuario ON Programa.IdPrograma = Usuario.IdPrograma"></asp:SqlDataSource>
                            </div>
                        </div></div>
                    <br />
                     <!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
                                  <span class="input-group-text">Certificado electoral</span>

                                <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" Width="300px" />

                                </div></div></div>

                    <!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">
                        <div class="form-group col">

                            <div class="input-group mt-3 mb-3">
                                      <asp:Button ID="btnActualizar"  class="btn btn-success mb-2 " runat="server" Text="Modificar"  Width="88px" OnClick="btnActualizar_Click"  />
                                      <asp:Button ID="btnCancelar"  class="btn btn-danger mb-2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click"    />


                                </div></div></div>

       
    </form>
</body>
</html>
