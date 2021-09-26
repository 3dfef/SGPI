using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGPI
{
    public partial class estudianteModificar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
            Response.Redirect("/Estudiante.aspx");
        }
    }
}