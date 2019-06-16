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
    public partial class Cliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonAdministrador_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Administrador.aspx");
        }

        protected void ButtonCliente_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/Cliente.aspx");
        }

        protected void ButtonAceptar_Click(object sender, EventArgs e)
        {
            if (IsNumeric(TextUsuario.Text))
            {
                guardarDatos(TextUsuario.Text);
            }
            else
            {
                LabelError.Visible = true;
            }
        }
        protected void guardarDatos(string idCliente)
        {
            SqlConnection conexion = new SqlConnection(@"Data Source=MPA\SQLEXPRESS;Initial Catalog=Municipalidad;Integrated Security=True");
            SqlCommand comando = conexion.CreateCommand();
            comando.CommandText = "sp_validarEntradaAbonado";
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@idCliente", idCliente);
            try
            {
                conexion.Open();
                comando.ExecuteNonQuery();
                conexion.Close();
                string Valor = TextUsuario.Text;
                Response.Redirect("OpcCliente.aspx?Valor=" + Valor);

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