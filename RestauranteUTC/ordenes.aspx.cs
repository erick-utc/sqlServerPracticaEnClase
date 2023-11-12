using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestauranteUTC
{
    public partial class ordenes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //LlenarCliente();
                LlenarMesero();
                TextBox1.Text = Global.nmesa.ToString();
            }

        }



        protected void Bingresar_Click(object sender, EventArgs e)
        {



        }


        protected void LlenarCliente()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexionMesas"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select CODIGO, NOMBRE from Cliente"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            DropDownList2.DataSource = dt;

                            DropDownList2.DataTextField = dt.Columns["nombre"].ToString();
                            DropDownList2.DataValueField = dt.Columns["codigo"].ToString();
                            DropDownList2.DataBind();
                        }
                    }
                }
            }
        }

        protected void LlenarMesero()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexionMesas"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select CODIGO, NOMBRE from mesero"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            DropDownList1.DataSource = dt;

                            DropDownList1.DataTextField = dt.Columns["nombre"].ToString();
                            DropDownList1.DataValueField = dt.Columns["codigo"].ToString();
                            DropDownList1.DataBind();
                        }
                    }
                }
            }
        }

        protected void AcutalizarMesa()
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                string pedido = TextBox2.Text;

                SqlCommand comando = new SqlCommand("update mesa set ocupada = 1 where codigo = '" + int.Parse(TextBox1.Text) + "'", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
                Response.Redirect("pedidos.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                string pedido = TextBox2.Text;

                SqlCommand comando = new SqlCommand(" INSERT INTO Pedido VALUES('" + int.Parse(TextBox1.Text) + "', '" + int.Parse(DropDownList1.SelectedValue) + "', '" + int.Parse(DropDownList2.SelectedValue) + "'," +
                    " '" + TextBox2.Text + "' )", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
                //AcutalizarMesa();
                Response.Redirect("pedidos.aspx");
            }
            catch (Exception)
            {

                throw;
            }


        }
    }
}