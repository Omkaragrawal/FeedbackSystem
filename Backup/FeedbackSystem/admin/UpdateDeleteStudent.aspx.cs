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
    public partial class UpdateDeleteStudent : System.Web.UI.Page
    {
        private Student objStudent = new Student();
        protected void Page_Load(object sender, EventArgs e)
        {
            string ac = Request.QueryString["ActionCode"];
            PopulateControlsAsPerAction(ac);

            string stdid = Request.QueryString["StdID"];
            PopulateStudentDetails(stdid);
        }

        private void PopulateControlsAsPerAction(string actionCode)
        {
            if (actionCode == "U")
            {
                btnUpdateStudent.Visible = true;
                PlaceHolder1.Controls.Add(new Literal { Text = "<h2>Update <span>Student Details</span></h2>" });
            }
            else if (actionCode == "D")
            {
                btnDeleteStudent.Visible = true;
                PlaceHolder1.Controls.Add(new Literal { Text = "<h2>Delete <span>Student Details</span></h2>" });
            }
        }

        private void PopulateStudentDetails(string stdId)
        {
            DataTable dt = objStudent.GetStudentDetailsById(Convert.ToInt32(stdId));
            if (dt.Rows.Count > 0) {
                txtStdName.Text = (string)dt.Rows[0]["StudentName"];
            }
        }
        protected void btnUpdateStudent_Click(object sender, EventArgs e)
        {

        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewStudents.aspx");
        }

        protected void btnDeleteStudent_Click(object sender, EventArgs e)
        {

        }
    }
}