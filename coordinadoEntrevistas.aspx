<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coordinadoEntrevistas.aspx.cs" Inherits="SGPI.coordinadoEntrevistas" %>

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
 <asp:Button ID="btnCerrarSesion"  class="btn btn-danger" runat="server" Text="Cerrar sesión" OnClick="btnCerrarSesion_Click" /> 
                <div class="abs-center">
                   
                    <!---------------------------------------------------------------------------------------------------------------->
             <div class="row">
                        <div class="form-group col">
                            <div class="input-group mt-3 mb-3">

                                <span class="input-group-text">Tipo documento&nbsp;&nbsp; 
                                    <asp:DropDownList ID="TxtTipoDocumento" runat="server">
                                        <asp:ListItem Selected="True" Value="        ">  </asp:ListItem>
                                        <asp:ListItem Value="tarjetaIdentidad"> Tarjeta identidad </asp:ListItem>
                                        <asp:ListItem Value="CedulaCiudadania"> Cedula de ciudadania </asp:ListItem>
                                        <asp:ListItem Value="pasaporte"> Pasaporte </asp:ListItem>
                                        <asp:ListItem Value="cedulaextranjeria"> Cedula de extranjeria </asp:ListItem>

                                    </asp:DropDownList>
                                </span>
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
                              
                           </div>        
                           
                            </div>
                        </div>

                    <!---------------------------------------------------------------------------------------------------------------->
                    <div class="row">
                        <div class="input-group  mb-3">
                            <div class="input-group-prepend"> 
                                <div class="form-group col">
                             
                                  
                            
                                <span class="input-group-text">Programa a ingresar</span>
                                    <asp:RadioButtonList ID="OpcionesProgramas" runat="server" Class="form-control">
                                        <asp:ListItem>Especializacion Seguridad de la informacion</asp:ListItem>
                                        <asp:ListItem>Maestria en gestio TI</asp:ListItem>
                                        <asp:ListItem>Maestria en Gestion Ambiental</asp:ListItem>
                                        <asp:ListItem>Tecnico en sistemas</asp:ListItem>
                                    </asp:RadioButtonList>




                                </div>

                            </div>
                            <div class="col">
                                <span class="input-group-text">Egresado<asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="100px">
                                    <asp:ListItem>Si</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList></span>
                            </div>
                        </div>
                    </div>
             <br />
                     <br />
                     <br />
                     <br />
                    <!---------------------------------------------------------------------------------------------------------------->
                       <div class="row">
                        <div class="input-group  mb-3">
                            <div class="input-group-prepend">

                                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" Width="350px"/>
                                </div></div></div>
                    <!---------------------------------------------------------------------------------------------------------------->
                  
                       
      <asp:Button ID="btnIngresar" CssClass="btn btn-success" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
    
  
     <asp:Button ID="btnExportar" CssClass="btn btn-secondary" runat="server" Text="Exportar" OnClick="btnExportar_Click" />
   
   
      <asp:Button ID="btnCancelar" CssClass="btn btn-danger" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
 


                                
                                
                    <!---------------------------------------------------------------------------------------------------------------->

    </form>
</body>
</html>
