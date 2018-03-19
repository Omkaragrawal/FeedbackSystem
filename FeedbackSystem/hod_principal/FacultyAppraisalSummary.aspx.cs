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
    public partial class FacultyAppraisalSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int facId = Convert.ToInt32(Request["FacID"]);
                PopulateFacultyDetails(facId);

                int feedbackId = Convert.ToInt32(Request["FBId"]);
                PopulateTotalMarks(feedbackId);
            }
        }

        private void PopulateFacultyDetails(int facultyId)
        {
            FacultyDetails fd = new FacultyDetails();

            DataTable dtTemp = fd.GetFacultyById(facultyId);
            if (dtTemp.Rows.Count > 0)
            {
                txtFacName.Text = (string)dtTemp.Rows[0]["Name"];
                txtDesignation.Text = (string)dtTemp.Rows[0]["Designation"];
                txtDept.Text = (string)dtTemp.Rows[0]["Department"];
            }
        }

        private void PopulateTotalMarks(int feedbackId)
        {
            // Total marks given to self
            SelfAprisalMasterDetails objSelfAprisalMasterDetails = new SelfAprisalMasterDetails();
            DataTable dtTemp4 = objSelfAprisalMasterDetails.GetSelfApprisalTotalMarksByFBId(feedbackId);
            if (dtTemp4.Rows.Count > 0)
            {
                txtForm1Total.Text = Convert.ToString(dtTemp4.Rows[0]["Total"]);
            }
            else
            {
                txtForm1Total.Text = "0";
            }

            // Total marks given by std
            StdFBDetails objStdFBDetails = new StdFBDetails();
            DataTable dtTemp1 = objStdFBDetails.GetStdTotalMarksByFBId(feedbackId);
            if (dtTemp1.Rows.Count > 0)
            {
                txtForm2Total.Text = Convert.ToString(dtTemp1.Rows[0]["Total"]);
            }
            else
            {
                txtForm2Total.Text = "0";
            }

            // Total marks given by peer
            PeerFBDetails objPeerFBDetails = new PeerFBDetails();
            DataTable dtTemp2 = objPeerFBDetails.GetPeerTotalMarksByFBId(feedbackId);
            if (dtTemp2.Rows.Count > 0)
            {
                txtForm3Total.Text = Convert.ToString(dtTemp2.Rows[0]["Total"]);
            }
            else
            {
                txtForm3Total.Text = "0";
            }

            // Total marks given by princi
            AuthFBDetails objAuthFBDetails = new AuthFBDetails();
            DataTable dtTemp3 = objAuthFBDetails.GetPRinciTotalMarksByFBId(feedbackId);
            if (dtTemp3.Rows.Count > 0)
            {
                txtForm4Total.Text = Convert.ToString(dtTemp3.Rows[0]["Total"]);
            }
            else
            {
                txtForm4Total.Text = "0";
            }

            int frm1Ttl = (txtForm1Total.Text == string.Empty) ? 0 : Convert.ToInt32(txtForm1Total.Text);
            txtGrandTotal.Text = Convert.ToString(frm1Ttl +
                                                    Convert.ToInt32(txtForm2Total.Text) +
                                                    Convert.ToInt32(txtForm3Total.Text) +
                                                    Convert.ToInt32(txtForm4Total.Text));

            txtGrandTotalPerc.Text = Convert.ToString(Math.Round(Convert.ToDecimal(txtGrandTotal.Text) / 350 * 100,2));

            int tempTotal = Convert.ToInt32(txtGrandTotalPerc.Text.Substring(0,2));

            rdbFinalGrade.SelectedValue = GetFinalGrade(tempTotal);
        }

        private string GetFinalGrade(int temptotal)
        {
            string finalGrade = string.Empty;
            if (temptotal >= 80)
            {
                finalGrade = "5";
            }
            else if (temptotal >= 70)
            {
                finalGrade = "4";
            }
            else if (temptotal >= 60)
            {
                finalGrade = "3";
            }
            else if (temptotal >= 50)
            {
                finalGrade = "2";
            }
            else if (temptotal < 50)
            {
                finalGrade = "1";
            }
            return finalGrade;
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            string strscript = "<script>" +
          "window.print()" +
          "</script>";
            Page.RegisterClientScriptBlock("ImageButton1_Click", strscript);
        }
    }
}