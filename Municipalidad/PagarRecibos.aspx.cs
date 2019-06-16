using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Municipalidad
{
    public partial class PagarRecibos : System.Web.UI.Page
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
            if (IsNumeric(TextPropiedad.Text))
            {
                guardarDatos(TextPropiedad.Text);
            }
        }
        protected void guardarDatos(string idPropiedad)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=MPA\SQLEXPRESS;Initial Catalog=Municipalidad;Integrated Security=True");
            SqlCommand comando = conexion.CreateCommand();
            comando.CommandText = "sp_PagarRecibo";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@idPropiedad", idPropiedad);
            try
            {
                conexion.Open();
                comando.ExecuteNonQuery();
                conexion.Close();
                String Valor1 = Request.QueryString["Valor1"];
                String Valor = Request.QueryString["Valor"];
                Response.Redirect("PagarRecibos.aspx?Valor=" + Valor + "&Valor1=" + Valor1);
            }
            catch (Exception e)
            {
                LabelError.Visible = true;

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