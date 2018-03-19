using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeedbackSystem.faculty
{
    public partial class StudentsFeedbackPart2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request["FBId"] != null && Request["FacId"] != null)
                {
                    int facId = Convert.ToInt32(Request["FacId"]);
                    int fbId = Convert.ToInt32(Request["FBId"]);
                    PopulateForm2Details(facId, fbId);
                    //btnSubmit.Visible = false;
                }
            }
        }
        private void PopulateForm2Details(int facultyId, int fbId)
        {
            models.StdFBDetails objStdFBDetails = new models.StdFBDetails();

            DataTable dtTemp = objStdFBDetails.GetStdFeedbackMarks(fbId, facultyId);

            if (dtTemp.Rows.Count > 0)
            {
                Q1Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q1Marks"]);
                Q2Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q2Marks"]);
                Q3Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q3Marks"]);
                Q4Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q4Marks"]);
                Q5Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q5Marks"]);
                Q6Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q6Marks"]);
                Q7Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q7Marks"]);
                Q8Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q8Marks"]);
                Q9Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q9Marks"]);
                Q10Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q10Marks"]);
                Q11Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q11Marks"]);
                Q12Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q12Marks"]);
                Q13Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q13Marks"]);
                Q14Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q14Marks"]);
                Q15Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q15Marks"]);
                Q16Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q16Marks"]);
                Q17Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q17Marks"]);
                Q18Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q18Marks"]);
                Q19Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q19Marks"]);
                Q20Marks.SelectedValue = Convert.ToString(dtTemp.Rows[0]["Q20Marks"]);

                //False enabled
                Q1Marks.Enabled = false;
                Q2Marks.Enabled = false;
                Q3Marks.Enabled = false;
                Q4Marks.Enabled = false;
                Q5Marks.Enabled = false;
                Q6Marks.Enabled = false;
                Q7Marks.Enabled = false;
                Q8Marks.Enabled = false;
                Q9Marks.Enabled = false;
                Q10Marks.Enabled = false;
                Q11Marks.Enabled = false;
                Q12Marks.Enabled = false;
                Q13Marks.Enabled = false;
                Q14Marks.Enabled = false;
                Q15Marks.Enabled = false;
                Q16Marks.Enabled = false;
                Q17Marks.Enabled = false;
                Q18Marks.Enabled = false;
                Q19Marks.Enabled = false;
                Q20Marks.Enabled = false;

                //ddlQ17Ans.SelectedValue = (string)dtTemp.Rows[0]["Total"];
            }
        }
    }
}