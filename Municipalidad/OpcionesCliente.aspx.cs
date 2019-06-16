using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Municipalidad
{
    public partial class OpcionesCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ButtonRecibosPendientes_Click(object sender, EventArgs e)
        {
            String idCliente= Request.QueryString["Valor"];
            String NombreMunicipalidad = Request.QueryString["Valor1"];
            Response.Redirect("RecibosPendientes.aspx?Valor=" + idCliente + "&Valor1=" + NombreMunicipalidad);
        }

        protected void ButtonRecibosPagados_Click(object sender, EventArgs e)
        {
            String idCliente = Request.QueryString["Valor"];
            Response.Redirect("RecibosPagados.aspx?Valor=" + idCliente);
        }

        protected void ButtonPagarRecibos_Click(object sender, EventArgs e)
        {
            String idCliente = Request.QueryString["Valor"];
            String NombreMunicipaliad = Request.QueryString["Valor1"];
            Response.Redirect("PagarRecibos.aspx?Valor=" + idCliente+"&Valor1="+NombreMunicipaliad);
        }

    }
}