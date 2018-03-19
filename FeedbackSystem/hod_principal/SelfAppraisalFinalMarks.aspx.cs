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
    public partial class SelfAppraisalFinalMarks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PopulateReviewMarks();
            }
        }

        private void PopulateReviewMarks()
        {
            int fbid = Convert.ToInt32(Request["FBId"]);

            SelfAprisalMasterDetails objSelfAprisalMasterDetails = new SelfAprisalMasterDetails();
            DataTable dtTemp4 = objSelfAprisalMasterDetails.GetSelfApprisalMarksByFBId(fbid);
            if (dtTemp4.Rows.Count > 0)
            {
                txtQ6Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q6Marks"]);
                txtQ7Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q7Marks"]);
                txtQ8Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q8Marks"]);
                txtQ9Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q9Marks"]);
                txtQ10Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q10Marks"]);
                txtQ11Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q11Marks"]);
                txtQ12Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q12Marks"]);
                txtQ13Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q13Marks"]);
                txtQ14Marks.Text = Convert.ToString(dtTemp4.Rows[0]["Q14Marks"]);
            }
        }
        protected void btnContinue_Click(object sender, EventArgs e)
        {
            SelfAprisalMasterDetails SADetails = new SelfAprisalMasterDetails();

            SADetails.Q6Marks = Convert.ToInt32(txtQ6Marks.Text);
            SADetails.Q7Marks = Convert.ToInt32(txtQ7Marks.Text);
            SADetails.Q8Marks = Convert.ToInt32(txtQ8Marks.Text);
            SADetails.Q9Marks = Convert.ToInt32(txtQ9Marks.Text);
            SADetails.Q10Marks = Convert.ToInt32(txtQ10Marks.Text);
            SADetails.Q11Marks = Convert.ToInt32(txtQ11Marks.Text);
            SADetails.Q12Marks = Convert.ToInt32(txtQ12Marks.Text);
            SADetails.Q13Marks = Convert.ToInt32(txtQ13Marks.Text);
            SADetails.Q14Marks = Convert.ToInt32(txtQ14Marks.Text);

            //SADetails.Total =  Convert.ToInt32(txtQ6Marks.Text) +
            //                    Convert.ToInt32(txtQ7Marks.Text)+
            //                    Convert.ToInt32(txtQ8Marks.Text)+
            //                    Convert.ToInt32(txtQ9Marks.Text)+
            //                    Convert.ToInt32(txtQ10Marks.Text)+
            //                    Convert.ToInt32(txtQ11Marks.Text)+
            //                    Convert.ToInt32(txtQ12Marks.Text)+
            //                    Convert.ToInt32(txtQ13Marks.Text)+
            //                    Convert.ToInt32(txtQ14Marks.Text);

            int tempTotal = (SADetails.Q6Marks + SADetails.Q7Marks + SADetails.Q8Marks + SADetails.Q9Marks + SADetails.Q10Marks + SADetails.Q11Marks
                    + SADetails.Q12Marks + SADetails.Q13Marks + SADetails.Q14Marks);

            decimal finalTotal = Math.Floor(Convert.ToDecimal(tempTotal / 10)) * 10;

            if (tempTotal - finalTotal >= 5)
            {
                finalTotal += 10;
            }
            SADetails.Total = Convert.ToInt32(finalTotal);

            SADetails.SAMasterId = Convert.ToInt32(Request["FBId"]);
            //SADetails.Remarks = txtRemarks.Text;

            // No need to update final marks again
            SADetails.UpdateSelfAppraisalFinalMarks(SADetails);
            lblMsg.Text = "Final marks submitted";
        }
    }
}