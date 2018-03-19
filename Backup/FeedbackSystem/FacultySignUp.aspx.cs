using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem
{
    public partial class FacultySignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveFaculty_Click(object sender, EventArgs e)
        {
            try
            {
                // Insert faculty details
                FacultyDetails FD = new FacultyDetails();
                FD.FacultyName = txtFacName.Text;
                FD.DOB = Convert.ToDateTime(txtDOB.Text);
                FD.Designation = txtDesignation.Text;
                FD.Department = ddlDepartment.SelectedValue;
                FD.DOJClg = Convert.ToDateTime(txtDOJClg.Text);
                FD.DOJPP = Convert.ToDateTime(txtDOJPP.Text);
                FD.AcademicQualification = ddlAcademicQuali.SelectedValue;
                FD.TeachingExpi = ddlTeachingExpiYear.SelectedValue + " Years " + ddlTeachingExpiMnt.SelectedValue + " Months";
                FD.IndustrialExpi = ddlIndustrialExpiYears.SelectedValue + " Years " + ddlIndustrialExpiMnts.SelectedValue + " Months";

                int insertedFacultyId = FD.AddFaculty(FD);

                // Insert faculty login details
                FacultyLoginDetails FL = new FacultyLoginDetails();
                FL.FacultyId = insertedFacultyId;
                FL.Username = txtusername.Text;
                FL.Password = txtpwd.Text;

                int result = FL.AddFacultyLoginDetails(FL);
                if (insertedFacultyId == 0)
                {
                    lblmsg.Text = "Some error occured..";
                }
                else
                {
                    lblmsg.Text = "New Faculty added successfully.";
                    lblmsg.ForeColor = System.Drawing.Color.Green;
                }
            }
            catch (Exception ex)
            {
                lblmsg.Text = "Error : " + ex.Message;
            }
        }
    }
}