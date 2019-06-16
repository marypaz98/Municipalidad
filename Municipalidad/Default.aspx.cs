using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Municipalidad
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonProfesor_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Administrador.aspx");
        }

        protected void ButtonCliente_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Cliente.aspx");
        }
    }
}