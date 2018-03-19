using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class StudentLoginDetails
    {
        static string conn = ConfigurationManager.ConnectionStrings["FeedbackDBConnection"].ConnectionString;
        public int StudentId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }

        public DataTable ValidateStudentLoginDetails(string username, string password)
        {
            string[] paramName = { "@Username", "@Password" };
            object[] paramValue = { username, password };

            return DataAccess.GetData(paramName, paramValue, "usp_ValidateStudentLoginDetails");
        }

        public int AddStudentLoginDetails(StudentLoginDetails studentLoginDetails)
        {
            try
            {
                string[] paramName = { "@StudentId",
                                       "@Username",
                                       "@Password"
                                      };

                object[] paramValue = { studentLoginDetails.StudentId,
                                        studentLoginDetails.Username,
                                        studentLoginDetails.Password
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_InsertStudentLoginDetails", false);
            }
            catch
            {
                return 0;
            }
        }
    }
    public class Student
    {
        static string conn = ConfigurationManager.ConnectionStrings["FeedbackDBConnection"].ConnectionString;
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        public string Gender { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string State { get; set; }
        public string City { get; set; }
        public string BloodGroup { get; set; }
        public string MobileNumber { get; set; }
        public DateTime DOB { get; set; }
        public string AcademicYear { get; set; }
        public string Branch { get; set; }
        public string FathersName { get; set; }
        public DataTable GetStudentDetailsById(int stdId)
        {
            string[] paramName = { "@StudentId" };
            object[] paramValue = { stdId };
            return DataAccess.GetData(paramName, paramValue, "GetStudentDetailsById");
        }

        public DataSet GetAllStudents(Student _student)
        {
            string strSql = string.Empty;
            strSql = "SELECT * FROM StudentDetails Where 1 = 1";
            if (!string.IsNullOrEmpty(_student.StudentName))
            {

                strSql += " AND StudentName like '%" + _student.StudentName + "%'";

            }
            if (!string.IsNullOrEmpty(_student.MobileNumber))
            {

                strSql += " AND MobileNumber like '%" + _student.MobileNumber + "%'";

            }
            if (0 < _student.StudentId)
                strSql = strSql + " AND StudentId='" + _student.StudentId + "'";

            //if (Sort_On != "")
            //{
            //    strSql = strSql + " ORDER BY " + Sort_On;
            //}
            else
            {
                strSql = strSql + " Order By StudentName";
            }
            DataSet dsTemp;

            dsTemp = SqlHelper.ExecuteDataset(conn, CommandType.Text, strSql);
            return dsTemp;
        }

        public DataSet GetInProgressStudents()
        {
            string strSql = string.Empty;
            strSql = "SELECT * FROM vw_Std_PendingApproval Where 1 = 1";
            DataSet dsTemp;

            dsTemp = SqlHelper.ExecuteDataset(conn, CommandType.Text, strSql);
            return dsTemp;
        }
        public int AddStudent(Student stdDetails)
        {
            try
            {
                string[] paramName = { "@StudentName",
                                       "@DOB",
                                       "@AcademicYear",
                                       "@Branch",
                                       "@Email",
                                       "@MobileNumber"
                                      };

                object[] paramValue = { stdDetails.StudentName,
                                        stdDetails.DOB,
                                        stdDetails.AcademicYear,
                                        stdDetails.Branch,
                                        stdDetails.Email,
                                        stdDetails.MobileNumber
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_InsertStudentDetails", true);
            }
            catch
            {
                return 0;
            }
        }

        public int DeleteStudent(Student std)
        {
            try
            {
                string[] paramName = { "@StudentId" };
                object[] paramValue = { std.StudentId };

                return DataAccess.InsertUpdate(paramName, paramValue, "DeleteStudentDetails");
            }
            catch
            {
                return 0;
            }
        }

        public int UpdateStudent(Student std)
        {
            try
            {
                string[] paramName = {
                    "@StudentId",
                    "@StudentName",
                    "@EmailId",
                    "@BirthDate",
                    "@Address",
                    "@MobileNumber",
                    "@AcademicYear",
                    "@Branch",
                    "@Gender",
                    "@FathersName"
                };
                object[] paramValue = { std.StudentId,
                    std.StudentName,
                    std.Email,
                    std.DOB ,
                    std.Address ,
                    std.MobileNumber ,
                    std.AcademicYear ,
                    std.Branch ,
                    std.Gender,
                    std.FathersName
                };

                return DataAccess.InsertUpdate(paramName, paramValue, "UpdateStudentDetails");
            }
            catch
            {
                return 0;
            }
        }

        public int AddFacultyMapperEntry(int YBSMapperId, int facultyId)
        {
            try
            {
                string[] paramName = { "@YBSMapper_Id", "@Faculty_Id" };
                object[] paramValue = { YBSMapperId, facultyId };

                return DataAccess.InsertUpdate(paramName, paramValue, "AddFacultyMapperEntry");
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetFeedbackMapperId(int YBSMapperId, int facultyId)
        {
            string[] paramName = { "@YBSMapper_Id", "@Faculty_Id" };
            object[] paramValue = { YBSMapperId, facultyId };

            return DataAccess.GetData(paramName, paramValue, "GetFeedbackMapperId");
        }

    }
}