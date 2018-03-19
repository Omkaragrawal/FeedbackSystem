using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem
{
    public partial class StudentSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveStudent_Click(object sender, EventArgs e)
        {
            try
            {
                // Insert Student details
                Student std = new Student();
                std.StudentName = txtStdName.Text;
                std.DOB = DateTime.Now;
                std.AcademicYear = ddlAcademicYear.SelectedValue;
                std.Branch = ddlBranch.SelectedValue;
                std.Email = txtEmail.Text;
                std.MobileNumber = txtmobnumber.Text;
                
                int insertedStdId = std.AddStudent(std);

                // Insert std login details
                StudentLoginDetails SL = new StudentLoginDetails();
                SL.StudentId = insertedStdId;
                SL.Username = txtusername.Text;
                SL.Password = txtpwd.Text;

                int result = SL.AddStudentLoginDetails(SL);
                if (insertedStdId == 0)
                {
                    lblmsg.Text = "Some error occured..";
                }
                else
                {
                    lblmsg.Text = "New Student added successfully.";
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