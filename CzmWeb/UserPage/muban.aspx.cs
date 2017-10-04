using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CzmWeb.UserPage
{
    public partial class UserPageRegister : System.Web.UI.Page
    {
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
    }
    
}