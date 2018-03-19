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
                {
                txtQ6Ans.Text = (string)dtTemp.Rows[0]["Q6Ans"];
                    txtQ6Ans.Enabled = false;
                txtQ6Marks.Text = Convert.ToString(dtTemp.Rows[0]["Q6Marks"]);
                    txtQ6Marks.Enabled = false;
                    {
                        txtQ11Ans.Text = (string)dtTemp.Rows[0]["Q11Ans"];
                        txtQ11Ans.Enabled = false;
                        txtQ11Marks.Text = Convert.ToString(dtTemp.Rows[0]["Q11Marks"]);
                        txtQ11Marks.Enabled = false;
                    }
                    {
                        txtQ12Ans.Text = (string)dtTemp.Rows[0]["Q12Ans"];
                        txtQ12Ans.Enabled = false;
                        txtQ12Marks.Text = Convert.ToString(dtTemp.Rows[0]["Q12Marks"]);
                        txtQ12Marks.Enabled = false;
                    }
                    {
                        txtQ13Ans.Text = (string)dtTemp.Rows[0]["Q13Ans"];
                        txtQ13Ans.Enabled = false;
                        txtQ13Marks.Text = Convert.ToString(dtTemp.Rows[0]["Q13Marks"]);
                        txtQ13Marks.Enabled = false;
                    }
                    {
                        txtQ14Ans.Text = (string)dtTemp.Rows[0]["Q14Ans"];
                        txtQ14Ans.Enabled = false;
                        txtQ14Marks.Text = Convert.ToString(dtTemp.Rows[0]["Q14Marks"]);
                        txtQ14Marks.Enabled = false;
                    }
                    txtQ16Ans.Text = (string)dtTemp.Rows[0]["Q16Ans"];
                    txtQ16Ans.Enabled = false;
            }

                {
                    string q7ans = (string)dtTemp.Rows[0]["Q7Ans"];
                    string[] sepAns7 = q7ans.Split(';');
                    string[] row1 = sepAns7[0].Split(',');
                    string[] row2 = sepAns7[1].Split(',');
                    txtQ7AnsR1C1.Text = row1[0];
                    txtQ7AnsR1C1.Enabled = false;
                    txtQ7AnsR1C2.Text = row1[1];
                    txtQ7AnsR1C2.Enabled = false;
                    txtQ7AnsR1C3.Text = row1[2];
                    txtQ7AnsR1C3.Enabled = false;
                    txtQ7AnsR1C4.Text = row1[3];
                    txtQ7AnsR1C4.Enabled = false;
                    txtQ7AnsR1C5.Text = row1[4];
                    txtQ7AnsR1C5.Enabled = false;
                    txtQ7AnsR1C6.Text = row1[5];
                    txtQ7AnsR1C6.Enabled = false;
                    txtQ7AnsR1C7.Text = row1[6];
                    txtQ7AnsR1C7.Enabled = false;
                    txtQ7AnsR1C8.Text = row1[7];
                    txtQ7AnsR1C8.Enabled = false;
                    txtQ7AnsR1C9.Text = row1[8];
                    txtQ7AnsR1C9.Enabled = false;
                    txtQ7AnsR1C10.Text = row1[9];
                    txtQ7AnsR1C10.Enabled = false;
                    txtQ7AnsR1C11.Text = row1[10];
                    txtQ7AnsR1C11.Enabled = false;
                    txtQ7AnsR2C1.Text = row2[0];
                    txtQ7AnsR2C1.Enabled = false;
                    txtQ7AnsR2C2.Text = row2[1];
                    txtQ7AnsR2C2.Enabled = false;
                    txtQ7Marks.Text= dtTemp.Rows[0]["Q7Marks"].ToString();
                    txtQ7Marks.Enabled = false;
                }

                {
                    string q8ans = (string)dtTemp.Rows[0]["Q8Ans"];
                    string[] sepAns8 = q8ans.Split(';');
                    string[] row1 = sepAns8[0].Split(',');
                    string[] row2 = sepAns8[1].Split(',');
                    txtQ8AnsR1C1.Text = row1[0];
                    txtQ8AnsR1C1.Enabled = false;
                    txtQ8AnsR1C2.Text = row1[1];
                    txtQ8AnsR1C2.Enabled = false;
                    txtQ8AnsR1C3.Text = row1[2];
                    txtQ8AnsR1C3.Enabled = false;
                    txtQ8AnsR2C1.Text = row2[0];
                    txtQ8AnsR2C1.Enabled = false;
                    txtQ8AnsR2C2.Text = row2[1];
                    txtQ8AnsR2C2.Enabled = false;
                    txtQ8AnsR2C3.Text = row2[2];
                    txtQ8AnsR2C3.Enabled = false;
                    txtQ8Marks.Text = dtTemp.Rows[0]["Q8Marks"].ToString();
                    txtQ8Marks.Enabled = false;
                }

                {
                    string q9ans = (string)dtTemp.Rows[0]["Q9Ans"];
                    string[] sepAns9 = q9ans.Split(';');
                    string[] row1 = sepAns9[0].Split(',');
                    string[] row2 = sepAns9[1].Split(',');
                    txtQ9AnsR1C1.Text = row1[0];
                    txtQ9AnsR1C1.Enabled = false;
                    txtQ9AnsR1C2.Text = row1[1];
                    txtQ9AnsR1C2.Enabled = false;
                    txtQ9AnsR1C3.Text = row1[2];
                    txtQ9AnsR1C3.Enabled = false;
                    txtQ9AnsR1C4.Text = row1[3];
                    txtQ9AnsR1C4.Enabled = false;
                    txtQ9AnsR1C5.Text = row1[4];
                    txtQ9AnsR1C5.Enabled = false;
                    txtQ9AnsR2C1.Text = row2[0];
                    txtQ9AnsR2C1.Enabled = false;
                    txtQ9AnsR2C2.Text = row2[1];
                    txtQ9AnsR2C2.Enabled = false;
                    txtQ9AnsR2C3.Text = row2[2];
                    txtQ9AnsR2C3.Enabled = false;
                    txtQ9AnsR2C4.Text = row2[3];
                    txtQ9AnsR2C4.Enabled = false;
                    txtQ9AnsR2C5.Text = row2[4];
                    txtQ9AnsR2C5.Enabled = false;
                    txtQ9Marks.Text = dtTemp.Rows[0]["Q9Marks"].ToString();
                    txtQ9Marks.Enabled = false;
                }

                {
                    string q10ans = (string)dtTemp.Rows[0]["Q10Ans"];
                    string[] sepAns10 = q10ans.Split(';');
                    string[] row1 = sepAns10[0].Split(',');
                    string[] row2 = sepAns10[1].Split(',');
                    txtQ10AnsR1C1.Text = row1[0];
                    txtQ10AnsR1C1.Enabled = false;
                    txtQ10AnsR1C2.Text = row1[1];
                    txtQ10AnsR1C2.Enabled = false;
                    txtQ10AnsR1C3.Text = row1[2];
                    txtQ10AnsR1C3.Enabled = false;
                    txtQ10AnsR2C1.Text = row2[0];
                    txtQ10AnsR2C1.Enabled = false;
                    txtQ10AnsR2C2.Text = row2[1];
                    txtQ10AnsR2C2.Enabled = false;
                    txtQ10AnsR2C3.Text = row2[2];
                    txtQ10AnsR2C3.Enabled = false;
                    txtQ10Marks.Text = dtTemp.Rows[0]["Q10Marks"].ToString();
                    txtQ10Marks.Enabled = false;
                }

                {
                    string q15ans = (string)dtTemp.Rows[0]["Q15Ans"];
                    string[] sepAns15 = q15ans.Split(';');
                    string[] row1 = sepAns15[0].Split(',');
                    string[] row2 = sepAns15[1].Split(',');
                    string[] row3 = sepAns15[2].Split(',');
                    txtQ15AnsR1C1.Text = row1[0];
                    txtQ15AnsR1C1.Enabled = false;
                    txtQ15AnsR1C2.Text = row1[1];
                    txtQ15AnsR1C2.Enabled = false;
                    txtQ15AnsR2C1.Text = row2[0];
                    txtQ15AnsR2C1.Enabled = false;
                    txtQ15AnsR2C2.Text = row2[1];
                    txtQ15AnsR2C2.Enabled = false;
                    txtQ15AnsR3C1.Text = row3[0];
                    txtQ15AnsR3C1.Enabled = false;
                    txtQ15AnsR3C2.Text = row3[1];
                    txtQ15AnsR3C2.Enabled = false;
                }
                ddlQ17Ans.SelectedValue = (Math.Floor(Convert.ToDecimal(Convert.ToInt32(dtTemp.Rows[0]["Total"]) / 10))).ToString();//(Convert.ToBoolean((Math.Floor(Convert.ToDecimal(Convert.ToInt32(dtTemp.Rows[0]["Total"])/10))).ToString())?null)'0':(Math.Floor(Convert.ToDecimal(Convert.ToInt32(dtTemp.Rows[0]["Total"]) / 10))).ToString();
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
            //SADetails.Q7Ans = GetConsolidatedAns(1, 11, "7");
            string q7ans = GetConsolidatedAns(1,11,"7");
            q7ans += txtQ7AnsR2C1.Text + "," +txtQ7AnsR2C2.Text+",;";
            SADetails.Q7Ans = q7ans;
            SADetails.Q8Ans = GetConsolidatedAns(2, 3, "8");
            SADetails.Q9Ans = GetConsolidatedAns(2, 5, "9");
            SADetails.Q10Ans = GetConsolidatedAns(2, 3, "10");
            SADetails.Q11Ans = txtQ11Ans.Text;
            SADetails.Q12Ans = txtQ12Ans.Text;
            SADetails.Q13Ans = txtQ13Ans.Text;
            SADetails.Q14Ans = txtQ14Ans.Text;
            SADetails.Q15Ans = GetConsolidatedAns(3, 2, "15");
            SADetails.Q16Ans = txtQ16Ans.Text;
            
            SADetails.Remarks = txtRemarks.Text;
            SADetails.Total = Convert.ToInt32(finalTotal);
            SADetails.Faculty_Id = Convert.ToInt32(Session["FacultyId"]);
            SADetails.Status = "Form1 Submitted";
            ddlQ17Ans.SelectedValue = Convert.ToString(SADetails.Total / 10);
            SADetails.Q17Ans = ddlQ17Ans.SelectedValue;
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
                        consolidatedAns.AppendFormat("{0},", txtClgPref.Text.ToString());
                    }
                }
                consolidatedAns.AppendFormat(";");
            }
            return consolidatedAns.ToString();
        }
    }
}