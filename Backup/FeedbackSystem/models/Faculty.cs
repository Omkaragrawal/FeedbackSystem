using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class FacultyLoginDetails
    {
        static string conn = ConfigurationManager.ConnectionStrings["FeedbackDBConnection"].ConnectionString;
        public int FacultyId { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }

        public DataTable ValidateFacultyLoginDetails(string username, string password)
        {
            string[] paramName = { "@Username", "@Password" };
            object[] paramValue = { username, password };

            return DataAccess.GetData(paramName, paramValue, "usp_ValidateFacultyLoginDetails");


        }

        public DataTable ValidateHODLoginDetails(string username, string password)
        {
            string[] paramName = { "@Username", "@Password" };
            object[] paramValue = { username, password };

            return DataAccess.GetData(paramName, paramValue, "ValidateHODUser");
        }
        public int AddFacultyLoginDetails(FacultyLoginDetails facultyLoginDetails)
        {
            try
            {
                string[] paramName = { "@FacultyId",
                                       "@Username",
                                       "@Password"
                                      };

                object[] paramValue = { facultyLoginDetails.FacultyId,
                                        facultyLoginDetails.Username,
                                        facultyLoginDetails.Password
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_InsertFacultyLoginDetails", false);
            }
            catch
            {
                return 0;
            }
        }
    }
    public class FacultyDetails
    {
        static string conn = ConfigurationManager.ConnectionStrings["FeedbackDBConnection"].ConnectionString;
        public int FacultyId { get; set; }
        public string FacultyName { get; set; }
        public DateTime DOB { get; set; }
        public string Designation { get; set; }
        public string Department { get; set; }
        public DateTime DOJClg { get; set; }
        public DateTime DOJPP { get; set; }
        public string AcademicQualification { get; set; }
        public string TeachingExpi { get; set; }
        public string IndustrialExpi { get; set; }

        public string Email { get; set; }

        public string Address { get; set; }
        public string MobileNumber { get; set; }
        public string Gender { get; set; }
       

        public DataTable GetAllFaculties()
        {
            string[] paramName = { };
            object[] paramValue = { };
            return DataAccess.GetData(paramName, paramValue, "GetAllFaculties");
        }
        public int AddFaculty(FacultyDetails facultyDetails)
        {
            try
            {
                string[] paramName = { "@FacultyName",
                                       "@DOB",
                                       "@Designation",
                                       "@Department",
                                       "@DOJClg",
                                       "@DOJPP",
                                       "@AcademicQualification",
                                       "@TeachingExpi",
                                       "@IndustrialExpi"
                                      };

                object[] paramValue = { facultyDetails.FacultyName,
                                        facultyDetails.DOB,
                                        facultyDetails.Designation,
                                        facultyDetails.Department,
                                        facultyDetails.DOJClg,
                                        facultyDetails.DOJPP,
                                        facultyDetails.AcademicQualification,
                                        facultyDetails.TeachingExpi,
                                        facultyDetails.IndustrialExpi
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_InsertFacultyDetails", true);
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetFacultyById(int facultyId)
        {
            string[] paramName = {"@Faculty_Id" };
            object[] paramValue = { facultyId };

            return DataAccess.GetData(paramName, paramValue, "usp_GetFacultyById");
        }
        public DataSet GetFacultyList(FacultyDetails _faculty)
        {
            string strSql = string.Empty;
            strSql = "SELECT * FROM FacultyDetails Where 1 = 1";
            if (!string.IsNullOrEmpty(_faculty.FacultyName))
            {

                strSql += " AND FacultyName like '%" + _faculty.FacultyName + "%'";

            }
            //if (!string.IsNullOrEmpty(_faculty.MobileNumber))
            //{
            //
            //    strSql += " AND MobileNumber like '%" + _faculty.MobileNumber + "%'";
            //
            //}
            if (0 < _faculty.FacultyId)
                strSql = strSql + " AND FacultyId='" + _faculty.FacultyId + "'";

            //if (Sort_On != "")
            //{
            //    strSql = strSql + " ORDER BY " + Sort_On;
            //}
            else
            {
                strSql = strSql + " Order By FacultyName";
            }
            DataSet dsTemp;

            dsTemp = SqlHelper.ExecuteDataset(conn, CommandType.Text, strSql);
            return dsTemp;
        }

        public DataSet GetFacultiesPendingApproval()
        {
            string strSql = string.Empty;
            strSql = "SELECT * FROM vw_Fac_PendingApproval Where 1 = 1";
            DataSet dsTemp;

            dsTemp = SqlHelper.ExecuteDataset(conn, CommandType.Text, strSql);
            return dsTemp;
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

        public int UpdateFaculty(FacultyDetails faculty)
        {
            try
            {
                string[] paramName = {
                    "@FacultyId",
                    "@FacultyName",
                    "@EmailId",
                    "@BirthDate",
                    "@Address",
                    "@MobileNumber",
                    "@Gender"
                };
                object[] paramValue = { faculty.FacultyId,
                    faculty.FacultyName,
                    faculty.Email,
                    faculty.DOB ,
                    faculty.Address ,
                    faculty.MobileNumber ,
                    faculty.Gender
                };

                return DataAccess.InsertUpdate(paramName, paramValue, "UpdateFacultyDetails");
            }
            catch
            {
                return 0;
            }
        }

        public int DeleteFaculty(FacultyDetails std)
        {
            try
            {
                string[] paramName = { "@FacultyId" };
                object[] paramValue = { std.FacultyId };

                return DataAccess.InsertUpdate(paramName, paramValue, "DeleteFacultyDetails");
            }
            catch
            {
                return 0;
            }
        }
        public DataTable GetMyFeedbackByFacultyId(int facId)
        {
            string[] paramName = { "@FacultyId" };
            object[] paramValue = { facId };

            return DataAccess.GetData(paramName, paramValue, "usp_GetMyFeedbackByFacultyId");
        }
    }
}