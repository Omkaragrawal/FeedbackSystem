using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class SelfAprisalMasterDetails
    {
        static string conn = ConfigurationManager.ConnectionStrings["FeedbackDBConnection"].ConnectionString;

        public int SAMasterId { get; set; }
        public int Q6Marks { get; set; }
        public int Q7Marks { get; set; }
        public int Q8Marks { get; set; }
        public int Q9Marks { get; set; }
        public int Q10Marks { get; set; }
        public int Q11Marks { get; set; }
        public int Q12Marks { get; set; }
        public int Q13Marks { get; set; }
        public int Q14Marks { get; set; }
        public int Total { get; set; }

        public string Q6Ans { get; set; }
        public string Q7Ans { get; set; }
        public string Q8Ans { get; set; }
        public string Q9Ans { get; set; }
        public string Q10Ans { get; set; }
        public string Q11Ans { get; set; }
        public string Q12Ans { get; set; }
        public string Q13Ans { get; set; }
        public string Q14Ans { get; set; }
        public string Q15Ans { get; set; }
        public string Q16Ans { get; set; }
        public string Q17Ans { get; set; }
        public int Faculty_Id { get; set; }
        public string Status { get; set; }
        public string Remarks { get; set; }

        public int InsertSelfAppraisalMasterDetails(SelfAprisalMasterDetails selfAprisalMasterDetails)
        {
            try
            {
                string[] paramName = {
                                       "@Q6Marks",
                                       "@Q7Marks",
                                       "@Q8Marks",
                                       "@Q9Marks",
                                       "@Q10Marks",
                                       "@Q11Marks",
                                       "@Q12Marks",
                                       "@Q13Marks",
                                       "@Q14Marks",
                                       "@Total",
                                       "@Q6Ans",
                                       "@Q7Ans",
                                       "@Q8Ans",
                                       "@Q9Ans",
                                       "@Q10Ans",
                                       "@Q11Ans",
                                       "@Q12Ans",
                                       "@Q13Ans",
                                       "@Q14Ans",
                                       "@Q15Ans",
                                       "@Q16Ans",
                                       "@Q17Ans",
                                       "@Remarks",
                                       "@Faculty_Id",
                                       "@Status"
                                      };

                object[] paramValue = {
                                        selfAprisalMasterDetails.Q6Marks,
                                        selfAprisalMasterDetails.Q7Marks,
                                        selfAprisalMasterDetails.Q8Marks,
                                        selfAprisalMasterDetails.Q9Marks,
                                        selfAprisalMasterDetails.Q10Marks,
                                        selfAprisalMasterDetails.Q11Marks,
                                        selfAprisalMasterDetails.Q12Marks,
                                        selfAprisalMasterDetails.Q13Marks,
                                        selfAprisalMasterDetails.Q14Marks,
                                        selfAprisalMasterDetails.Total,

                                        selfAprisalMasterDetails.Q6Ans,
                                        selfAprisalMasterDetails.Q7Ans,
                                        selfAprisalMasterDetails.Q8Ans,
                                        selfAprisalMasterDetails.Q9Ans,
                                        selfAprisalMasterDetails.Q10Ans,
                                        selfAprisalMasterDetails.Q11Ans,
                                        selfAprisalMasterDetails.Q12Ans,
                                        selfAprisalMasterDetails.Q13Ans,
                                        selfAprisalMasterDetails.Q14Ans,
                                        selfAprisalMasterDetails.Q15Ans,
                                        selfAprisalMasterDetails.Q16Ans,
                                        selfAprisalMasterDetails.Q17Ans,
                                        selfAprisalMasterDetails.Remarks,

                                        selfAprisalMasterDetails.Faculty_Id,
                                        selfAprisalMasterDetails.Status
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_InsertSelfAppraisalMasterDetails");
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetStdFBList()
        {
            string[] paramName = {  };
            object[] paramValue = {  };

            return DataAccess.GetData(paramName, paramValue, "usp_GetStdFBList");
        }

        public DataTable GetPeerFBList(int loggedInFacultyId)
        {
            string[] paramName = { "@LoggedInFacultyId" };
            object[] paramValue = { loggedInFacultyId  };

            return DataAccess.GetData(paramName, paramValue, "usp_GetPeerFBList");
        }

        public DataTable GetPrincFBList()
        {
            string[] paramName = { };
            object[] paramValue = { };

            return DataAccess.GetData(paramName, paramValue, "usp_GetPrincFBList");
        }

        public DataTable GetAppraisalSummaryList()
        {
            string[] paramName = { };
            object[] paramValue = { };

            return DataAccess.GetData(paramName, paramValue, "usp_GetAppraisalSummaryList");
        }

        public int UpdateStatus_SelfAppraisalMaster(int feedbackId, string status)
        {
            try
            {
                string[] paramName = { "@FeedbackId", "@Status" };
                object[] paramValue = { feedbackId, status };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_UpdateStatus_SelfAppraisalMaster");
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetSelfAppraisalDetails(int facId, int fbId)
        {
            string[] paramName = { "@FacultyId", "@FeedbackId" };
            object[] paramValue = { facId, fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_GetSelfAppraisalDetails");
        }

        public int UpdateSelfAppraisalFinalMarks(SelfAprisalMasterDetails selfAprisalMasterDetails)
        {
            try
            {
                string[] paramName = { "@Q6Marks",
                                       "@Q7Marks",
                                       "@Q8Marks",
                                       "@Q9Marks",
                                       "@Q10Marks",
                                       "@Q11Marks",
                                       "@Q12Marks",
                                       "@Q13Marks",
                                       "@Q14Marks",
                                       "@Total",
                                       "@SAMasterId"
                                      };

                object[] paramValue = { selfAprisalMasterDetails.Q6Marks,
                                        selfAprisalMasterDetails.Q7Marks,
                                        selfAprisalMasterDetails.Q8Marks,
                                        selfAprisalMasterDetails.Q9Marks,
                                        selfAprisalMasterDetails.Q10Marks,
                                        selfAprisalMasterDetails.Q11Marks,
                                        selfAprisalMasterDetails.Q12Marks,
                                        selfAprisalMasterDetails.Q13Marks,
                                        selfAprisalMasterDetails.Q14Marks,
                                        selfAprisalMasterDetails.Total,
                                        selfAprisalMasterDetails.SAMasterId
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_UpdateSelfAppraisalFinalMarks");
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetSelfApprisalTotalMarksByFBId(int fbId)
        {
            string[] paramName = { "@FeedbackId" };
            object[] paramValue = { fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_GetSelfApprisalTotalMarksByFBId");
        }

        public DataTable GetSelfApprisalMarksByFBId(int fbId)
        {
            string[] paramName = { "@FeedbackId" };
            object[] paramValue = { fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_GetSelfApprisalMarksByFBId");
        }
    }
}