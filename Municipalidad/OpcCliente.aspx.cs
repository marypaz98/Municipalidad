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
    public partial class OpcCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextNombre_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void ButtonAceptar_Click(object sender, EventArgs e)
        {
            String Valor = Request.QueryString["Valor"];
            String Valor1 = TextNombre.Text;
            guardarDatos(Valor, Valor1);

        }
        protected void guardarDatos(string idCliente, string NombreMunicipalidad)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=MPA\SQLEXPRESS;Initial Catalog=Municipalidad;Integrated Security=True");
            SqlCommand comando = conexion.CreateCommand();
            comando.CommandText = "sp_ActualizarRecibosxCliente";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@idCliente", idCliente);
            comando.Parameters.AddWithValue("@NombreMunicipalidad", NombreMunicipalidad);
            try
            {
                conexion.Open();
                comando.ExecuteNonQuery();
                conexion.Close();
                Response.Redirect("OpcionesCliente.aspx?Valor=" + idCliente + "&Valor1=" + NombreMunicipalidad);

            }
            catch (Exception e)
            {
                Label1.Visible = true;

            }
        }
    }
}