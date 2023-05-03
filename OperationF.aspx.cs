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
    public partial class OperationF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
            else
            {
                if (Request.QueryString["FIT"] != null || Request.QueryString["RFIT"] != null)
                {
                    Label1.Text = "Fitness Date: ";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["FIT"] != null)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Set_fitness", con);
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ch", SqlDbType.VarChar).Value = Request.QueryString["FIT"];
                cmd.Parameters.AddWithValue("@fitn", SqlDbType.Date).Value = TextBox1.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Profile.aspx");
            }

            if (Request.QueryString["RFIT"] != null)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Update_fitness", con);
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@fit", SqlDbType.VarChar).Value = Request.QueryString["RFIT"];
                cmd.Parameters.AddWithValue("@date", SqlDbType.Date).Value = TextBox1.Text;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Profile.aspx");
            }
        }
    }
}