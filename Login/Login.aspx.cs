using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleProject.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string role = string.Empty;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Select * from [SignUp] WHERE Email=@email AND Password=@password";
            cmd.Parameters.AddWithValue("@email", user.Text);
            cmd.Parameters.AddWithValue("@password", pass.Text);
            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                role = rd["Role"].ToString();
                Session["Name"] = rd["Name"].ToString();
                Session["ID"] = rd["ID"].ToString();
            }

            if (String.Compare(role, "User") == 0)
            {
                Session["Role"] = role;
                Response.Redirect("~/Default.aspx");
            }
            else if (String.Compare(role, "Admin") == 0)
            {
                Session["Role"] = role;
                Response.Redirect("~/Add_Vehicles.aspx");
            }
            else if (string.IsNullOrEmpty(role))
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}