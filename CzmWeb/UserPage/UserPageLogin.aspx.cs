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
    public partial class UserPageLogin : System.Web.UI.Page
    {
        SendPhoneMessage sender =new SendPhoneMessage();
        PublicGetDataFromDB Counter= new GetDataFromTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private bool CheckIsNumber()
        {
            string Phone = txtUserID.Text;
            string Pwd = txtUserPwds.Text;
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[vwUserInfo] WHERE UserId='" + Phone + "'";  /*检测用户是否存在语句*/
            string SqlIsRight = "SELECT COUNT(*) FROM [XcXm].[dbo].[vwUserInfo] WHERE UserId='" + Phone + "' and UserPwd ='"+Pwd+"'";  /*检测用户密码是否正确存在语句*/
            int IsExist = Convert.ToInt32(Counter.CarryOutSqlGetFirstColmun(Sql));
            if (IsExist != 1)
            {
                txtUserID.Text = "用户名不存在！";
                txtUserID.ForeColor = Color.OrangeRed;
                return false;
            }
            else
            {
                int IsRight = Convert.ToInt32(Counter.CarryOutSqlGetFirstColmun(SqlIsRight));
                if (IsRight != 1)
                {
                    txtUserPwds.Text = "密码错误！再次输入！";
                    txtUserID.ForeColor = Color.OrangeRed;
                    return false;
                }
            }
            return true;
        }
        protected void BtnSendCode_Click(object sender, EventArgs e)
        {
            //如果用户存在再发验证码
            if (CheckIsNumber())
            {
                ViewState["Code"]=this.sender.GenerateVerificationCode();
                this.sender.SendMessage(txtUserID.Text, "你的验证码为：" + ViewState["Code"].ToString());
                BtnSendCode.Text = "已发送";
            }
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }

        protected void txtUserID_TextChanged(object sender, EventArgs e)
        {
            txtUserID.ForeColor = Color.Black;
        }

        protected void txtUserPwds_TextChanged(object sender, EventArgs e)
        {
            txtUserPwds.ForeColor=Color.Black;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (ViewState["Code"] != null && ViewState["Code"].ToString() == txtVaildCode.Text)
            {
                Session["User"] = txtUserID.Text;
                Response.Redirect("../Default.aspx");
            }
            else
            {
                MessaegBox("验证码错误！");
            }
        }
    }
}