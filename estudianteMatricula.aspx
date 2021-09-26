<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="estudianteMatricula.aspx.cs" Inherits="SGPI.estudianteMatricula" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Estudiante</title>
</head>
<body>
    <br />
    <br />
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
         <div class="row">
                        <div class="input-group  mb-3">
                            <div class="input-group-prepend"> 
                                <div class="form-group col">
                                    <asp:GridView ID="GrvMatricula"  class="table table-bordered" runat="server" AutoGenerateColumns="False" Width="1110px" OnSelectedIndexChanged="GrvMatricula_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField HeaderText="Numero de documento" DataField="Documento" />
                                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                            <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                                            <asp:BoundField HeaderText="Valor pago" DataField="ValorPago" />
                                            <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                                            <asp:ButtonField CommandName="Select" HeaderText="Opciones" ShowHeader="True" Text="Ver Archivo" />
                                            <asp:BoundField HeaderText="Estado" DataField="Estado" />
                                        </Columns>
                                    </asp:GridView>




                                    </div></div></div></div>

                 <div class="row">
                        <div class="input-group  mb-3">
                            <div class="input-group-prepend"> 
                                <div class="form-group col">


                                    <asp:Button ID="btnVolver" runat="server" Text="Volver" class="btn btn-secondary" OnClick="btnVolver_Click" />
                                    </div></div></div></div>

             </div>
    </form>
</body>
</html>
