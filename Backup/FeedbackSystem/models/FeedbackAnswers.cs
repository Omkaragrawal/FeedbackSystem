using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class FeedbackAnswers
    {
        public int FedBkAnsId { get; set; }
        public string ObjAnswer { get; set; }
        public int FedBkObj_Id { get; set; }
        public int Student_Id { get; set; }
        public int AddNewFeedbackAnswer(List<FeedbackAnswers> feedbackAnsList)
        {
            try
            {
                int result = 0;
                foreach (FeedbackAnswers fedbkAns in feedbackAnsList)
                {
                    string[] paramName = { "@ObjAnswer", "@FedBkObj_Id", "@Student_Id" };
                    object[] paramValue = { fedbkAns.ObjAnswer, fedbkAns.FedBkObj_Id, fedbkAns.Student_Id };

                    result = DataAccess.InsertUpdate(paramName, paramValue, "AddNewFeedbackAnswer");
                }
                return result;
            }
            catch
            {
                return 0;
            }
        }


    }
}