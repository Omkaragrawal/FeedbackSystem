using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            LoginDetails LD = new LoginDetails();
            LD.Username = txtUsername.Text;
            LD.Password = txtPassword.Text;

            DataTable userDT = LD.ValidateUser(LD);
            if (userDT != null && userDT.Rows.Count == 0)
            {
                lblMsg.Text = "Wrong username or password";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                //Session Variables
                Session["Username"] = userDT.Rows[0]["Username"];
                Session["Role"] = userDT.Rows[0]["Role"];

                var returnUrl = Request.QueryString["ReturnURL"];
                if (string.IsNullOrEmpty(returnUrl))
                {
                    if ("Admin" == userDT.Rows[0]["Role"].ToString())
                    {
                        Response.Redirect("~/admin/AdminHome.aspx");
                    }
                }
            }
        }
    }
}