using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.admin
{
    public partial class ApproveRejectStudent : System.Web.UI.Page
    {
        private Student objStudent = new Student();
        protected void Page_Load(object sender, EventArgs e)
        {
            string stdid = Request.QueryString["StdID"];
            PopulateStudentDetails(stdid);
        }

        private void PopulateStudentDetails(string stdId)
        {
            DataTable dt = objStudent.GetStudentDetailsById(Convert.ToInt32(stdId));
            if (dt.Rows.Count > 0)
            {
                txtStdName.Text = (string)dt.Rows[0]["StudentName"];
            }
        }
        protected void btnApproveStudent_Click(object sender, EventArgs e)
        {

        }

        protected void btnRejectStudent_Click(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ApproveStudents.aspx");
        }
    }
}