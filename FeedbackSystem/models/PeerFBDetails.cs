using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class PeerFBDetails
    {
        public int PeerFBId { get; set; }
        public int Faculty_Id { get; set; }
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
        public int Total { get; set; }
        public string Remarks { get; set; }
        public string Status { get; set; }

        public DataTable IsPeerFBSubmittedByFaculty(int facId, int fbId)
        {
            string[] paramName = { "@FacultyId", "@FeedbackId" };
            object[] paramValue = { facId, fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_IsPeerFBSubmittedByFaculty");
        }

        public int InsertPeerFBDetails(PeerFBDetails peerFBDetails)
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
                                       "@Total",
                                       "@Faculty_Id",
                                       "@SAMaster_Id",
                                       "@Remarks",
                                       "@Status"
                                      };

                object[] paramValue = { peerFBDetails.Q1Marks,
                                        peerFBDetails.Q2Marks,
                                        peerFBDetails.Q3Marks,
                                        peerFBDetails.Q4Marks,
                                        peerFBDetails.Q5Marks,
                                        peerFBDetails.Q6Marks,
                                        peerFBDetails.Q7Marks,
                                        peerFBDetails.Q8Marks,
                                        peerFBDetails.Q9Marks,
                                        peerFBDetails.Q10Marks,
                                        peerFBDetails.Q11Marks,
                                        peerFBDetails.Total,
                                        peerFBDetails.Faculty_Id,
                                        peerFBDetails.SAMaster_Id,
                                        peerFBDetails.Remarks,
                                        peerFBDetails.Status
                                      };

                return DataAccess.InsertUpdate(paramName, paramValue, "usp_InsertPeerFBDetails");
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetPeerTotalMarksByFBId(int fbId)
        {
            string[] paramName = { "@FeedbackId" };
            object[] paramValue = { fbId };

            return DataAccess.GetData(paramName, paramValue, "usp_GetPeerTotalMarksByFBId");
        }

        public DataTable GetPeerFeedbackMarks(int fbId, int facultyid)
        {
            string[] paramName = { "@FeedbackId", "@FacultyId" };
            object[] paramValue = { fbId, facultyid };

            return DataAccess.GetData(paramName, paramValue, "usp_GetPeerFeedbackMarks");
        }
    }
}