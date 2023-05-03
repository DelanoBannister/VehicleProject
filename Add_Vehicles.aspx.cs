using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleProject
{
    public partial class Add_Vehicles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Imagefile = string.Empty;
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("~/assets/" + FileUpload1.FileName));
                Imagefile = "~/assets/" + FileUpload1.FileName;
            }
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ToString();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert into[Vehicle_Info](Photo,License_reg,Chassis_Num,Make,Model, Owner)" + "values(@PPhoto,@PLicense,@PCha,@PMake,@PModel,@POwner)";
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@PPhoto", Imagefile);
            cmd.Parameters.AddWithValue("@PLicense", TextBox1.Text);
            cmd.Parameters.AddWithValue("@PCha", TextBox2.Text);
            cmd.Parameters.AddWithValue("@PMake", town.Text);
            cmd.Parameters.AddWithValue("@PModel", name.Text);
            cmd.Parameters.AddWithValue("@POwner", 0);
            int resultl = cmd.ExecuteNonQuery();
            if (resultl > 0)
            {
                result.ForeColor = System.Drawing.Color.Green;
                result.Text = "Save Record Successfully";

            }
        }
    }
}