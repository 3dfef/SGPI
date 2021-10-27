using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Linq;
namespace SGPI
{
    public partial class AdminEliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void GrvEliminar_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminPrincipal");
        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {
           /* using (EntitiesDBSGPI DBEntities = new EntitiesDBSGPI())
            {
                Usuario user = new Usuario();
                try
                {
                    user = (from c in DBEntities.Usuario
                            where c.Documento ==  TxtBuscarDocumentoEliminar.Text
                            select c).First();

                    TxtSeelectTipoDocumento.SelectedValue = user.IdDocumento.ToString();
                    TxtNumeroDocumentoUsuario.Text = user.Documento;
                    TxtNombreUsuario.Text = user.Nombre;
                    TxtApellidosUsuario.Text = user.Apellido;
                    txtSelectGenero.SelectedValue = user.IdGenero.ToString();
                    TxtCorreoElectronicoUsuario.Text = user.Email;
                    txtSelectRol.SelectedValue = user.IdRol.ToString();
                    txtSelectPrograma.SelectedValue = user.IdPrograma.ToString();


                }
                catch (Exception except)
                {

                }
            }*/
        }
    }
}
