using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SGPI
{
    public partial class coordinadoEntrevistas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/coordinadorEntrevistas");
        }

        protected void btnExportar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/coordinadorEntrevistas");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/coordinador");
        }
    }
}