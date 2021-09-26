using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace SGPI
{
    public partial class coordinadorProgramarAsignaturas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new System.Data.DataTable();
            dt.Columns.AddRange(new System.Data.DataColumn[4] {
                new DataColumn("Fecha"),
                new DataColumn("Sala"),
                new DataColumn("Asignatura"),
                new DataColumn("Codigo")
                });
            dt.Rows.Add("27/09/2721","205-Sala informatica","Especializacion Seguridad Informatica",1001);
            dt.Rows.Add("30/10/2021", "302", "Calculo Vectorial",2002);


            GrvProAsig.DataSource = dt;
            GrvProAsig.DataBind();
            GrvProAsig.UseAccessibleHeader = true;
            GrvProAsig.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnExportar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/coordinadorProgramarAsignaturas");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("/coordinador");
        }
    }
}