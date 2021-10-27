using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

namespace SGPI
{
    public partial class AdminPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                usuario.IdUsuario = usuario.IdUsuario + 1;
                usuario.Documento = TxtNumeroDocumentoUsuario.Text;
                usuario.IdDocumento = Convert.ToInt32(TxtTipoDocumento.SelectedValue);
                usuario.Nombre = TxtNombreUsuario.Text;
                usuario.Apellido = TxtApellidosUsuario.Text;
                usuario.IdGenero = Convert.ToInt32(txtGenero.SelectedValue);
                usuario.Email = TxtCorreoElectronicoUsuario.Text;
                usuario.IdRol = Convert.ToInt32(txtRol.SelectedValue);
                usuario.Contraseña = criptografia.CodigoHash(criptografia.GenerarPass());
                usuario.IdPrograma = Convert.ToInt32(OpcionesProgramas.SelectedValue);

               usuario = DBEntitiesR.Usuario.Add(usuario);
                try
                {
                 DBEntitiesR.SaveChanges();
                    if (usuario.IdUsuario != 0)
                    {
                        Response.Write("<script>alert('Usuario  " + usuario.Nombre + "Ha sido registrado')</script>");
                        usuario.IdUsuario = usuario.IdUsuario+ 1;
                    }
                    else
                    {
                        Response.Write("<script>alert(' Problemas con el registro , intente nuevamente')</script>");
                    }
                }
                catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
                {
                    Exception raise = dbEx;
                    foreach (var validationErrors in dbEx.EntityValidationErrors)
                    {
                        foreach (var validationError in validationErrors.ValidationErrors)
                        {
                            string message = string.Format("{0}:{1}",
                                validationErrors.Entry.Entity.ToString(),
                                validationError.ErrorMessage);
                            // raise a new exception nesting  
                            // the current instance as InnerException  
                            raise = new InvalidOperationException(message, raise);
                        }
                    }
                    throw raise;
                }

               
            }
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }
    }
}