using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace SGPI
{
    public partial class estudianteModificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (EntitiesDBSGPI DBEntitiesR = new EntitiesDBSGPI())
                {
                    try
                    {

                        Usuario usuario = DBEntitiesR.Usuario.FirstOrDefault(a => a.IdUsuario == Convert.ToInt32(Session["IdUsuario"]));
                        TxtNumeroDocumentoUsuario.Text = usuario.Documento;
                        TxtNombreUsuario.Text = usuario.Nombre;
                        TxtApellidosUsuario.Text = usuario.Apellido;
                        TxtCorreoElectronicoUsuario.Text = usuario.Email;
                    }



                    catch (Exception except) { }


                }
                lblMostrarUsuario.Text = Session["nombreUsuario"].ToString();
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Estudiante.aspx");
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Byte[] archivo = null;
            string nombreArchivo = string.Empty;
            string extension = string.Empty;

            if (FileUpload1.HasFile)
            {
                nombreArchivo =  Path.GetFileNameWithoutExtension( FileUpload1.FileName);
                extension = Path.GetExtension(FileUpload1.FileName);
                var path = @"~/Certificado/ " + nombreArchivo + extension;
                FileUpload1.SaveAs(Server.MapPath(path));
            }

        }

        protected void txtGenero_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}