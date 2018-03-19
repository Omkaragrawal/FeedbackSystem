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
    public partial class SelfAppraisal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int facId = Convert.ToInt32(Session["FacultyId"]);
                PopulateFacultyDetails(facId);
            }
        }
        private void PopulateFacultyDetails(int facultyId)
        {
            FacultyDetails fd = new FacultyDetails();

            DataTable dtTemp = fd.GetFacultyById(facultyId);
            if (dtTemp.Rows.Count > 0)
            {
                txtFacName.Text = (string)dtTemp.Rows[0]["Name"];
                txtDOB.Text = Convert.ToString(dtTemp.Rows[0]["DOB"]);
                txtdesi.Text = (string)dtTemp.Rows[0]["Designation"];
                txtdept.Text = (string)dtTemp.Rows[0]["Department"];
                txtDOJClg.Text = Convert.ToString(dtTemp.Rows[0]["DOJCollege"]);
                txtDOJPP.Text = Convert.ToString(dtTemp.Rows[0]["DOJPost"]);
                txtAcadQuali.Text = (string)dtTemp.Rows[0]["Qualification"];
                txtTeachExpi.Text = (string)dtTemp.Rows[0]["TeachingExpi"];
                txtIndusExpi.Text = (string)dtTemp.Rows[0]["IndustrialExpi"];
            }
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("SelfAppraisalPart2.aspx");
        }
    }
}