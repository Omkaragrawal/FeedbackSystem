using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class StdFBDetails
    {
        public int StdFBId { get; set; }
        public int Student_Id { get; set; }
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

        public DataTable IsFBSubmittedByStd(int stdId, int fbId)
        {
            string[] paramName = { "@StudentId", "@FeedbackId" };
            object[] paramValue = { stdId, fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_IsFBSubmittedByStd");
        }

        public int InsertStdFBDetails(StdFBDetails stdFBDetails)
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
                                       "@Student_Id",
                                       "@SAMaster_Id",
                                       "@Remarks",
                                       "@Status"
                                      };

                object[] paramValue = { stdFBDetails.Q1Marks,
                                        stdFBDetails.Q2Marks,
                                        stdFBDetails.Q3Marks,
                                        stdFBDetails.Q4Marks,
                                        stdFBDetails.Q5Marks,
                                        stdFBDetails.Q6Marks,
                                        stdFBDetails.Q7Marks,
                                        stdFBDetails.Q8Marks,
                                        stdFBDetails.Q9Marks,
                                        stdFBDetails.Q10Marks,
                                        stdFBDetails.Q11Marks,
                                        stdFBDetails.Q12Marks,
                                        stdFBDetails.Q13Marks,
                                        stdFBDetails.Q14Marks,
                                        stdFBDetails.Q15Marks,
                                        stdFBDetails.Q16Marks,
                                        stdFBDetails.Q17Marks,
                                        stdFBDetails.Q18Marks,
                                        stdFBDetails.Q19Marks,
                                        stdFBDetails.Q20Marks,
                                        stdFBDetails.Q21Marks,
                                        stdFBDetails.Total,
                                        stdFBDetails.Student_Id,
                                        stdFBDetails.SAMaster_Id,
                                        stdFBDetails.Remarks,
                                        stdFBDetails.Status
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_InsertStdFBDetails");
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetStdTotalMarksByFBId(int fbId)
        {
            string[] paramName = { "@FeedbackId" };
            object[] paramValue = { fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_GetStdTotalMarksByFBId");
        }

        public DataTable GetStdFeedbackMarks(int fbId, int facultyid)
        {
            string[] paramName = { "@FeedbackId", "@FacultyId" };
            object[] paramValue = { fbId , facultyid};

            return DataAccess.GetData(paramName, paramValue, "usp_GetStdFeedbackMarks");
        }
    }
}