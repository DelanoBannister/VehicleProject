using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleProject
{
    public partial class Fitness : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["ln"] = TextBox2.Text;
            Response.Redirect("Insurance.aspx");
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            Response.Redirect("~/Operation.aspx ? FIT = " + Convert.ToString(Id));
        }
    }
}