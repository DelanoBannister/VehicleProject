using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.Collections;
using VehicleProject.ServiceReference1;

namespace VehicleProject
{
    public partial class Vehicle_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            string cn = Request.QueryString["ID"];
            string ln = Request.QueryString["FIT"];
            ServiceReference1.ValidationSoapClient obj = new ServiceReference1.ValidationSoapClient();
            ArrayOfAnyType ele = new ArrayOfAnyType();
            ele = obj.Insurance(cn);
            ArrayOfAnyType ale = new ArrayOfAnyType();
            ale = obj.Fitness(ln);
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Label istatus = (Label)e.Item.FindControl("Insurstatus");
                Label fstatus = (Label)e.Item.FindControl("Fitstatus");
                string st = ele[1].ToString();
                string fit = ale[1].ToString();
                int i = 0;
                int f = 0;
                if (String.Equals(st, "Expired"))
                {
                    istatus.Text = st;
                    Button ib = (Button)e.Item.FindControl("ibtn");
                    ib.Visible = true;
                    i = 1;
                }
                else
                {
                    istatus.Text = st;
                    Button ib = (Button)e.Item.FindControl("ibtn");
                    ib.Visible = false;
                    
                }

                if (String.Equals(fit, "Expired"))
                {
                    fstatus.Text = st;
                    Button ib = (Button)e.Item.FindControl("fbtn");
                    ib.Visible = true;
                    f = 1;
                }
                else
                {
                    fstatus.Text = st;
                    Button ib = (Button)e.Item.FindControl("fbtn");
                    ib.Visible = false;
                }

                if(i== 1 && f == 1) 
                {
                    Button ld = (Button)e.Item.FindControl("Button3");
                    ld.Visible = false;
                }
                else
                {
                    Button ld = (Button)e.Item.FindControl("Button3");
                    ld.Visible = true;
                }
            }
        }

        protected void ibtn_Click(object sender, EventArgs e)
        {
            string ch = Request.QueryString["ID"];
            string fi = Request.QueryString["FIT"];
            Response.Redirect("~/Operation.aspx?RID="+ch+"&RFIT="+fi);
        }

        protected void fbtn_Click(object sender, EventArgs e)
        {
            string fi = Request.QueryString["FIT"];
            Response.Redirect("~/OperationF.aspx?RFIT="+fi);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string ch = Request.QueryString["ID"];
            Response.Redirect("~/Operation.aspx?MVP="+ch);
        }
    }
}