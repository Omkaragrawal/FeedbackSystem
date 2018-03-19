using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.faculty
{
    public partial class PeerAppraisalPart1 : System.Web.UI.Page
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
                txtdesignation.Text = (string)dtTemp.Rows[0]["Designation"];
                txtdept.Text = (string)dtTemp.Rows[0]["Department"];
            }
        }
        protected void btnContinue_Click(object sender, EventArgs e)
        {
            // Check if peer faculty has already submitted feedback for this faculty
            int facId = Convert.ToInt32(Session["FacultyId"]);
            int fbId = Convert.ToInt32(Request["FBId"]);

            if (IsPeerFeedbackSubmitted(facId, fbId))
            {
                // ToDo: Display error msg as FB Already submitted
            }
            else
            {
                Response.Redirect("PeerAppraisalPart2.aspx?FBId=" + fbId.ToString());
            }

        }

        private bool IsPeerFeedbackSubmitted(int facId, int fbId)
        {
            bool isSubmitted = false;
            PeerFBDetails objPeerFBDetails = new PeerFBDetails();
            DataTable dtTemp = objPeerFBDetails.IsPeerFBSubmittedByFaculty(facId, fbId);

            if (dtTemp.Rows.Count > 0)
            {
                isSubmitted = true;
            }
            return isSubmitted;
        }
    }
}