using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;
using System.Data;

namespace FeedbackSystem.students
{
    public partial class MyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Student objStd = new Student();
            int stdId = Convert.ToInt32(Session["StudentId"]);
            DataTable dt = objStd.GetStudentDetailsById(stdId);

            if (dt.Rows.Count > 0) {
                txtusername.Text = Convert.ToString(dt.Rows[0]["Name"]);
                txtdob.Text = Convert.ToString(dt.Rows[0]["DOB"]);
                txtacayear.Text = Convert.ToString(dt.Rows[0]["AcademicYear"]);
                txtbranch.Text = Convert.ToString(dt.Rows[0]["Branch"]);
            }
        }
    }
}