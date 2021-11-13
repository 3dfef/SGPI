using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace SGPI
{
    public partial class AdministradorBuscar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
            using (EntitiesDBSGPI DBEntities = new EntitiesDBSGPI())
            {
                Usuario user = new Usuario();
                try
                {
                    user = (from c in DBEntities.Usuario
                            where c.Documento == TxtBuscarDocumento.Text
                            select c).First();

                    TxtTipoDocumento.SelectedValue = user.IdDocumento.ToString();
                    TxtNumeroDocumentoUsuario.Text = user.Documento;
                    TxtNombreUsuario.Text = user.Nombre;


                }
                catch (Exception except)
                {

                }
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminPrincipal.aspx");
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }
    }
}