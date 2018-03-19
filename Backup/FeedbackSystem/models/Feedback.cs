using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class Feedback
    {
        public int FedBkMasterId { get; set; }
        public string FedBkName { get; set; }
        public string FedBkDescription { get; set; }
        public int FacultyMapper_Id { get; set; }

        public int AddNewFeedBack(Feedback fedbk)
        {
            try
            {
                string[] paramName = { "@FeedbackName", "@FeedbackDescription", "@FacultyMapper_Id" };
                object[] paramValue = { fedbk.FedBkName, fedbk.FedBkDescription, fedbk.FacultyMapper_Id };

                return DataAccess.InsertUpdate(paramName, paramValue, "InsertNewFeedback", true);
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetAvailableFeedbacks(int ysbmapperid, int facid)
        {
            string[] paramName = { "@YBSMapper_Id" , "@Faculty_Id" };
            object[] paramValue = { ysbmapperid, facid };
            return DataAccess.GetData(paramName, paramValue, "GetAvailableFeedbacks");
        }

        public DataTable GetAllFeedbacks()
        {
            string[] paramName = { };
            object[] paramValue = { };
            return DataAccess.GetData(paramName, paramValue, "GetAllFeedbacks");
        }

        public DataTable GetFeedbacksAssignedToFaculty(int facId)
        {
            string[] paramName = { "@Faculty_Id" };
            object[] paramValue = { facId };
            return DataAccess.GetData(paramName, paramValue, "GetFeedbacksAssignedToFaculty");
        }

        public DataTable GetFeedbackAnswerRatings(int FeedbackMasterId)
        {
            string[] paramName = { "@FeedbackMasterId" };
            object[] paramValue = { FeedbackMasterId };
            return DataAccess.GetData(paramName, paramValue, "GetFeedbackAnswerRatings");
        }
    }
}