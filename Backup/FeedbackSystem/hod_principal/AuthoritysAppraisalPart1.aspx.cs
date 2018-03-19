using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.hod_principal
{
    public partial class AuthoritysAppraisalPart1 : System.Web.UI.Page
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
                txtFacName.Text = (string)dtTemp.Rows[0]["Name"];
                txtDesignation.Text = (string)dtTemp.Rows[0]["Designation"];
                txtDept.Text = (string)dtTemp.Rows[0]["Department"];
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            // Check if principal has already submitted feedback for this faculty
            //int princId = Convert.ToInt32(Session["PrincipalId"]);
            int fbId = Convert.ToInt32(Request["FBId"]);

            if (IsPrincFeedbackSubmitted(fbId))
            {
                // ToDo: Display error msg as FB Already submitted
            }
            else
            {
                Response.Redirect("AuthoritysAppraisalPart2.aspx?FBId=" + fbId.ToString());
            }
        }

        private bool IsPrincFeedbackSubmitted(int fbId)
        {
            bool isSubmitted = false;
            AuthFBDetails objAuthFBDetails = new AuthFBDetails();
            DataTable dtTemp = objAuthFBDetails.IsPrincFBSubmittedByStd(fbId);

            if (dtTemp.Rows.Count > 0)
            {
                isSubmitted = true;
            }
            return isSubmitted;
        }
    }
}