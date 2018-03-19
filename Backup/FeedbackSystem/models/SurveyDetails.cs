using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class SurveyDetails
    {
        public string Surveyname { get; set; }
        public string Comments { get; set; }

        public int CreateNewSurvey(SurveyDetails surveyDetails)
        {
            string[] paramName = { "@SurveyName", "@SurveyComments" };
            object[] paramValue = { surveyDetails.Surveyname, surveyDetails.Comments};
            try
            {
                return DataAccess.InsertUpdate(paramName, paramValue, "CreateNewSurvey", true);
            }
            catch
            {
                return 0;
            }
        }

        public DataTable GetSurveyDetailsById(int surveyId)
        {
            string[] paramName = { "@SurveyId" };
            object[] paramValue = { surveyId };
            try
            {
                return DataAccess.GetData(paramName, paramValue, "GetSurveyDetailsById"); ;
            }
            catch
            {
                return null;
            }
        }
    }
}