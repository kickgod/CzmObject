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

        protected void lkbtnEnish_Click(object sender, EventArgs e)
        {
            EnglishTranslate();
        }

        private void ChineseTranslate()
        {
            //FontColor
            Session["Lang"] = "CHE";
            lblFisrtPage.Text = "首页";
            lbl_Product_type.Text = "产品分类";
            lbl_NewProduct.Text = "新品预告";
            lbl_CreateProject.Text = "我要创造";
            lbl_Create_Invert.Text = "我要投资";
            lbl_Project_show.Text = "项目展示";
            lbl_Look_OnlineVedio.Text = "观看直播";
            lbl_Look_Vedio.Text = "视频专区";
            lblChangeSpace.Text = "交流空间";
            lblUserLog.Text = "用户登录";
            lblUserLogin.Text = "用户注册";
        }

        private void EnglishTranslate()
        {
            //English
            Session["Lang"] = "ENG";
            lblFisrtPage.Text = "HomePage";
            lbl_Product_type.Text = "Product Catagory";
            lbl_NewProduct.Text = "New";
            lbl_CreateProject.Text = "Project Apply";
            lbl_Create_Invert.Text = "Invest";
            lbl_Project_show.Text = "Display";
            lbl_Look_OnlineVedio.Text = "Live Webcast";
            lbl_Look_Vedio.Text = "Video";
            lblChangeSpace.Text = "Communication";
            lblUserLog.Text = "Login";
            lblUserLogin.Text = "New User";
        }
        protected void lkbtnChinese_Click(object sender, EventArgs e)
        {
            ChineseTranslate();
        }

        protected void lnkChinese_Click(object sender, EventArgs e)
        {
            ChineseTranslate();
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
                MessaegBox("验证码错误（different verification codes）");
                return;
            }
            else
            {
                if (!CheckIsHavBeenHave())
                {
                    wuc_FileUpload1.MapPaths = "~/CradIDPictureDB/";
                    wuc_FileUpload1.UpFile();
                    wuc_FileUpload2.UpFile();
                    if (wuc_FileUpload1.ServerShenNuePath != "" && wuc_FileUpload2.ServerShenNuePath != "")
                    {
                        String sql =
                            "INSERT INTO tblUserInfo(UserId,UserType,UserName_e,UserSex,UserCard,UserCardPicture_Address,UserCardPicture2_Address,UserWechat,UserEmail,UserPwd,UserState)" +
                            " values('" + txtUserPhone.Text + "',1,'" + txtUserName.Text + "'," +
                            DropDownList1.SelectedValue + ",'" + txtUserCardID.Text + "','" +
                            wuc_FileUpload1.ServerDianPath + "','" + wuc_FileUpload1.ServerDianPath + "','" +
                            txtUserName.Text + "','" + txtPwd.Text + "','" + txtPasswordOne.Text + "',10)";
                        int Count = DB.CarryOutSqlSentence(sql);
                        if (Count != 1)
                        {
                            MessaegBox("系统错误！请通知管理员！");
                            return;
                        }
                        MessaegBox("已经注册！你可以登陆了！");
                        Server.Transfer("../UserPage/UserPageLogin.aspx");
                    }
                    else
                    {
                        MessaegBox("请上传文件");
                    }
                }
            }
        }
    }
}