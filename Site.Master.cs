using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VehicleProject
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                loginbtn.Visible = true;
                signupbtn.Visible = true;
                gallerybtn.Visible = false;
                logbtn.Visible = true;
                checkf.Visible = false;
                checki.Visible = false;
                gallerybtn2.Visible = false;
                profilebtn.Visible = false;

            }else if(Session["ID"] != null)
            { 
                    logbtn.Visible = false;
                    loginbtn.Visible = false;
                    signupbtn.Visible = false;
                    gallerybtn.Visible = true;
                    logoutbtn.Visible = true;
                    checkf.Visible = true;
                    checki.Visible = true;
                    gallerybtn2.Visible = true;
                    profilebtn.Visible = true;
            }
            Session["date"] = DateTime.Now.ToString();

        }

        protected void gallerybtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/gallery.aspx");
        }
        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login/Login.aspx");
        }
        protected void signupbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignUp/SignUp.aspx");
        }

        protected void checki_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Insurance.aspx");
        }
        protected void checkf_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Fitness.aspx");
        }
        protected void profilebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Profile.aspx");
        }
        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Default.aspx");
        }
    }
}