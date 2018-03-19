using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.hod_principal
{
    public partial class AppraisalSummary : System.Web.UI.Page
    {
        private SelfAprisalMasterDetails objSelfAprisalMasterDetails = new SelfAprisalMasterDetails();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindAppraisalSummaryListToHTMLTable();
            }
        }

        private void BindAppraisalSummaryListToHTMLTable()
        {
            DataTable dt = objSelfAprisalMasterDetails.GetAppraisalSummaryList();
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
                    html.Append("<a href=\"ReviewSelfAppraisal.aspx?FacID=" + row["FacultyId"] + "&FBId=" + row["Feedback Id"] + "\">Review Form1</a><br />");
                    html.Append("<a href=\"FacultyAppraisalSummary.aspx?FacID=" + row["FacultyId"] + "&FBId=" + row["Feedback Id"] + "\">Summary</a>");

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