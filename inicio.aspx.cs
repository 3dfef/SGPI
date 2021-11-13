using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SGPI
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Session["IdUsuario"] = String.Empty;
            using (EntitiesDBSGPI DBEntities = new EntitiesDBSGPI())              
            {

                Criptografia criptografia = new Criptografia();
                string hashpass = criptografia.CodigoHash(TxtContraseña.Text);
           

                try {
                   Usuario usuario = DBEntities.Usuario.FirstOrDefault(a => a.Documento == TxtUsuario.Text && 
                   a.Contraseña == hashpass);
                   
                   
                    if (usuario != null)
                    {
                        Session["IdUsuario"] = usuario.IdUsuario;
                        Session["nombreUsuario"] = usuario.Nombre;
                        switch (usuario.IdRol)
                        {
                            case 1:
                                Response.Redirect("~/AdminPrincipal.aspx");
                                
                                break;
                            case 2:
                                Response.Redirect("~/Estudiante.aspx");
                                break;
                            case 3:
                                Response.Redirect("~/coordinador.aspx");
                                break;
                            default:
                                break;


                        }
                        
                    }
                    else
                        Response.Write("<script>alert('Usuario o contraseña invalidos.Por Favor " + "Verifique Nuevamente')</script>");
                }
                catch (Exception except)
                {

                }
            }
        }
    }
}
