using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeedbackSystem.faculty
{
    public partial class AuthoritysAppraisalPart2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request["FBId"] != null && Request["FacId"] != null)
                {
                    int facId = Convert.ToInt32(Request["FacId"]);
                    int fbId = Convert.ToInt32(Request["FBId"]);
                    PopulateForm4Details(facId, fbId);
                }
            }
        }

        private void PopulateForm4Details(int facultyId, int fbId)
        {
            models.AuthFBDetails objAuthFBDetails = new models.AuthFBDetails();

            DataTable dtTemp = objAuthFBDetails.GetAuthFeedbackMarks(fbId, facultyId);

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
    }
}