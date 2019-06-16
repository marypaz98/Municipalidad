using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Municipalidad
{
    public partial class RecibosPendientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Valor1 = Request.QueryString["Valor1"];
            String Valor = Request.QueryString["Valor"];
            SqlDataSource1.SelectParameters["idCliente"].DefaultValue = Valor;
            SqlDataSource1.SelectParameters["NombreMunicipalidad"].DefaultValue = Valor1;
        }

        protected void ButtonAceptar_Click(object sender, EventArgs e)
        {
            if (IsNumeric(TextRecibo.Text))
            {
                String Valor = TextRecibo.Text;
                Response.Redirect("ConsultarUnRecibo.aspx?Valor=" + Valor);
            }
        }
        private bool IsNumeric(string num)
        {
            try
            {
                double x = Convert.ToDouble(num);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}