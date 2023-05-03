using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleProject
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                homelab.Text = "Welcome " + Session["Name"].ToString();
                homelab.ForeColor = System.Drawing.Color.Aqua;
            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            String ch = e.CommandArgument.ToString();
            String ln = e.CommandName.ToString();
            Response.Redirect("~/Vehicle_Registration.aspx?ID="+ch+"&FIT="+ln);
        }

    }
}