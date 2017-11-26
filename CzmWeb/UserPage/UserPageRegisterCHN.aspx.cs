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
    public partial class UserPageRegister1 : System.Web.UI.Page
    {
        GetDataFromTable getTable= new GetDataFromTable();
        GetDataFromView  getView =new GetDataFromView();
        PublicGetDataFromDB DB=new PublicGetDataFromDB();
        SendPhoneMessage Send= new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void btnSendCode_Click(object sender, EventArgs e)
        {
            if (CheckIsHavBeenHave())
            {
                MessaegBox("号码已经被使用");
            }
            String Code = Send.GenerateVerificationCode();
            Send.SendMessage(txtUserPhone.Text, "你的验证码为:" + Code);
            lblyzm.Text = Code;
            MessaegBox("已经发送！(The news has been sent)");
        }
        /// <summary>
        /// 如果重复了数据 返回true;
        /// </summary>
        /// <returns></returns>
        private bool CheckIsHavBeenHave()
        {
            /*电话号码查重*/
            int countPhone = Convert.ToInt32(DB.CarryOutSqlGetFirstColmun("SELECT COUNT(*) FROM  tblUserInfo WHERE UserId= '"+txtUserPhone.Text+"'"));
            /*身份证号码查重*/
            int CountCardID = Convert.ToInt32( DB.CarryOutSqlGetFirstColmun("SELECT COUNT(*) FROM  tblUserInfo WHERE UserCard= '" + txtUserCardID.Text + "'"));
            if (countPhone != 0 || CountCardID != 0)
            {
                if (countPhone != 0)
                {
                    MessaegBox("手机号已经被使用");
                }
                if (CountCardID != 0)
                {
                    MessaegBox("身份证件号码已经绑定！无法再次绑定！");
                }
                return true;
            }
            else
            {
                return false;
            }
        }
        protected void btnLoginNowTime_Click(object sender, EventArgs e)
        {
            Regex r = new Regex("^\\s*([A-Za-z0-9_-]+(\\.\\w+)*@(\\w+\\.)+\\w{2,5})\\s*$");
            if (!r.IsMatch(txtPwd.Text))
            {
                MessaegBox("请输入正确的邮箱格式！");
                return;
            }
            if (lblyzm.Text != txtCode.Text)
            {
                MessaegBox("验证码错误");
                return;
            }
            if (wuc_FileUpload1.IsHaveFile())
            {
                wuc_FileUpload1.MapPaths = "~/CradIDPictureDB/";
                wuc_FileUpload1.UpFile();
                return;               
            }
            if (wuc_FileUpload2.IsHaveFile())
            {
                wuc_FileUpload2.MapPaths = "~/CradIDPictureDB/";
                wuc_FileUpload2.UpFile();
                return;
            }
            else
            {
                if (!CheckIsHavBeenHave())
                {
                    if (wuc_FileUpload1.ServerShenNuePath != "" && wuc_FileUpload2.ServerShenNuePath != "")
                    {
                        String sql =
                            "INSERT INTO tblUserInfo(UserId,UserType,UserName_e,UserSex,UserCard,UserCardPicture_Address,UserCardPicture2_Address,UserWechat,UserEmail,UserPwd,UserState)" +
                            " values('" + txtUserPhone.Text + "',1,'" + txtUserRealName.Text + "'," +
                            DropDownList1.SelectedValue + ",'" + txtUserCardID.Text + "','" +
                            wuc_FileUpload1.ServerDianPath + "','" + wuc_FileUpload1.ServerDianPath + "','" +
                            txtUserName.Text + "','" + txtPwd.Text + "','" + txtPasswordOne.Text + "',10)";
                        int Count = DB.CarryOutSqlSentence(sql);
                        if (Count != 1)
                        {
                            MessaegBox("系统错误！请通知管理员！");
                            return;
                        }
                        MessaegBox("已经注册！请等待审核！审核后可以登录");
                        Server.Transfer("../UserPage/UserPageLogin.aspx");
                    }
                    else
                    {
                        String sql =
                            "INSERT INTO tblUserInfo(UserId,UserType,UserName_e,UserSex,UserCard,UserCardPicture_Address,UserCardPicture2_Address,UserWechat,UserEmail,UserPwd,UserState)" +
                            " values('" + txtUserPhone.Text + "',1,'" + txtUserRealName.Text + "'," +
                            DropDownList1.SelectedValue + ",'" + txtUserCardID.Text + "','" +
                            "" + "','" + "" + "','" +
                            txtUserName.Text + "','" + txtPwd.Text + "','" + txtPasswordOne.Text + "',10)";
                        int Count = DB.CarryOutSqlSentence(sql);
                        if (Count != 1)
                        {
                            MessaegBox("系统错误！请通知管理员！");
                            return;
                        }
                        MessaegBox("已经注册！请等待审核！审核后可以登录！");                
                    }
                }
            }
        }
    }
}