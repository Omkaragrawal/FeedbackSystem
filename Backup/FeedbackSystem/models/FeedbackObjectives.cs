using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class FeedbackObjectives
    {
        public int FedBkObjId { get; set; }
        public string ObjQuestion { get; set; }
        public int FedBkMaster_Id { get; set; }

        public int AddNewFeedbackQuestion(FeedbackObjectives feedbackObjectives)
        {
            try
            {
                string[] paramName = { "@ObjQuestion", "@FedBkMaster_Id" };
                object[] paramValue = { feedbackObjectives.ObjQuestion, feedbackObjectives.FedBkMaster_Id };

                return DataAccess.InsertUpdate(paramName, paramValue, "AddNewFeedbackQuestion");
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetFeedbackCreatedQuestions(int FacultyId, int FedBkMasterId, int FacultyMapperId)
        {
            string[] paramName = { "@FacultyId","@FedBkMasterId","@FacultyMapperId" };
            object[] paramValue = { FacultyId, FedBkMasterId, FacultyMapperId};

            return DataAccess.GetData(paramName, paramValue, "GetFeedbackCreatedQuestions");
        }

        public DataTable GetFedBkQuestionByMasterId(int fedbkmasterId)
        {
            string[] paramName = { "@FedBkMaster_Id" };
            object[] paramValue = { fedbkmasterId };

            return DataAccess.GetData(paramName, paramValue, "GetFedBkQuestionByMasterId");
        }

        public int DeleteFeedBackQuestionIfAlreadyExist(int FeedbackMasterId)
        {
            try
            {
                string[] paramName = { "@FeedbackMasterId" };
                object[] paramValue = { FeedbackMasterId };

                return DataAccess.InsertUpdate(paramName, paramValue, "DeleteFeedBackQuestionIfAlreadyExist");
            }
            catch
            {
                return 0;
            }
        }
    }
}