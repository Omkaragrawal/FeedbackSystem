using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.students
{
    public partial class StudentsFeedbackPart2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StdFBDetails objStdFBDetails = new StdFBDetails();

            objStdFBDetails.Q1Marks = (Q1Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q1Marks.SelectedValue);
            objStdFBDetails.Q2Marks = (Q2Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q2Marks.SelectedValue);
            objStdFBDetails.Q3Marks = (Q3Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q3Marks.SelectedValue);
            objStdFBDetails.Q4Marks = (Q4Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q4Marks.SelectedValue);
            objStdFBDetails.Q5Marks = (Q5Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q5Marks.SelectedValue);
            objStdFBDetails.Q6Marks = (Q6Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q6Marks.SelectedValue);
            objStdFBDetails.Q7Marks = (Q7Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q7Marks.SelectedValue);
            objStdFBDetails.Q8Marks = (Q8Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q8Marks.SelectedValue);
            objStdFBDetails.Q9Marks = (Q9Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q9Marks.SelectedValue); 
            objStdFBDetails.Q10Marks = (Q10Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q10Marks.SelectedValue);
            objStdFBDetails.Q11Marks = (Q11Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q11Marks.SelectedValue);
            objStdFBDetails.Q12Marks = (Q12Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q12Marks.SelectedValue);
            objStdFBDetails.Q13Marks = (Q13Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q13Marks.SelectedValue);
            objStdFBDetails.Q14Marks = (Q14Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q14Marks.SelectedValue);
            objStdFBDetails.Q15Marks = (Q15Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q15Marks.SelectedValue);
            objStdFBDetails.Q16Marks = (Q16Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q16Marks.SelectedValue);
            objStdFBDetails.Q17Marks = (Q17Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q17Marks.SelectedValue);
            objStdFBDetails.Q18Marks = (Q18Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q18Marks.SelectedValue);
            objStdFBDetails.Q19Marks = (Q19Marks.SelectedValue == string.Empty)? 0 :Convert.ToInt32(Q19Marks.SelectedValue);
            objStdFBDetails.Q20Marks = (Q20Marks.SelectedValue == string.Empty) ? 0:Convert.ToInt32(Q20Marks.SelectedValue); 
            objStdFBDetails.Q21Marks = 0;

            // ToDo: Calculate total
            //Logic to upgrade to higher score range
            int tempTotal = (objStdFBDetails.Q1Marks + objStdFBDetails.Q2Marks + objStdFBDetails.Q3Marks + objStdFBDetails.Q4Marks + objStdFBDetails.Q5Marks + objStdFBDetails.Q6Marks + objStdFBDetails.Q7Marks + objStdFBDetails.Q8Marks + objStdFBDetails.Q9Marks + objStdFBDetails.Q10Marks +
                                              objStdFBDetails.Q11Marks + objStdFBDetails.Q12Marks + objStdFBDetails.Q13Marks + objStdFBDetails.Q14Marks + objStdFBDetails.Q15Marks + objStdFBDetails.Q16Marks + objStdFBDetails.Q17Marks + objStdFBDetails.Q18Marks + objStdFBDetails.Q19Marks + objStdFBDetails.Q20Marks);

            decimal finalTotal = Math.Floor(Convert.ToDecimal( tempTotal/ 10)) * 10;

            if (tempTotal - finalTotal >= 5)
            {
                finalTotal += 10;
            }
            objStdFBDetails.Total = Convert.ToInt32(finalTotal);

            objStdFBDetails.Status = "Form2 Submitted";
            objStdFBDetails.Student_Id = Convert.ToInt32(Session["StudentId"]);
            objStdFBDetails.SAMaster_Id = Convert.ToInt32(Request["FBId"]);
            objStdFBDetails.Remarks = txtRemarks.Text;

            int result = objStdFBDetails.InsertStdFBDetails(objStdFBDetails);

            if (result == 0)
            {
                lblMsg.Text = "Some error occured, Please contact administrator..";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblMsg.Text = "Student Feebcak is submitted..";
                lblMsg.ForeColor = System.Drawing.Color.Green;

                //ToDo: Also update the status to "Form2 Submitted in tbl_SelfAprisalMasterDetails"
                UpdateStatusinSelfAprisalMaster(objStdFBDetails.SAMaster_Id);
            }
        }

        private void UpdateStatusinSelfAprisalMaster(int feedbackId)
        {
            SelfAprisalMasterDetails objSelfAprisalMasterDetails = new SelfAprisalMasterDetails();
            objSelfAprisalMasterDetails.UpdateStatus_SelfAppraisalMaster(feedbackId, "Form2 Submitted");
        }
    }
}