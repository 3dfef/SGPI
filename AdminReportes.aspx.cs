using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace SGPI
{
    public partial class AdminReportes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new System.Data.DataTable();
            dt.Columns.AddRange(new System.Data.DataColumn[5] {
                new DataColumn("Documento"),
                new DataColumn("Nombre"),
                new DataColumn("Apellido"),
                new DataColumn("Rol"),
                new DataColumn("Programa") });
            dt.Rows.Add(1003237534, "Yerson", "Sequea", "Coordinador", "Tecnico en sistemas");
            dt.Rows.Add(39456114, "Diana", "Usme", "Estudiante", "Especialización Seguridad Informatica");


            GrvReportes.DataSource = dt;
            GrvReportes.DataBind();
            GrvReportes.UseAccessibleHeader = true;
            
        }



        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/AdminPrincipal.aspx");
        }

        protected void GrvReportes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }
    }
}