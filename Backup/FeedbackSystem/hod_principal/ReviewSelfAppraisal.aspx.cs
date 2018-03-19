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
                txtQ6Ans.Text = (string)dtTemp.Rows[0]["Q6Ans"];
                txtQ6Marks.Text = Convert.ToString( dtTemp.Rows[0]["Q6Marks"]);


                txtQ7Marks.Text = Convert.ToString(dtTemp.Rows[0]["Q7Marks"]);

                txtQ11Ans.Text = (string)dtTemp.Rows[0]["Q11Ans"];
                txtQ12Ans.Text = (string)dtTemp.Rows[0]["Q12Ans"];
                txtQ13Ans.Text = (string)dtTemp.Rows[0]["Q13Ans"];
                txtQ14Ans.Text = (string)dtTemp.Rows[0]["Q14Ans"];
                txtQ16Ans.Text = (string)dtTemp.Rows[0]["Q16Ans"];

                ddlQ17Ans.SelectedValue = GetFinalGrade(Convert.ToInt32( dtTemp.Rows[0]["Total"]));
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