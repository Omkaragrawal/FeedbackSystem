using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.hod_principal
{
    public partial class AuthoritysAppraisalPart2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            AuthFBDetails objAuthFBDetails = new AuthFBDetails();

            objAuthFBDetails.Q1Marks = (Q1Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q1Marks.SelectedValue);
            objAuthFBDetails.Q2Marks = (Q2Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q2Marks.SelectedValue);
            objAuthFBDetails.Q3Marks = (Q3Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q3Marks.SelectedValue);
            objAuthFBDetails.Q4Marks = (Q4Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q4Marks.SelectedValue);

            objAuthFBDetails.Q5Marks = (Q5Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q5Marks.SelectedValue);
            objAuthFBDetails.Q6Marks = (Q6Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q6Marks.SelectedValue);
            objAuthFBDetails.Q7Marks = (Q7Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q7Marks.SelectedValue);
            objAuthFBDetails.Q8Marks = (Q8Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q8Marks.SelectedValue);
            objAuthFBDetails.Q9Marks = (Q9Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q9Marks.SelectedValue);
            objAuthFBDetails.Q10Marks = (Q10Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q10Marks.SelectedValue);
            objAuthFBDetails.Q11Marks = (Q11Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q11Marks.SelectedValue);
            objAuthFBDetails.Q12Marks = (Q12Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q12Marks.SelectedValue);
            objAuthFBDetails.Q13Marks = (Q13Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q13Marks.SelectedValue);
            objAuthFBDetails.Q14Marks = (Q14Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q14Marks.SelectedValue);
            objAuthFBDetails.Q15Marks = (Q15Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q15Marks.SelectedValue);
            objAuthFBDetails.Q16Marks = (Q16Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q16Marks.SelectedValue);
            objAuthFBDetails.Q17Marks = (Q17Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q17Marks.SelectedValue);
            objAuthFBDetails.Q18Marks = (Q18Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q18Marks.SelectedValue);
            objAuthFBDetails.Q19Marks = (Q19Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q19Marks.SelectedValue);
            objAuthFBDetails.Q20Marks = (Q20Marks.SelectedValue == string.Empty) ? 0 : Convert.ToInt32(Q20Marks.SelectedValue);
            objAuthFBDetails.Q21Marks = 0;
            int tempTotal = (
                                        objAuthFBDetails.Q1Marks +
                                        objAuthFBDetails.Q2Marks +
                                        objAuthFBDetails.Q3Marks +
                                        objAuthFBDetails.Q4Marks +
                                        objAuthFBDetails.Q5Marks +
                                        objAuthFBDetails.Q6Marks +
                                        objAuthFBDetails.Q7Marks +
                                        objAuthFBDetails.Q8Marks +
                                        objAuthFBDetails.Q9Marks +
                                        objAuthFBDetails.Q10Marks +
                                        objAuthFBDetails.Q11Marks +
                                        objAuthFBDetails.Q12Marks +
                                        objAuthFBDetails.Q13Marks +
                                        objAuthFBDetails.Q14Marks +
                                        objAuthFBDetails.Q15Marks +
                                        objAuthFBDetails.Q16Marks +
                                        objAuthFBDetails.Q17Marks +
                                        objAuthFBDetails.Q18Marks +
                                        objAuthFBDetails.Q19Marks +
                                        objAuthFBDetails.Q20Marks
                );

            decimal finalTotal = Math.Floor(Convert.ToDecimal(tempTotal / 10)) * 10;
            if (tempTotal - finalTotal >= 5)
            {
                finalTotal += 10;
            }
            objAuthFBDetails.Total = Convert.ToInt32(finalTotal); // ToDo: Calculate total

            objAuthFBDetails.Status = "Form4 Submitted";
            objAuthFBDetails.SAMaster_Id = Convert.ToInt32(Request["FBId"]);
            objAuthFBDetails.Remarks = txtRemarks.Text;

            int result = objAuthFBDetails.InsertAuthFBDetails(objAuthFBDetails);

            if (result == 0)
            {
                lblMsg.Text = "Some error occured, Please contact administrator..";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblMsg.Text = "Authority feedback submitted..";
                lblMsg.ForeColor = System.Drawing.Color.Green;

                //ToDo: Also update the status to "Form4 Submitted in tbl_SelfAprisalMasterDetails"
                UpdateStatusinSelfAprisalMaster(objAuthFBDetails.SAMaster_Id);
            }
        }

        private void UpdateStatusinSelfAprisalMaster(int feedbackId)
        {
            SelfAprisalMasterDetails objSelfAprisalMasterDetails = new SelfAprisalMasterDetails();
            objSelfAprisalMasterDetails.UpdateStatus_SelfAppraisalMaster(feedbackId, "Form4 Submitted");
        }
    }
}