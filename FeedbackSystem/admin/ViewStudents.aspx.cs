using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FeedbackSystem.models;

namespace FeedbackSystem.admin
{
    public partial class ViewStudents : System.Web.UI.Page
    {
        private Student objStudent = new Student();
        //private string strError = "No Data Available";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindStudentsDataToHTMLTable();
            }
        }

        private void BindStudentsDataToHTMLTable()
        {
            DataSet dsTemp = objStudent.GetAllStudents(objStudent);
            DataTable dt = dsTemp.Tables[0];
            if (dt.Rows.Count > 0)
            {
                StringBuilder html = new StringBuilder();
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
                    html.Append("<a href=\"UpdateDeleteStudent.aspx?StdID=" + row["StudentId"] + "&ActionCode=U\">Edit</a>");
                    html.Append("&nbsp;&nbsp;<a href=\"UpdateDeleteStudent.aspx?StdID=" + row["StudentId"] + "&ActionCode=D\">Delete</a>");
                    html.Append("</td>");

                    html.Append("</tr>");
                }
                html.Append("</table>");
                PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });
            }
            else
            {
                //No data found..
            }
        }
    }
}