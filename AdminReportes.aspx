<%@ Page Language="C#" Debug="true"  AutoEventWireup="true" CodeBehind="AdminReportes.aspx.cs" Inherits="SGPI.AdminReportes" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <asp:scriptmanager id="ScriptManager1" runat="server" enablepagemethods="true" xmlns:asp="#unknown" />
    <ul class="nav nav-pills">
        <li class="nav-item">
            <a class="nav-link" href="AdminPrincipal.aspx">Modulo Administrador</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="AdminReportes.aspx">Modulo Reportes</a>
        </li>

    </ul>
          <div class="container">
              <h5>Usuario :&nbsp; <asp:Label ID="lblMostrarUsuario" runat="server" Text="Sesión no iniciada"></asp:Label></h5>
               <asp:Button ID="btnCerrarSesion"  class="btn btn-danger" runat="server" Text="Cerrar sesión" OnClick="btnCerrarSesion_Click" /> 
<!-----------------------------------------------------Buscar----------------------------------------------------------->
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
                                
                                 <span class="input-group-text">Buscar por programa<br />
                                 </span>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Width="120px">
                                    <asp:ListItem>Maestria en Gestio TI</asp:ListItem>
                                    <asp:ListItem>Maestria en Gestion Ambiental</asp:ListItem>
                                    <asp:ListItem>Calculo Vectorial</asp:ListItem>
                                 </asp:DropDownList>
                                  <asp:GridView  ID="GrvReportes" class="table table-bordered" runat="server"  AutoGenerateColumns="False"  Width="1110px" OnSelectedIndexChanged="GrvReportes_SelectedIndexChanged" >
                                    <Columns>
                                        <asp:BoundField HeaderText="Numero de documento" DataField="Documento"/>
                                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                                        <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
                                        <asp:BoundField HeaderText="Rol" DataField="Rol" />
                                        <asp:BoundField HeaderText="Programa Academico" DataField="Programa" />
                                        <asp:ButtonField ButtonType="Button" HeaderText="Hacer Reporte" ShowHeader="True" Text="Reporte" />
                                    </Columns>
                                </asp:GridView>
                                

                            </div>
                        </div>
                    </div>

<!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">
                                <rsweb:ReportViewer ID="ReportViewer2" runat="server" BackColor="" ClientIDMode="AutoID" HighlightBackgroundColor="" InternalBorderColor="204, 204, 204" InternalBorderStyle="Solid" InternalBorderWidth="1px" LinkActiveColor="" LinkActiveHoverColor="" LinkDisabledColor="" PrimaryButtonBackgroundColor="" PrimaryButtonForegroundColor="" PrimaryButtonHoverBackgroundColor="" PrimaryButtonHoverForegroundColor="" SecondaryButtonBackgroundColor="" SecondaryButtonForegroundColor="" SecondaryButtonHoverBackgroundColor="" SecondaryButtonHoverForegroundColor="" SplitterBackColor="" ToolbarDividerColor="" ToolbarForegroundColor="" ToolbarForegroundDisabledColor="" ToolbarHoverBackgroundColor="" ToolbarHoverForegroundColor="" ToolBarItemBorderColor="" ToolBarItemBorderStyle="Solid" ToolBarItemBorderWidth="1px" ToolBarItemHoverBackColor="" ToolBarItemPressedBorderColor="51, 102, 153" ToolBarItemPressedBorderStyle="Solid" ToolBarItemPressedBorderWidth="1px" ToolBarItemPressedHoverBackColor="153, 187, 226">
                                    <LocalReport ReportPath="Reporte\ReporteAdmin.rdlc">
                                    </LocalReport>
                                    

                                </rsweb:ReportViewer>
                                </div></div></div>






















              <div class="abs-center">
                  
                    <asp:Button ID="btnCancelar" class="btn btn-danger mb-2" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
              </div>

</div>
    </form>
</body>
</html>
