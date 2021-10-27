using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;
namespace SGPI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminPrincipal");
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
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
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            using (EntitiesDBSGPI DBEntities = new EntitiesDBSGPI())
            {

               usuario = (from c in DBEntities.Usuario
                            where c.Documento == TxtBuscarDocumento.Text
                            select c).First();


                usuario.Apellido = TxtApellidosUsuario.Text;
                usuario.Nombre = TxtNombreUsuario.Text;
                usuario.Documento = TxtNumeroDocumentoUsuario.Text;
                usuario.Email = TxtCorreoElectronicoUsuario.Text;
                usuario.IdGenero = Int32.Parse(txtSelectGenero.SelectedValue);
                usuario.IdDocumento = Int32.Parse(TxtSeelectTipoDocumento.SelectedValue);
                usuario.IdPrograma = Int32.Parse(txtSelectPrograma.SelectedValue);
                usuario.IdRol = Int32.Parse(txtSelectRol.SelectedValue);

            DBEntities.SaveChanges();

            }
        }
    }
}