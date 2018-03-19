using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeedbackSystem.faculty
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtusername.Text = (string)Session["FacultyId"];
        }

        protected void btnUpdatePwd_Click(object sender, EventArgs e)
        {
        }
    }
}