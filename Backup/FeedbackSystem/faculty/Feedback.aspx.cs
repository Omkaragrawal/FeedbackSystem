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
    public partial class Feedback : System.Web.UI.Page
    {
        private models.FacultyDetails objFacultyDetails = new models.FacultyDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindMyFeedbackToHTMLTable();
            }
        }

        private void BindMyFeedbackToHTMLTable()
        {
            int facultyId = Convert.ToInt32(Session["FacultyId"]);
            DataTable dt = objFacultyDetails.GetMyFeedbackByFacultyId(facultyId);

            StringBuilder html = new StringBuilder();
            if (dt.Rows.Count > 0)
            {
                html.Append("<table class=\"table table-bordered\">");
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("<th>");
                html.Append("Action");
                html.Append("</th>");

                html.Append("</tr>");
                foreach (DataRow row in dt.Rows)
                {
                    html.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        html.Append("<td>");
                        html.Append(row[column.ColumnName]);
                        html.Append("</td>");
                    }

                    html.Append("<td>");
                    html.Append("<a href=\"SelfAppraisalPart2.aspx?FacID=" + row["FacultyId"] + "&FBId=" + row["SAMasterId"] + "\">View Form1</a><br />");
                    html.Append("<a href=\"StudentsFeedbackPart2.aspx?FacID=" + row["FacultyId"] + "&FBId=" + row["SAMasterId"] + "\">View Form2</a><br />");

                    html.Append("<a href=\"PeerAppraisalPart2.aspx?FacID=" + row["FacultyId"] + "&FBId=" + row["SAMasterId"] + "\">View Form3</a><br />");
                    html.Append("<a href=\"AuthoritysAppraisalPart2.aspx?FacID=" + row["FacultyId"] + "&FBId=" + row["SAMasterId"] + "\">View Form4</a>");

                    html.Append("</td>");

                    html.Append("</tr>");
                }
                html.Append("</table>");
            }
            else
            {
                //No data found..
                html.Append("<table class=\"table table-bordered\">");
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<th>");
                    html.Append(column.ColumnName);
                    html.Append("</th>");
                }
                html.Append("<th>");
                html.Append("Action");
                html.Append("</th>");

                html.Append("</tr>");

                html.Append("<tr>");


                html.Append("<td colspan=\"7\">");
                html.Append("No Feedback submitted yet!");
                html.Append("</td>");

                html.Append("</tr>");
            }
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
        }
    }
}