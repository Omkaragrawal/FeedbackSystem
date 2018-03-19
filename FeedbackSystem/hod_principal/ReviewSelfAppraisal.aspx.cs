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
    public partial class ReviewSelfAppraisal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int facId = Convert.ToInt32(Request["FacId"]);
                int fbId = Convert.ToInt32(Request["FBId"]);
                PopulateForm1Details(facId, fbId);
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
                    }
                    {
                        txtQ12Ans.Text = (string)dtTemp.Rows[0]["Q12Ans"];
                        txtQ12Ans.Enabled = false;
                    }
                    {
                        txtQ13Ans.Text = (string)dtTemp.Rows[0]["Q13Ans"];
                        txtQ13Ans.Enabled = false;
                    }
                    {
                        txtQ14Ans.Text = (string)dtTemp.Rows[0]["Q14Ans"];
                        txtQ14Ans.Enabled = false;
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
                    txtQ7Marks.Text = dtTemp.Rows[0]["Q7Marks"].ToString();
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

        private string GetFinalGrade(int temptotal)
        {
            string finalGrade = string.Empty;
            if (temptotal >= 95)
            {
                finalGrade = "10";
            }
            else if (temptotal >= 85)
            {
                finalGrade = "9";
            }
            else if (temptotal >= 75)
            {
                finalGrade = "8";
            }
            else if (temptotal >= 65)
            {
                finalGrade = "7";
            }
            else if (temptotal >= 55)
            {
                finalGrade = "6";
            }
            else if (temptotal >= 45)
            {
                finalGrade = "5";
            }
            else if (temptotal >= 35)
            {
                finalGrade = "4";
            }
            else if (temptotal < 35)
            {
                finalGrade = "3";
            }
            return finalGrade;
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("SelfAppraisalFinalMarks.aspx?FBId=" + Request["FBId"]);
        }
    }
}