<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coordinadorHomologacion.aspx.cs" Inherits="SGPI.coordinadorHomologacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Coordinador</title>
</head>
<body>
    <div class="view" style="background-image: url('Images/background.jp' );  ">
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
                                
                                 <span class="input-group-text">Buscar estudiante por numero de documento<br />
                                 </span>
                                &nbsp;<asp:TextBox ID="TxtBuscarDocumento" class="form-control" runat="server" placeholder="Ingrese documento a buscar" Width="220px"></asp:TextBox>
                                <asp:Button ID="BtnBuscar" runat="server" Text="Buscar" class="btn btn-success"  />                            
                                </div></div></div>



                    <!---------------------------------------------------------------------------------------------------------------->
    <div class="row justify-content-center">
    <div class="col">
     <span class="input-group-text">Nombre estudiante&nbsp; <asp:TextBox ID="txtNombreEstudiante" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
        </span>
    </div>
    <div class="col">
       <span class="input-group-text">Apellido estudiante&nbsp; <asp:TextBox ID="txtApellidoEstudiante" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
        </span>
    </div>
       <div class="col">
       <span class="input-group-text">Programa&nbsp; <asp:TextBox ID="TxtPrograma" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
        </span>
    </div>
  </div>

                    <!---------------------------------------------------------------------------------------------------------------->
          <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
      <div class="row justify-content-center">
    <div class="col">
     <span class="input-group-text">Periodo Academico&nbsp; <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
        </span>
    </div>
    <div class="col">
       <span class="input-group-text">Documento&nbsp; <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
        </span>
    </div>
       <div class="col">
      
       <span class="input-group-text">Tipo Homologacion<asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Width="200px">
               <asp:ListItem>Transferencia externa</asp:ListItem>
               <asp:ListItem>Nuevo</asp:ListItem>
           </asp:DropDownList></span>
    </div>
  </div>

            </div></div></div>                    


                    <!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
                                <asp:GridView ID="GrvHomologacion" runat="server"  class="table table-bordered" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField HeaderText="#" DataField="#" />
                                        <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                                        <asp:BoundField HeaderText="Nombre Asignatura" DataField="NombreAsignatura" />
                                        <asp:BoundField HeaderText="Creditos" DataField="Creditos" />
                                        <asp:BoundField HeaderText="Nivel" DataField="Nivel" />
                                        <asp:BoundField HeaderText="Programa" DataField="Programa" />
                                        <asp:BoundField HeaderText="Codigo homologacion" DataField="CodigoHomologacion" />
                                        <asp:BoundField HeaderText="Nombre Asignatura homologada" DataField="NombreAsignaturaHomologada" />
                                        <asp:BoundField HeaderText="Creditos homologados" DataField="CreditosHomologados" />
                                        <asp:BoundField HeaderText="Nota definitiva" DataField="Nota" />
                                    </Columns>
                                </asp:GridView>

                                </div></div></div>

                    <!---------------------------------------------------------------------------------------------------------------->
               <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">

                                <asp:Button ID="BtnExportar" runat="server" Text="Exportar" CssClass="btn btn-success" OnClick="BtnExportar_Click"/>
                                <asp:Button ID="BtnVolver" runat="server" Text="Volver" CssClass="btn btn-secondary" OnClick="BtnVolver_Click" />
                                </div></div></div>
                    <!---------------------------------------------------------------------------------------------------------------->

                                </div></div>
    </form>
</body>
</html>
