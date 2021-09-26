using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace SGPI
{
    public partial class coordinadorHomologacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new System.Data.DataTable();
            dt.Columns.AddRange(new System.Data.DataColumn[10] {
                new DataColumn("#"),
                new DataColumn("Codigo"),
                new DataColumn("NombreAsignatura"),
                new DataColumn("Creditos"),
                new DataColumn("Nivel"),
                new DataColumn("Programa"),
                new DataColumn("CodigoHomologacion"),
                new DataColumn("NombreAsignaturaHomologada"),
                new DataColumn("CreditosHomologados"),
                new DataColumn("Nota")
            });

            dt.Rows.Add("1","1002","Programacion C#",4,5,"Tecnologia en sistemas","2031","Construccion de software 4",4,4);
            


            GrvHomologacion.DataSource = dt;
            GrvHomologacion.DataBind();
            GrvHomologacion.UseAccessibleHeader = true;
            GrvHomologacion.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnExportar_Click(object sender, EventArgs e)
        {
            Response.Redirect("/coordinadorHomologacion");
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("/coordinador");
        }
    }
}