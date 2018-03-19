using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class LoginDetails
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Role { get; set; }
        public string Status { get; set; }


        public DataTable ValidateUser(LoginDetails loginDetails)
        {
            string[] paramName = { "@Username", "@Password" };
            object[] paramValue = { loginDetails.Username, loginDetails.Password };
            try
            {
                return DataAccess.GetData(paramName, paramValue, "ValidateUser"); ;
            }
            catch(Exception ex)
            {
                throw ex;
            }
           
        }

        public void ChangePassword(string adminId, string password)
        {

            string conString = System.Configuration.ConfigurationManager.ConnectionStrings["FeedbackDBConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(conString);
            string cmdString = "Update [LoginDetails] Set [Password]=@Password Where [Username]=@Username";
            SqlCommand cmd = new SqlCommand(cmdString, conn);

            SqlParameter paramAdminID = new SqlParameter();
            paramAdminID.ParameterName = "@Username";
            paramAdminID.Value = adminId;
            paramAdminID.DbType = System.Data.DbType.String;
            cmd.Parameters.Add(paramAdminID);

            SqlParameter paramPassword = new SqlParameter();
            paramPassword.ParameterName = "@Password";
            paramPassword.Value = password;
            paramPassword.DbType = System.Data.DbType.String;
            cmd.Parameters.Add(paramPassword);

            conn.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            finally
            {
                conn.Close();
            }

        }
    }
}