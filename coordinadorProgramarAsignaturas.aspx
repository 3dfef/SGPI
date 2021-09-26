<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coordinadorProgramarAsignaturas.aspx.cs" Inherits="SGPI.coordinadorProgramarAsignaturas" %>

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
                                 <span class="input-group-text">Periodo Academico :
                                <asp:Label ID="lblPeriodoAcademico" runat="server" Text="2021-2"></asp:Label>
                                 <br />
                                 </span>
                                </div></div></div>
                    <!---------------------------------------------------------------------------------------------------------------->
                     <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
                                 <span class="input-group-text">Programa</span>
                                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Width="450px">
                                    <asp:ListItem>Especializacion de la seguridad de la informacion</asp:ListItem>
                                    <asp:ListItem>Maestria en Gestio TI</asp:ListItem>
                                    <asp:ListItem>Maestria en Gestion Ambiental</asp:ListItem>
                                    <asp:ListItem>Calculo Vectorial</asp:ListItem>
                                </asp:DropDownList>
                                 
                                </div></div></div>
                    <!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
                                <asp:GridView ID="GrvProAsig" runat="server" class="table table-bordered" AutoGenerateColumns="False" Width="1110px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                                        <asp:BoundField HeaderText="Sala/Aula" DataField="Sala" />
                                        <asp:BoundField HeaderText="Asignatura" DataField="Asignatura" />
                                        <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                                    </Columns>
                                </asp:GridView>

                                </div></div></div>
                    <!---------------------------------------------------------------------------------------------------------------->
                     <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">

                                <asp:Button ID="btnExportar" CssClass="btn btn-success" runat="server" Text="Exportar" OnClick="btnExportar_Click" />
                                <asp:Button ID="btnVolver" CssClass="btn btn-secondary" runat="server" Text="Volver" OnClick="btnVolver_Click" />
                                </div></div></div>
                    <!---------------------------------------------------------------------------------------------------------------->

                    </div></div>

    </form>
</body>
</html>
