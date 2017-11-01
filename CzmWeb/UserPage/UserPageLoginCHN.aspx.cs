using System;
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
    public partial class UserPageLoginCHN : System.Web.UI.Page
    {
        SendPhoneMessage sender = new SendPhoneMessage();
        PublicGetDataFromDB Counter = new GetDataFromTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.txtUserPwds.Text != "")//防止页面刷新，密码文本被清空
            {
                this.txtUserPwds.Attributes["value"] = this.txtUserPwds.Text;
            }
            if (!IsPostBack)
            {
                txtUserPwds.Text = "";
                txtUserID.Text = "";
            }
        }
        private bool CheckIsNumber()
        {
            string Phone = txtUserID.Text;
            string Pwd = txtUserPwds.Text;
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[vwUserInfo] WHERE UserId='" + Phone + "'";  /*检测用户是否存在语句*/
            string SqlIsRight = "SELECT COUNT(*) FROM [XcXm].[dbo].[vwUserInfo]  WHERE UserState !=10 and  UserId='" + Phone + "' and UserPwd ='" + Pwd + "'";  /*检测用户密码是否正确存在语句*/
            int IsExist = Convert.ToInt32(Counter.CarryOutSqlGetFirstColmun(Sql));
            if (IsExist != 1)
            {
                txtUserID.Text = "用户名不存在！";
                txtUserID.ForeColor = Color.OrangeRed;
                MessaegBoxResp("用户名错误！");
                return false;
            }
            else
            {
                int IsRight = Convert.ToInt32(Counter.CarryOutSqlGetFirstColmun(SqlIsRight));
                if (IsRight != 1)
                {
                    txtUserPwds.Text = "密码错误！再次输入！";
                    txtUserID.ForeColor = Color.OrangeRed;
                    MessaegBoxResp("密码错误1");
                    return false;
                }
            }
            return true;
        }
        protected void BtnSendCode_Click(object sender, EventArgs e)
        {
            string pwd = txtUserPwds.Text;
            //如果用户存在再发验证码
            if (CheckIsNumber())
            {
                ViewState["Code"] = this.sender.GenerateVerificationCode();
               //this.sender.SendMessage(txtUserID.Text, "你的验证码为：" + ViewState["Code"].ToString());
                MessaegBoxResp("已结发送！" + ViewState["Code"].ToString());
            }
        }
        private void MessaegBoxResp(String msg)
        {
            Response.Write("<script>alert('" + msg + "');</script>");
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void txtUserPwds_TextChanged(object sender, EventArgs e)
        {
            txtUserPwds.ForeColor = Color.Black;
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../DefalutEng.aspx';</script>");
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {

            if (CheckIsNumber())
            {
                if (ViewState["Code"] != null && ViewState["Code"].ToString() == txtVaildCode.Text)
                {
                    Session["User"] = txtUserID.Text;
                    MessageBoxResponse("登录成功");
                }
                else
                {
                    MessaegBox("验证码错误！");
                }
            }
            else
            {
                MessaegBox("用户名错误");
            }
        }
    }
}