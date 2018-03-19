using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.students
{
    public partial class StudentsFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int facId = Convert.ToInt32(Request["FacID"]);
                PopulateFacultyDetails(facId);
            }
        }

        private void PopulateFacultyDetails(int facultyId)
        {
            FacultyDetails fd = new FacultyDetails();

            DataTable dtTemp = fd.GetFacultyById(facultyId);
            if (dtTemp.Rows.Count > 0)
            {
                txtFactName.Text = (string)dtTemp.Rows[0]["Name"];
                txtDept.Text = (string)dtTemp.Rows[0]["Department"];
                // Populate Subject and Branch
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            // Check if student has already submitted feedback for this faculty
            int stdId = Convert.ToInt32(Session["StudentId"]);
            int fbId = Convert.ToInt32(Request["FBId"]);

            if (IsFeedbackSubmitted(stdId, fbId))
            {
                // ToDo: Display error msg as FB Already submitted
            }
            else
            {
                Response.Redirect("StudentsFeedbackPart2.aspx?FBId=" + fbId.ToString());
            }
        }

        private bool IsFeedbackSubmitted(int stdId, int fbId)
        {
            bool isSubmitted = false;
            StdFBDetails objStdFBDetails = new StdFBDetails();
            DataTable dtTemp = objStdFBDetails.IsFBSubmittedByStd(stdId, fbId);

            if (dtTemp.Rows.Count > 0)
            {
                isSubmitted = true;
            }
            return isSubmitted;
        }
    }
}