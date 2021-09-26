<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coordinador.aspx.cs" Inherits="SGPI.coordinador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Coordinador</title>
</head>
<body>
      <br /> <br />
     <div class="navbar navbar-inverse navbar-fixed-top">
                <div class="container">
                     <h1>Coordinador</h1>
                    <div class="navbar-header">
                        <a class="navbar-brand active" runat="server" href="~/coordinador">Modulo consulta</a>
                        <a class="navbar-brand" runat="server" href="~/coordinadorProgramarAsignaturas">Modulo programar asignaturas</a>
                        <a class="navbar-brand" runat="server" href="~/coordinadorHomologacion">Homologacion</a>
                        <a class="navbar-brand" runat="server" href="~/coordinadoEntrevistas">Entrevistas</a>
                     
                    </div>
                </div>
            </div>
     <br />
     <br />
    <form id="form1" runat="server">
          <div class="container">
            <h5>Usuario :&nbsp; <asp:Label ID="lblMostrarUsuario" runat="server" Text="Sesión no iniciada"></asp:Label></h5>
             <asp:Button ID="btnCerrarSesion"  class="btn btn-danger" runat="server" Text="Cerrar sesión" OnClick="btnCerrarSesion_Click"  /> 
                <div class="abs-center">
                    <!---------------------------------------------------------------------------------------------------------------->

                     <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">

                                 <span class="input-group-text">Buscar por numero de documento<br />
                                 </span>
                                &nbsp;<asp:TextBox ID="TxtBuscarDocumentoEliminar" class="form-control" runat="server" placeholder="Ingrese documento a buscar" Width="120px"></asp:TextBox>
                                <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" class="btn btn-success"  />
                              

                            </div>
                        </div>
                   

                         </div>

                    <!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">

                                 <asp:GridView ID="GrvMatricula"  class="table table-bordered" runat="server" AutoGenerateColumns="False" Width="1110px" OnSelectedIndexChanged="GrvMatricula_SelectedIndexChanged" >
                                        <Columns>
                                            <asp:BoundField HeaderText="Numero de documento" DataField="Documento" />
                                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                            <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                                            <asp:BoundField HeaderText="Valor pago" DataField="ValorPago" />
                                            <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                                            <asp:ButtonField CommandName="Select" HeaderText="Opciones" ShowHeader="True" Text="Ver Archivo" />
                                            <asp:BoundField HeaderText="Estado" DataField="Estado" />
                                            <asp:BoundField HeaderText="Programa" DataField="Programa" />
                                            <asp:BoundField HeaderText="Genero" DataField="Genero" />
                                            <asp:BoundField HeaderText="Correo electronico" DataField="Correo" />
                                        </Columns>
                                    </asp:GridView>

                                            </div></div></div>





                    <!---------------------------------------------------------------------------------------------------------------->


                    <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
                                <asp:Button ID="btnVolver" runat="server" Text="Volver" class="btn btn-secondary" OnClick="btnVolver_Click"/>


                                </div></div></div>
                    <!---------------------------------------------------------------------------------------------------------------->

 </div>

                    </div>
    </form>
</body>
</html>
