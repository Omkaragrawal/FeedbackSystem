using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class YearBranchSubject
    {
        public int YSBMapperId { get; set; }
        public string AcademicYear { get; set; }
        public string Branch { get; set; }
        public string Subject { get; set; }

        public DataTable GetSubjectList(string acayear, string branch)
        {
            string[] paramName = { "@AcademicYear", "@Branch" };
            object[] paramValue = { acayear, branch };
            return DataAccess.GetData(paramName, paramValue, "GetSubjectList");
        }

        public DataTable GetYSBMapperId(YearBranchSubject yearBranchSubject)
        {
            string[] paramName = { "@AcademicYear", "@Branch", "@Subject" };
            object[] paramValue = { yearBranchSubject.AcademicYear, yearBranchSubject.Branch, yearBranchSubject.Subject };
            return DataAccess.GetData(paramName, paramValue, "GetYSBMapperId");
        }

        public DataTable GetFacultyDetailsFromYSBMapping(string acayear,string branch, string subject)
        {
            string[] paramName = { "@AcademicYear", "@Branch" ,"@Subject"};
            object[] paramValue = { acayear, branch, subject };
            return DataAccess.GetData(paramName, paramValue, "GetFacultyDetailsFromYSBMapping");
        }
    }
}