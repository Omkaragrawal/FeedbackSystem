using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.faculty
{
    public partial class SelfAppraisalPart2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request["FBId"] != null && Request["FacId"] != null)
                {
                    int facId = Convert.ToInt32(Request["FacId"]);
                    int fbId = Convert.ToInt32(Request["FBId"]);
                    PopulateForm1Details(facId, fbId);
                    btnSubmit.Visible = false;
                }
            }
        }
        private void PopulateForm1Details(int facultyId, int fbId)
        {
            SelfAprisalMasterDetails objSelfAprisalMasterDetails = new SelfAprisalMasterDetails();

            DataTable dtTemp = objSelfAprisalMasterDetails.GetSelfAppraisalDetails(facultyId, fbId);

            if (dtTemp.Rows.Count > 0)
            {
                txtQ6Ans.Text = (string)dtTemp.Rows[0]["Q6Ans"];
                txtQ6Marks.Text = Convert.ToString( dtTemp.Rows[0]["Q6Marks"]);

                txtQ11Ans.Text = (string)dtTemp.Rows[0]["Q11Ans"];
                txtQ12Ans.Text = (string)dtTemp.Rows[0]["Q12Ans"];
                txtQ13Ans.Text = (string)dtTemp.Rows[0]["Q13Ans"];
                txtQ14Ans.Text = (string)dtTemp.Rows[0]["Q14Ans"];
                txtQ16Ans.Text = (string)dtTemp.Rows[0]["Q16Ans"];

                //ddlQ17Ans.SelectedValue = (string)dtTemp.Rows[0]["Total"];
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

            int tempTotal = (SADetails.Q6Marks + SADetails.Q7Marks + SADetails.Q8Marks + SADetails.Q9Marks + SADetails.Q10Marks + SADetails.Q11Marks
                                + SADetails.Q12Marks + SADetails.Q13Marks + SADetails.Q14Marks);

            decimal finalTotal = Math.Floor(Convert.ToDecimal(tempTotal / 10)) * 10;

            if (tempTotal - finalTotal >= 5)
            {
                finalTotal += 10;
            }

            SADetails.Total = Convert.ToInt32(finalTotal);

            SADetails.Q6Ans = txtQ6Ans.Text;
            SADetails.Q7Ans = GetConsolidatedAns(1, 11, "7");
            SADetails.Q8Ans = GetConsolidatedAns(2, 3, "8");
            SADetails.Q9Ans = GetConsolidatedAns(2, 5, "9");
            SADetails.Q10Ans = GetConsolidatedAns(2, 3, "10");
            SADetails.Q11Ans = txtQ11Ans.Text;
            SADetails.Q12Ans = txtQ12Ans.Text;
            SADetails.Q13Ans = txtQ13Ans.Text;
            SADetails.Q14Ans = txtQ14Ans.Text;
            SADetails.Q15Ans = GetConsolidatedAns(2, 2, "15");
            SADetails.Q16Ans = txtQ16Ans.Text;
            SADetails.Q17Ans = ddlQ17Ans.SelectedValue;
            SADetails.Remarks = txtRemarks.Text;

            SADetails.Faculty_Id = Convert.ToInt32(Session["FacultyId"]);
            SADetails.Status = "Form1 Submitted";

            int result = SADetails.InsertSelfAppraisalMasterDetails(SADetails);
            if (result == 0)
            {
                lblMsg.Text = "Some error occured, Please contact administrator..";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblMsg.Text = "Self Appraisal submitted..";
                lblMsg.ForeColor = System.Drawing.Color.Green;
            }
            ddlQ17Ans.SelectedValue = Convert.ToString( SADetails.Total/10);
        }

        private string GetConsolidatedAns(int rowCount, int columnCount, string questionNumber)
        {
            StringBuilder consolidatedAns = new StringBuilder();
            for (int outerIndex = 1; outerIndex <= rowCount; outerIndex++)
            {
                for (int innerIndex = 1; innerIndex <= columnCount; innerIndex++)
                {
                    string txtControlName = "txtQ" + questionNumber + "Ans" +
                                            "R" + Convert.ToString(outerIndex) +
                                            "C" + Convert.ToString(innerIndex);

                    ContentPlaceHolder cph = (ContentPlaceHolder)this.Master.FindControl("ContentPlaceHolder1");
                    TextBox txtClgPref = (TextBox)cph.FindControl(txtControlName);

                    if (!String.IsNullOrEmpty(txtClgPref.Text))
                    {
                        consolidatedAns.AppendFormat("{0}#sep#", txtClgPref.Text.ToString());
                    }
                }
                consolidatedAns.AppendFormat("#rowsep#");
            }
            return consolidatedAns.ToString();
        }
    }
}