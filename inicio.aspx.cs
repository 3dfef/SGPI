using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace SGPI
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            using (EntitiesDB DBEntities = new EntitiesDB())

                
            {
                Usuario usr = new Usuario();

                try {
                   Usuario usuario = DBEntities.Usuario.FirstOrDefault(a => a.Documento == TxtUsuario.Text && a.Contraseña == TxtContraseña.Text);
                   
                   
                    if (usuario != null)
                    {
                        switch (usuario.Rol.IdRol)
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
