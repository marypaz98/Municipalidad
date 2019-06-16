using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Municipalidad
{
    public partial class ConsultarUnRecibo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String Valor = Request.QueryString["Valor"];
            SqlDataSource1.SelectParameters["idRecibo"].DefaultValue = Valor;
        }
    }
}