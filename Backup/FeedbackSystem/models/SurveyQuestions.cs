using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class SurveyQuestions
    {
        public int SurveyId { get; set; }
        public string SurveyQuestion { get; set; }

        public int CreateSurveyQuestion(SurveyQuestions surveyQuestions)
        {
            string[] paramName = { "@SurveyQuestion", "@SurveyId" };
            object[] paramValue = { surveyQuestions.SurveyQuestion, surveyQuestions.SurveyId };
            try
            {
                return DataAccess.InsertUpdate(paramName, paramValue, "CreateSurveyQuestion");
            }
            catch
            {
                return 0;
            }
        }
    }
}