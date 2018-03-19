using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class AuthFBDetails
    {
        public int AuthFBId { get; set; }
        public int SAMaster_Id { get; set; }
        public int Q1Marks { get; set; }
        public int Q2Marks { get; set; }
        public int Q3Marks { get; set; }
        public int Q4Marks { get; set; }
        public int Q5Marks { get; set; }
        public int Q6Marks { get; set; }
        public int Q7Marks { get; set; }
        public int Q8Marks { get; set; }
        public int Q9Marks { get; set; }
        public int Q10Marks { get; set; }
        public int Q11Marks { get; set; }
        public int Q12Marks { get; set; }
        public int Q13Marks { get; set; }
        public int Q14Marks { get; set; }
        public int Q15Marks { get; set; }
        public int Q16Marks { get; set; }
        public int Q17Marks { get; set; }
        public int Q18Marks { get; set; }
        public int Q19Marks { get; set; }
        public int Q20Marks { get; set; }
        public int Q21Marks { get; set; }
        public int Total { get; set; }
        public string Remarks { get; set; }
        public string Status { get; set; }

        public DataTable IsPrincFBSubmittedByStd(int fbId)
        {
            string[] paramName = { "@FeedbackId" };
            object[] paramValue = { fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_IsPrincFBSubmittedByStd");
        }

        public int InsertAuthFBDetails(AuthFBDetails authFBDetails)
        {
            try
            {
                string[] paramName = { "@Q1Marks",
                                       "@Q2Marks",
                                       "@Q3Marks",
                                       "@Q4Marks",
                                       "@Q5Marks",
                                       "@Q6Marks",
                                       "@Q7Marks",
                                       "@Q8Marks",
                                       "@Q9Marks",
                                       "@Q10Marks",
                                       "@Q11Marks",
                                       "@Q12Marks",
                                       "@Q13Marks",
                                       "@Q14Marks",
                                       "@Q15Marks",
                                       "@Q16Marks",
                                       "@Q17Marks",
                                       "@Q18Marks",
                                       "@Q19Marks",
                                       "@Q20Marks",
                                       "@Q21Marks",
                                       "@Total",
                                       "@SAMaster_Id",
                                       "@Remarks",
                                       "@Status"
                                      };

                object[] paramValue = { authFBDetails.Q1Marks,
                                        authFBDetails.Q2Marks,
                                        authFBDetails.Q3Marks,
                                        authFBDetails.Q4Marks,
                                        authFBDetails.Q5Marks,
                                        authFBDetails.Q6Marks,
                                        authFBDetails.Q7Marks,
                                        authFBDetails.Q8Marks,
                                        authFBDetails.Q9Marks,
                                        authFBDetails.Q10Marks,
                                        authFBDetails.Q11Marks,
                                        authFBDetails.Q12Marks,
                                        authFBDetails.Q13Marks,
                                        authFBDetails.Q14Marks,
                                        authFBDetails.Q15Marks,
                                        authFBDetails.Q16Marks,
                                        authFBDetails.Q17Marks,
                                        authFBDetails.Q18Marks,
                                        authFBDetails.Q19Marks,
                                        authFBDetails.Q20Marks,
                                        authFBDetails.Q21Marks,
                                        authFBDetails.Total,
                                        authFBDetails.SAMaster_Id,
                                        authFBDetails.Remarks,
                                        authFBDetails.Status
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_InsertAuthFBDetails");
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetPRinciTotalMarksByFBId(int fbId)
        {
            string[] paramName = { "@FeedbackId" };
            object[] paramValue = { fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_GetPRinciTotalMarksByFBId");
        }

        public DataTable GetAuthFeedbackMarks(int fbId, int facultyid)
        {
            string[] paramName = { "@FeedbackId", "@FacultyId" };
            object[] paramValue = { fbId, facultyid };

            return DataAccess.GetData(paramName, paramValue, "usp_GetAuthFeedbackMarks");
        }
    }
}