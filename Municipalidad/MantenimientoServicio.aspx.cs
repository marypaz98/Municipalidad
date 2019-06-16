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
    public partial class MantenimientoServicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            guardarDatos(TextNombre.Text, TextDocId.Text);
        }
        protected void guardarDatos(string nombre, string valor)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=MPA\SQLEXPRESS;Initial Catalog=Municipalidad;Integrated Security=True");
            SqlCommand comando = conexion.CreateCommand();
            comando.CommandText = "actualizarServicio";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@Nombre", nombre);
            comando.Parameters.AddWithValue("@valor", valor);
            try
            {
                conexion.Open();
                comando.ExecuteNonQuery();
                conexion.Close();
            }
            catch (Exception e)
            {
                LabelError.Visible = true;

            }
        }
    }
}