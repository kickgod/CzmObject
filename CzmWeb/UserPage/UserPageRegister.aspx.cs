using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.UserPage
{
    public partial class UserPageRegister2 : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage Send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.txtPasswordOne.Text != "")//防止页面刷新，密码文本被清空
            {
                this.txtPasswordOne.Attributes["value"] = this.txtPasswordOne.Text;
            }
            if (this.txtPasswordTwo.Text != "")//防止页面刷新，密码文本被清空
            {
                this.txtPasswordTwo.Attributes["value"] = this.txtPasswordTwo.Text;
            }
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void btnSendCode_Click(object sender, EventArgs e)
        {
            if (CheckIsHavBeenHave())
            {
                MessaegBox("Number has been used!");
                return;
            }
            else
            {
                String Code = Send.GenerateVerificationCode();
                Send.SendMessage(txtUserPhone.Text, "Your verification code is:" + Code);
                lblyzm.Text = Code;
                MessaegBox("The news has been sent");              
            }

        }
        /// <summary>
        /// 如果重复了数据 返回true;
        /// </summary>
        /// <returns></returns>
        private bool CheckIsHavBeenHave()
        {
            /*电话号码查重*/
            int countPhone = Convert.ToInt32(DB.CarryOutSqlGetFirstColmun("SELECT COUNT(*) FROM  tblUserInfo WHERE UserId= '" + txtUserPhone.Text + "'"));           
            if (countPhone != 0)
            {
                if (countPhone != 0)
                {
                    MessaegBox("The phone number has been used");
                    return true;
                }
            }
            else
            {
                return false;
            }
            return false;
        }
        private void MessageBoxResponses(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserPageLogin.aspx';</script>");
        }
        protected void btnLoginNowTime_Click(object sender, EventArgs e)
        {
            Regex r = new Regex("^\\s*([A-Za-z0-9_-]+(\\.\\w+)*@(\\w+\\.)+\\w{2,5})\\s*$");
            if (!r.IsMatch(txtPwd.Text))
            {
                MessaegBox("Please enter the correct email format！");
                return;
            }
            if (lblyzm.Text != txtCode.Text)
            {
                MessaegBox("different verification codes");
                return;
            }
            else
            {
                        String sql =
                            "INSERT INTO tblUserInfo(UserId,UserType,UserName_e,UserSex,UserCardPicture_Address,UserCardPicture2_Address,UserWechat,UserEmail,UserPwd,UserState)" +
                            " values('" + txtUserPhone.Text + "',1,'" + txtUserRealName.Text + "'," +
                            DropDownList1.SelectedValue  +  ",'" +
                            "" + "','" + "" + "','" +
                            txtUserName.Text + "','" + txtPwd.Text + "','" + txtPasswordOne.Text + "',30)";
                        int Count = DB.CarryOutSqlSentence(sql);
                        if (Count != 1)
                        {
                            MessaegBox("system error! Please inform the administrator！");
                            return;
                        }
                MessageBoxResponses("Already registered! ");
                }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserPageLogin.aspx';</script>");
        }
        protected void lkbtnEnish_Click(object sender, EventArgs e)
        {
            Response.Redirect("../DefalutEng.aspx");
        }

        protected void lnkChinese_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Default.aspx");
        }

        protected void lkbtnChinese_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Default.aspx");
        }
    }
}