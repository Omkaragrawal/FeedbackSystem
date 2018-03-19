using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FeedbackSystem.models
{
    public class DataAccess
    {
        //connetion string
        static string conn = ConfigurationManager.ConnectionStrings["FeedbackDBConnection"].ConnectionString;
        public DataAccess()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public static int InsertUpdate(String[] paramName, object[] paramValue, string procedureName, bool returnLastIdInserted = false)
        {

            try
            {
                //connection
                SqlConnection con = new SqlConnection(conn);
                con.Open();
                using (con)
                {

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = procedureName;


                    if (paramName != null)
                    {
                        //Param Procedure
                        SqlParameter[] param = new SqlParameter[paramName.Length];
                        //Add parameter into param array
                        for (int i = 0; i < paramName.Length; i++)
                        {
                            param[i] = new SqlParameter(paramName[i], paramValue[i]);
                        }

                        //Add parameter for procedure
                        cmd.Parameters.AddRange(param);

                    }
                    //return result (int) value
                    if (returnLastIdInserted)
                        return (int)cmd.ExecuteScalar();

                    return cmd.ExecuteNonQuery();

                }
            }
            catch (Exception ex)
            {
                return 0;
            }

        }

        public static DataTable GetData(String[] paramName, object[] paramValue, string procedureName)
        {
            DataTable dt = new DataTable();
            try
            {
                //connection
                SqlConnection con = new SqlConnection(conn);
                con.Open();
                using (con)
                {

                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = procedureName;

                    if (paramName != null)
                    {
                        //Param Procedure
                        SqlParameter[] param = new SqlParameter[paramName.Length];
                        //Add parameter into param array
                        for (int i = 0; i < paramName.Length; i++)
                        {
                            param[i] = new SqlParameter(paramName[i], paramValue[i]);
                        }
                        //Add parameter for procedure
                        cmd.Parameters.AddRange(param);
                    }
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    //Fill data to DataSet
                    da.Fill(dt);

                    //return result (DataSet) value
                    return dt;
                }
            }
            catch (Exception ex)
            {
                throw ex;
                //return dt;
            }

        }
    }
}