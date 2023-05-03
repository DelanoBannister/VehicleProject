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
    public partial class Operation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("~/login/Login.aspx");
            }
            else
            {
                if (Request.QueryString["ID"] != null || Request.QueryString["RID"] != null)
                {
                    Label1.Text = "Insurance Date: ";
                }
                else if (Request.QueryString["MVP"] != null)
                {
                    Label1.Text = "Motor Vehicle Registration Date: ";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] != null)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EC1_ID_GRPConnectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Set_Insurance", con);
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ch", SqlDbType.VarChar).Value = Int32.Parse(Request.QueryString["ID"]);
                cmd.Parameters.AddWithValue("@insur", SqlDbType.Date).Value = TextBox1.Text;
                cmd.ExecuteNonQuery();
                String fit = Request.QueryString["FIT"];
                if(Request.QueryString["FIT"] != null)
                {
                    Response.Redirect("OperationF.aspx?FIT="+fit);
                }
            }

            if (Request.QueryString["RID"] != null)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EC1_ID_GRPConnectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Update_Insurance", con);
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@insure", SqlDbType.VarChar).Value = Int32.Parse(Request.QueryString["RID"]);
                cmd.Parameters.AddWithValue("@date", SqlDbType.Date).Value = TextBox1.Text;
                cmd.ExecuteNonQuery();
                String fit = Request.QueryString["RFIT"];
                if (Request.QueryString["RFIT"] != null)
                {
                    Response.Redirect("OperationF.aspx?RFIT="+fit);
                }
            }

            if (Request.QueryString["MVP"] != null)
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["EC1_ID_GRPConnectionString"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd = new SqlCommand("Set_MVP", con);
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@MVP", SqlDbType.VarChar).Value = Int32.Parse(Request.QueryString["MVP"]);
                cmd.Parameters.AddWithValue("@date", SqlDbType.Date).Value = TextBox1.Text;
                cmd.ExecuteNonQuery();
                Response.Redirect("Profile.aspx");
            }
        }
    }
}
