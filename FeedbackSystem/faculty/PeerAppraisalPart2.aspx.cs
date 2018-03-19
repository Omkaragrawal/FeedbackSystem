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
    public partial class PeerAppraisalPart2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request["FBId"] != null && Request["FacId"] != null)
                {
                    int facId = Convert.ToInt32(Request["FacId"]);
                    int fbId = Convert.ToInt32(Request["FBId"]);
                    PopulateForm3Details(facId, fbId);
                    btnSubmit.Visible = false;
                }
            }
        }
        private void PopulateForm3Details(int facultyId, int fbId)
        {
            models.PeerFBDetails objPeerFBDetails = new models.PeerFBDetails();

            DataTable dtTemp = objPeerFBDetails.GetPeerFeedbackMarks(fbId, facultyId);

            if (dtTemp.Rows.Count > 0)
            {
                Q1Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q1Marks"]);

                Q2Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q2Marks"]);
                Q3Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q3Marks"]);
                Q4Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q4Marks"]);
                Q5Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q5Marks"]);
                Q6Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q6Marks"]);

                //ddlQ17Ans.SelectedValue = (string)dtTemp.Rows[0]["Total"];
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            PeerFBDetails objPeerFBDetails = new PeerFBDetails();

            objPeerFBDetails.Q1Marks = (Q1Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q1Marks.SelectedValue);
            objPeerFBDetails.Q2Marks = (Q2Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q2Marks.SelectedValue);
            objPeerFBDetails.Q3Marks = (Q3Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q3Marks.SelectedValue);
            objPeerFBDetails.Q4Marks = (Q4Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q4Marks.SelectedValue);
            objPeerFBDetails.Q5Marks = (Q5Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q5Marks.SelectedValue);
            objPeerFBDetails.Q6Marks = (Q6Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q6Marks.SelectedValue);
            objPeerFBDetails.Q7Marks = (Q7Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q7Marks.SelectedValue);
            objPeerFBDetails.Q8Marks = (Q8Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q8Marks.SelectedValue);
            objPeerFBDetails.Q9Marks = (Q9Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q9Marks.SelectedValue);
            objPeerFBDetails.Q10Marks = (Q10Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q10Marks.SelectedValue);
            objPeerFBDetails.Q11Marks = 0;

            // ToDo: Calculate total
            int tempTotal = (objPeerFBDetails.Q1Marks + objPeerFBDetails.Q2Marks + objPeerFBDetails.Q3Marks + objPeerFBDetails.Q4Marks + objPeerFBDetails.Q5Marks +
                                    objPeerFBDetails.Q6Marks + objPeerFBDetails.Q7Marks + objPeerFBDetails.Q8Marks + objPeerFBDetails.Q9Marks + objPeerFBDetails.Q10Marks);


            decimal finalTotal = Math.Floor(Convert.ToDecimal(tempTotal / 10)) * 10;

            if (tempTotal - finalTotal >= 5)
            {
                finalTotal += 10;
            }
            objPeerFBDetails.Total = Convert.ToInt32(finalTotal);

            objPeerFBDetails.Status = "Form3 Submitted";
            objPeerFBDetails.Faculty_Id = Convert.ToInt32(Session["FacultyId"]);
            objPeerFBDetails.SAMaster_Id = Convert.ToInt32(Request["FBId"]);
            objPeerFBDetails.Remarks = txtRemarks.Text;

            int result = objPeerFBDetails.InsertPeerFBDetails(objPeerFBDetails);
            if (result == 0)
            {
                lblMsg.Text = "Some error occured, Please contact administrator..";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblMsg.Text = "Peer feedback submitted";
                lblMsg.ForeColor = System.Drawing.Color.Green;
                //ToDo: Also update the status to "Form3 Submitted in tbl_SelfAprisalMasterDetails"
                UpdateStatusinSelfAprisalMaster(objPeerFBDetails.SAMaster_Id);
            }
        }

        private void UpdateStatusinSelfAprisalMaster(int feedbackId)
        {
            SelfAprisalMasterDetails objSelfAprisalMasterDetails = new SelfAprisalMasterDetails();
            objSelfAprisalMasterDetails.UpdateStatus_SelfAppraisalMaster(feedbackId, "Form3 Submitted");
        }
    }
}