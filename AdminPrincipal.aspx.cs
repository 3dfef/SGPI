using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SGPI
{
    public partial class AdminPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMostrarUsuario.Text = Session["nombreUsuario"].ToString();
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio.aspx");
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            Criptografia criptografia = new Criptografia();
            using (EntitiesDBSGPI DBEntitiesR = new EntitiesDBSGPI())
            {
                Usuario usuario = new Usuario();
                usuario.IdUsuario = usuario.IdUsuario ;
                usuario.Documento = TxtNumeroDocumentoUsuario.Text;
                usuario.IdDocumento = Convert.ToInt32(TxtTipoDocumento.SelectedValue);
                usuario.Nombre = TxtNombreUsuario.Text;
                usuario.Apellido = TxtApellidosUsuario.Text;
                usuario.IdGenero = Convert.ToInt32(txtGenero.SelectedValue);
                usuario.Email = TxtCorreoElectronicoUsuario.Text;
                usuario.IdRol = Convert.ToInt32(txtRol.SelectedValue);
                usuario.Contraseña = criptografia.CodigoHash(criptografia.GenerarPass());
                usuario.IdPrograma = Convert.ToInt32(OpcionesProgramas.SelectedValue);

              
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }
    }
}