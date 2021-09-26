using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SGPI
{
    public partial class coordinador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new System.Data.DataTable();
            dt.Columns.AddRange(new System.Data.DataColumn[9] {
                new DataColumn("Documento"),
                new DataColumn("Nombre"),
                new DataColumn("Apellido"),
                new DataColumn("ValorPago"),
                new DataColumn("Fecha"),
                new DataColumn("Estado"),
                new DataColumn("Programa"),
                new DataColumn("Genero"),
                new DataColumn("Correo")
            });

            dt.Rows.Add(1003237534, "Yerson", "Sequea", 1200000, 21 / 07 / 2021, "Pagado","Calculo Vectorial","Masculino","Sequea2000@gmail.com");
            dt.Rows.Add(39456114, "Diana", "Usme", 1150000, 11 / 02 / 2021, "Falta pago","ESP Seguridad informacion","Diana122@hotmail.com");


            GrvMatricula.DataSource = dt;
            GrvMatricula.DataBind();
            GrvMatricula.UseAccessibleHeader = true;
            GrvMatricula.HeaderRow.TableSection = TableRowSection.TableHeader;
        }

        protected void GrvMatricula_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("/inicio");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("/MenuOpciones");
        }
    }
}