﻿using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.UserPage
{
    public partial class UserPageLogin : System.Web.UI.Page
    {
        SendPhoneMessage sender =new SendPhoneMessage();
        PublicGetDataFromDB Counter= new GetDataFromTable();
        PublicUserJudge Judge = new PublicUserJudge();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.txtUserPwds.Text != "")//防止页面刷新，密码文本被清空
            {
                this.txtUserPwds.Attributes["value"] = this.txtUserPwds.Text;
            }
            if (!IsPostBack)
            {
                if (Session["User"] != null)
                {
                    MessaegBox("You are already logged in！");
                }
                txtUserPwds.Text = "";
                txtUserID.Text = "";
            }
        }
        private bool CheckIsNumber()
        {
            string Phone = txtUserID.Text;
            string Pwd = txtUserPwds.Text;
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[vwUserInfo] WHERE UserId='" + Phone + "'";  /*检测用户是否存在语句*/

            string SqlIsRight = "SELECT COUNT(*) FROM [XcXm].[dbo].[vwUserInfo]  WHERE UserState!=10 and  UserId='" + Phone + "' and UserPwd ='" + Pwd + "'";  /*检测用户密码是否正确存在语句*/
            int IsExist = Convert.ToInt32(Counter.CarryOutSqlGetFirstColmun(Sql));
            if (IsExist != 1)
            {
                txtUserID.Text = "Username does not exist！";
                txtUserID.ForeColor = Color.OrangeRed;
                return false;
            }
            else
            {
                int IsRight = Convert.ToInt32(Counter.CarryOutSqlGetFirstColmun(SqlIsRight));
                if (IsRight != 1)
                {
                    MessaegBoxResp("Psaaword Error! OR !Your information is under review");
                    txtUserPwds.ForeColor = Color.OrangeRed;
                    return false;
                }
            }
            return true;
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        private void MessaegBoxResp(String msg)
        {
            Response.Write("<script>alert('" + msg + "');</script>");
        }

        protected void txtUserID_TextChanged(object sender, EventArgs e)
        {
            txtUserID.ForeColor = Color.Black;
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../DefalutEng.aspx';</script>");
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (CheckIsNumber())
            {
                    Session["User"] = txtUserID.Text;
                    MessageBoxResponse("login successful");             
            }
        }

        protected void txtUserID_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}