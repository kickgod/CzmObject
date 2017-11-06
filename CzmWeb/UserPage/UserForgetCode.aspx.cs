using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.UserPage
{
    public partial class UserForgetCode : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Lang"] != null && Session["Lang"].ToString() == "ENG")
            {
                btnOk.Text = "Submit";
                btnSendCodeNow.Text = "Send";
            }
            else
            {
                btnOk.Text = "发送";
                btnSendCodeNow.Text = "提交";
            }
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }

        protected void lkbtnEnish_Click(object sender, EventArgs e)
        {
            EnglishTranslate();
        }
        private bool UserIsOk()
        {
            /*电话号码查询是否有*/
            int countPhone = Convert.ToInt32(DB.CarryOutSqlGetFirstColmun("SELECT COUNT(*) FROM  tblUserInfo WHERE UserId= '" + txtPhoneNumber.Text + "'"));
            if (countPhone != 1)
            {
                return false;
            }
            else
            {
                return true;
            }
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
            lbl_Look_Vedio.Text = "视频专区";
            lblChangeSpace.Text = "交流空间";
            lblUserLog.Text = "用户登录";
            lblUserLogin.Text = "用户注册";
            btnOk.Text = "发送";
            btnSendCodeNow.Text = "提交";
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
            lbl_Look_Vedio.Text = "Video";
            lblChangeSpace.Text = "Communication";
            lblUserLog.Text = "Login";
            lblUserLogin.Text = "New User";
            btnOk.Text = "Submit";
            btnSendCodeNow.Text = "Send";
        }
        protected void lkbtnChinese_Click(object sender, EventArgs e)
        {
            ChineseTranslate();
        }

        protected void lnkChinese_Click(object sender, EventArgs e)
        {
            ChineseTranslate();
        }

        protected void btnSendCodeNow_Click(object sender, EventArgs e)
        {
            if (txtPhoneNumber.Text == "")
            {
                if (Session["Lang"] == null || Session["Lang"].ToString() == "CHE")
                {
                    MessaegBox("请输入手机号");
                }
                else
                {
                    MessaegBox("Please enter phone number");
                }
                imgPhoneError.Visible = true;
                imgPhoneRight.Visible = false;
                return;
            }
            else
            {
                imgPhoneError.Visible = false;
                imgPhoneRight.Visible = true;               
            }
            if (!UserIsOk())
            {
                if (Session["Lang"] == null || Session["Lang"].ToString() == "CHE")
                {
                    MessaegBox("非合法用户");
                }
                else
                {
                    MessaegBox("unauthorized user");
                }
                imgPhoneError.Visible = true;
                imgPhoneRight.Visible = false;
                return;
            }
            else
            {
                imgPhoneError.Visible = false;
                imgPhoneRight.Visible = true;                 
            }
            string Code =send.GenerateVerificationCode();
            ViewState["Code"] = Code;
            send.SendMessage(txtPhoneNumber.Text, Code);
            if ( Session["Lang"]==null||Session["Lang"].ToString() == "CHE")
            {
                MessaegBox("已经发送注意接收");                
            }
            else
            {
                MessaegBox("Verification code already sent! Please pay attention to receiving!");
            }

        }

        private void MessageBoxLanguge(string Chinese,string English)
        {
            if (Session["Lang"].ToString() == "CHE" || Session["Lang"] == null)
            {
                MessaegBox(Chinese);
            }
            else
            {
                MessaegBox(English);
            }          
        }

        private void Imgclose()
        {
            imgPhoneRight.Visible = false;
            imgPhoneError.Visible = false;
            imgNewPassword.Visible = false;
            imgNewPasswords.Visible = false;
            imgPwdOne.Visible = false;
            imgPwdTwo.Visible = false;
        }
        protected void btnOk_Click(object sender, EventArgs e)
        {
            if (txtPhoneNumber.Text=="")
            {
                if (Session["Lang"] == null||Session["Lang"].ToString() == "CHE" )
                {
                    MessaegBox("请输入手机号");
                }
                else
                {
                    MessaegBox("Please enter phone number");
                }
                imgPhoneRight.Visible = false;
                imgPhoneError.Visible = true;
            }
            else
            {
                imgPhoneRight.Visible = true;
                imgPhoneError.Visible = false;
            }
            if (txtPwdOne.Text == "")
            {
                if (Session["Lang"].ToString() == "CHE" || Session["Lang"] == null)
                {
                    MessaegBox("请输入新密码");
                }
                else
                {
                    MessaegBox("Please enter a new password");
                }
                imgNewPassword.Visible = false;
                imgNewPasswords.Visible = true;
            }
            else
            {
                imgNewPassword.Visible = true;
                imgNewPasswords.Visible = false;
            }

            if (txtPwdTwo.Text == "")
            {
                if (Session["Lang"].ToString() == "CHE" || Session["Lang"] == null)
                {
                    MessaegBox("请再次输入新密码");
                }
                else
                {
                    MessaegBox("Please enter new password again");
                }
                imgPwdOne.Visible = false;
                imgPwdTwo.Visible = true;
            }
            else
            {
                imgPwdOne.Visible = true;
                imgPwdTwo.Visible = false;
            }
            if (txtVaildCode.Text == "")
            {
                if (Session["Lang"].ToString() == "CHE" || Session["Lang"] == null)
                {
                    MessaegBox("验证码错误");
                    this.txtVaildCode.Focus();
                    txtVaildCode.Style["outline"] = "red";
                }
                else
                {
                    MessaegBox("Wrong verification code");
                }                   
            }
            if (txtPwdOne.Text != txtPwdTwo.Text)
            {
                MessageBoxLanguge("两次密码不一样！", "The passwords are not the same");
                return;
            }
            /*修改密码*/
            if (ViewState["Code"].ToString() == txtVaildCode.Text)
            {
                String sql = "UPDATE tblUserInfo SET  UserPwd ='" + txtPwdOne.Text + "' where UserId ='" +txtPhoneNumber.Text + "'";
                int gg = DB.CarryOutSqlSentence(sql);
                if (gg != 1)
                {
                    MessaegBox("Error");
                }
                else
                {
                    if (Session["Lang"] == null || Session["Lang"].ToString() == "CHE")
                    {
                        MessaegBox("改密码成功");
                    }
                    else
                    {
                        MessaegBox("The password has been changed");
                    }
                }
            }
            else
            {
                if (Session["Lang"].ToString() == "CHE" || Session["Lang"] == null)
                {
                    MessaegBox("验证码错误");
                    this.txtVaildCode.Focus();
                    txtVaildCode.Style["outline"] = "red";
                }
                else
                {
                    MessaegBox("Wrong verification code");
                }                   
            }
            Imgclose();
        }
    }
}