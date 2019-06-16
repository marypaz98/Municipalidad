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
    public partial class MantenimientoAbonado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            guardarDatos(TextNombre.Text, TextDocId.Text);
        }
        protected void guardarDatos(string nombre, string docId)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=MPA\SQLEXPRESS;Initial Catalog=Municipalidad;Integrated Security=True");
            SqlCommand comando = conexion.CreateCommand();
            comando.CommandText = "actualizarAbonado";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@NombreAbonado", nombre);
            comando.Parameters.AddWithValue("@DocId", docId);
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