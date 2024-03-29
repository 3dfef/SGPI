﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminEliminar.aspx.cs" Inherits="SGPI.AdminEliminar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link active" href="AdminPrincipal.aspx">Modulo Administrador</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="AdminReportes.aspx">Modulo Reportes</a>
        </li>

    </ul>
   
        <div>
            <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <a class="navbar-brand active" runat="server" href="~/AdminPrincipal">Crear Usuario</a>
                            
                        <a class="navbar-brand" runat="server" href="~/AdminModificar">Modificar Usuario</a>
                        <a class="navbar-brand" runat="server" href="~/AdminEliminar">Eliminar Usuario</a>
                    </div>
                </div>
            </div>
</div>
    

     <div class="container">
         <h5>Usuario :&nbsp; <asp:Label ID="lblMostrarUsuario" runat="server" Text="Sesión no iniciada"></asp:Label></h5>
          <asp:Button ID="btnCerrarSesion"  class="btn btn-danger" runat="server" Text="Cerrar sesión" OnClick="btnCerrarSesion_Click" /> 
                <div class="abs-center">
<!-----------------------------------------------------Buscar----------------------------------------------------------->
                    <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">


                                <asp:TextBox ID="TxtBuscarDocumentoEliminar" class="form-control" runat="server" placeholder="Ingrese documento a buscar" Width="120px"></asp:TextBox>
                                <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" class="btn btn-success" OnClick="BtnBuscar_Click" />
                              

                            </div>
                        </div>
                    </div>

<!---------------------------------------------------------------------------------------------------------------->
                      <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
                                  <asp:GridView  ID="GrvEliminar" class="table table-bordered" runat="server"  AutoGenerateColumns="False"  Width="1110px" OnSelectedIndexChanged="GrvEliminar_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataKeyNames="IdUsuario">
                                      <Columns>
                                          <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" ReadOnly="True" />
                                          <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />                 
                                          <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                          <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                                          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                          <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol" />
                                          <asp:BoundField DataField="Programa" HeaderText="Programa" SortExpression="Programa" />
                                          <asp:BoundField DataField="Genero" HeaderText="Genero" SortExpression="Genero" />
                                          <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger" />
                                      </Columns>
                                </asp:GridView>
                                 
                                 
                                 
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SGPI-DBConnectionString %>" DeleteCommand="DELETE FROM [Usuario] WHERE [IdUsuario] = @IdUsuario" SelectCommand="SELECT Usuario.IdUsuario, Usuario.Documento, Usuario.Nombre, Usuario.Apellido, Usuario.Email, Rol.Rol, Programa.Programa, Genero.Genero FROM Usuario INNER JOIN Rol ON Usuario.IdRol = Rol.IdRol INNER JOIN Genero ON Usuario.IdGenero = Genero.IdGenero INNER JOIN Programa ON Usuario.IdPrograma = Programa.IdPrograma WHERE (Usuario.Documento = @Documento)">
                                      <DeleteParameters>
                                          <asp:Parameter Name="IdUsuario" Type="Int32" />
                                      </DeleteParameters>
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="TxtBuscarDocumentoEliminar" Name="Documento" PropertyName="Text" Type="String" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
                                 
                                 
                                 
                                  <br />
                                  <br />
                                </div>
                            </div>
                          </div>
<!---------------------------------------------------------------------------------------------------------------->
                       <div class="abs-center">
                  
                    <asp:Button ID="btnCancelar" class="btn btn-danger mb-2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
                </div>
                    </div>
         </div>
        </form>
</body>
</html>
