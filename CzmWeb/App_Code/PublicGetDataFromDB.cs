using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace CzmWeb.App_Code
{
    /// <summary>
    /// 获得sqlconnection对象
    /// 执行sql 语句
    /// </summary>
    public class PublicGetDataFromDB
    {
        /// <summary>
        /// 得到链接字符串
        /// </summary>
        /// <returns></returns>
        public SqlConnection GetSqlConnection()
        {
            String Connectstring = ConfigurationManager.ConnectionStrings["XcXmObject.Data.ConnectionString"].ToString();
            SqlConnection con = new SqlConnection(Connectstring);
            return con;
        }
        /// <summary>
        /// 执行sql语句返回影响的行数 可以做以作用于表或者视图
        /// 返回-1 表示sql语句为空
        /// </summary>
        /// <param name="SentenceSql">sql语句</param>
        /// <returns>返回影响的行数</returns>
        public int CarryOutSqlSentence(string SentenceSql)
        {
            int HangShu;
            if (SentenceSql == "")
            {
                return -1;
            }
            SqlConnection con = GetSqlConnection();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType=CommandType.Text;
            cmd.CommandText = SentenceSql;
            HangShu = cmd.ExecuteNonQuery();
            cmd.Dispose();
            con.Dispose();
            con.Close();
            return HangShu;
        }
        /// <summary>
        /// 执行sql 语句返回结果的第一行第一列 可以做以作用于表或者视图
        /// 返回-1表示sql 语句为空 
        /// </summary>
        /// <param name="SentenceSql">sql语句</param>
        /// <returns>返回结果的第一行第一列</returns>
        public String CarryOutSqlGetFirstColmun(string SentenceSql)
        {
            if (SentenceSql == "")
            {
                return "-1";
            }
            string Result;
            SqlConnection con = GetSqlConnection();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = SentenceSql;
            Result = cmd.ExecuteScalar().ToString();
            cmd.Dispose();
            con.Dispose();
            con.Close();
            return Result;
        }
        
        
    }
    
}