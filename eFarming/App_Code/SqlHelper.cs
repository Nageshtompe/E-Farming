using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for SqlHelper
/// </summary>
public class SqlHelper
{
    public static SqlConnection GetConnectionString()
    {
        string strConnectionString = ConfigurationManager.ConnectionStrings["MyCon"].ConnectionString;
        SqlConnection con = new SqlConnection(strConnectionString);
        return con;
    }  
    public static void ExecuteNonQuery(string strcmd)
    {
        try
        {
            using (SqlConnection con = GetConnectionString())
            {
                SqlCommand cmd = new SqlCommand(strcmd,con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        catch(Exception ex)
        {
            throw ex;
        } 
}
    public static DataTable FillData(string SQL)
    {
        try
        {
            SqlConnection con;
            con = GetConnectionString();
            con.Open();
            string strcmd = SQL;//To Get Table Details
            SqlCommand cmd = new SqlCommand(strcmd, con);
            cmd.CommandTimeout = 0;
            SqlDataAdapter dtadp = new SqlDataAdapter();
            dtadp.SelectCommand = cmd;
            DataTable dt = new DataTable();
            dtadp.Fill(dt);
            con.Close();
            return dt;
            
        }
        catch(Exception ex)
        {
            throw ex;
        }
    }
  
}
