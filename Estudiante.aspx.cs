using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGPI
{
    public partial class Estudiante : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (EntitiesDBSGPI DBEntitiesR = new EntitiesDBSGPI())
                {
                    try
                    {

                        Usuario usuario = DBEntitiesR.Usuario.FirstOrDefault(a => a.IdUsuario ==Convert.ToInt32(Session["IdUsuario"]));
                        TxtNumeroDocumentoUsuario.Text = usuario.Documento;
                        TxtNombreUsuario.Text = usuario.Nombre;
                        TxtApellidosUsuario.Text = usuario.Apellido;
                        TxtCorreoElectronicoUsuario.Text= usuario.Email;
                        
                        
                    }
                    catch(Exception except) { }


                }
                lblMostrarUsuario.Text = Session["nombreUsuario"].ToString();
            }
        }


        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/estudianteModificar.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MenuOpciones.aspx");
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }
    }
}