using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleProject.SignUp
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "Insert into [SignUp](Name,Email,Address,Password,Role,PhoneNumber)values(@nameval,@emailval,@addressval,@passwordval,@roleval,@phoneval)";
            cmd.Parameters.AddWithValue("@nameval", name.Text);
            cmd.Parameters.AddWithValue("@emailval", email.Text);
            cmd.Parameters.AddWithValue("@addressval", Address.Text);
            cmd.Parameters.AddWithValue("@passwordval", password.Text);
            cmd.Parameters.AddWithValue("@roleval", "User");
            cmd.Parameters.AddWithValue("@phoneval", phone.Text);

            var result = cmd.ExecuteNonQuery();

            if (result > 0)
            {
                Resulttlbl.Text = "Register Successfully";
            }
            Response.Redirect("~/Login/Login.aspx");

        }
    }
}