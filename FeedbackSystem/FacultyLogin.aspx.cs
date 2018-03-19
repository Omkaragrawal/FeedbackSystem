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
    public partial class FacultyLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStdLogin_Click(object sender, EventArgs e)
        {
            FacultyLoginDetails objFacultyLoginDetails = new FacultyLoginDetails();
            DataTable dtTemp1 = objFacultyLoginDetails.ValidateFacultyLoginDetails(txtUsername.Text,
                txtPassword.Text);
            if (dtTemp1.Rows.Count > 0)
            {
                Session["FacultyId"] = Convert.ToString(dtTemp1.Rows[0]["FacultyId"]);
                Response.Redirect("faculty/FacultyHome.aspx");
            }
            else
            {
                lblMsg.Text = "Wrong username or password..";
                //wrong credentials
            }
        }
    }
}