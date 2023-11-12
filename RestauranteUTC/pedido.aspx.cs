using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestauranteUTC
{
    public partial class pedido : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBtnDesactivada_Click(object sender, ImageClickEventArgs e)
        {
            imgBtnDesactivada.ImageUrl = "img/mesaActiva.png";
            Global.nmesa = 1;
            Response.Redirect("ordenes.aspx");
        }

        protected void imgBtnDesactivada2_Click(object sender, ImageClickEventArgs e)
        {
            imgBtnDesactivada2.ImageUrl = "img/mesaActiva.png";
            Global.nmesa = 2;
            Response.Redirect("ordenes.aspx");
        }
    }
}