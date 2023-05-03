using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleProject
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
           SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            String ch = e.CommandArgument.ToString();
            String ln = e.CommandName.ToString();
            cmd.CommandText = "UPDATE [Vehicle_Info] SET Owner ="+"@PID "+"WHERE Chassis_Num= @Pchass";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@PID", Session["ID"]);
            cmd.Parameters.AddWithValue("@Pchass", ch);
            int resultl = cmd.ExecuteNonQuery();
            
            Response.Redirect("~/Operation.aspx?ID=" +ch+"&FIT="+ln);
        }
    }
}