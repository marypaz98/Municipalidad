using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Municipalidad
{
    public partial class OpcionesAdministrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAgua_Click(object sender, EventArgs e)
        {
            String Valor= Request.QueryString["Valor"];
            Response.Redirect("CortesAgua.aspx?Valor=" + Valor);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String Valor = Request.QueryString["Valor"];
            Response.Redirect("AbonadosMorosos.aspx?Valor=" + Valor);
        }

        protected void ButtonDistrito_Click(object sender, EventArgs e)
        {
            String Valor = Request.QueryString["Valor"];
            Response.Redirect("DistritoMoroso.aspx?Valor=" + Valor);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/OpcionesMantenimiento.aspx");
        }
    }
}