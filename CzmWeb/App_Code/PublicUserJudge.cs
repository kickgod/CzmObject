﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CzmWeb.App_Code
{
    public class PublicUserJudge:PublicGetDataFromDB
    {
        /// <summary>
        /// 得到用户权限级别 
        /// </summary>
        /// <param name="UserId">用户账号（手机号）</param>
        /// <returns>权限数字 30有效 其他数字皆是无效</returns>
        public int GetUserPowerRightCount(string UserId)
        {
            if (UserId == "")
            {
                return -1;
            }
            string Result;
            SqlConnection con = GetSqlConnection();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT [UserState] FROM [XcXm].[dbo].[tblUserInfo] WHERE UserId='"+UserId+"'";
            Result = cmd.ExecuteScalar().ToString();
            cmd.Dispose();
            con.Dispose();
            con.Close();
            return Convert.ToInt32(Result);
        }
        /// <summary>
        /// 判断用户权限是否等于正常用户 30级
        /// </summary>
        /// <returns></returns>
        public bool JudgeUserPowerCountIs30(string UserId)
        {
            if (UserId == "")
            {
                return false;
            }
            int Power =GetUserPowerRightCount(UserId);
            if (Power==30)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// 判断用户是否被屏蔽 -30级
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        public bool JudgeUserPowerCountIs_30(string UserId)
        {
            if (UserId == "")
            {
                return false;
            }
            int Power = GetUserPowerRightCount(UserId);
            if (Power == -30)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /// <summary>
        /// 判断用户全线级别是否是10 提交状态
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        public bool JudgeUserPowerCountIs10(string UserId)
        {
            if (UserId == "")
            {
                return false;
            }
            int Power = GetUserPowerRightCount(UserId);
            if (Power == 10)
            {
                return true;
            }
            else
            {
                return false;
            }            
        }
        /// <summary>
        /// 判断数据库中此账号是否存在
        /// </summary>
        /// <param name="UserId"></param>
        /// <returns></returns>
        public bool IsHaveUserID(string UserId)
        {
            if (UserId == "")
            {
                return false;
            }
            int Result;
            SqlConnection con = GetSqlConnection();
            if (con.State != ConnectionState.Open)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT Count(*) FROM [XcXm].[dbo].[tblUserInfo] WHERE UserId='" + UserId + "'";
            Result = Convert.ToInt32(cmd.ExecuteScalar());
            cmd.Dispose();
            con.Dispose();
            con.Close();
            if (Result == 1)
                return true;
            else
            {
                return false;
            }
        }
    }
}