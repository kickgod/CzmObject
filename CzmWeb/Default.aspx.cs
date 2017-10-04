using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Lang"] = "CHE";
            if (Session["User"] != null)
            {
                MessaegBox("欢迎你的到来！尊贵的会员！");
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

        private void ChineseTranslate()
        {
            //FontColor
            Session["Lang"] = "CHE";
            lblCompanyName.Text = "四川创造门高新技术开发有限公司";
            lblCompanyIntr.Text =
                "四川创造门高新技术开发有限公司是致力于各种创新产品研发的实体机构，目前已经推出多项专利创新产品，并已获人们广泛认同 我们还会不断研发更多创新产品推向市场，" +
                "为人类社会的发展做出贡献！创造改变命运！创造改变未来！我们吸纳各种创新人才成为我们的合作伙伴 ，为全人类服务，为有创造梦想的人服务，走进创造门，函授创造，" +
                "拥有创造，参与创造，创造门与你同在！";
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
            lblYIniao.Visible = false;
            lblwenwu.Visible = false;
            lblxiwa.Visible = false;
            lbldiaoyu.Visible = false;
        }

        private void EnglishTranslate()
        {
            //English
            Session["Lang"] = "ENG";
            lblCompanyName.Text = "SiChuan ChuangZaoMen High - tech Development Co. Ltd";
            lblCompanyIntr.Text =
                "SiChuan ChuangZaoMen High - tech Development Co. Ltd is committed to a variety of innovative product development entities, has launched a number of patented innovative products, " +
                "and has been widely recognized that we will continue to develop more innovative products to market, " +
                "Contribute to the development of society! Create change destiny! Create to change the future! We absorb all kinds of " +
                "innovative talents to become our partners, serve all mankind, serve the people who have created dreams, enter the creation of " +
                "the door, create correspondence, create," +
                " participate in the creation, create the door with you!";
            lblFisrtPage.Text = "Home Page";
            lbl_Product_type.Text = "Product Catagory";
            lbl_NewProduct.Text = "New";
            lbl_CreateProject.Text = "Project Apply";
            lbl_Create_Invert.Text = "Invest";
            lbl_Project_show.Text = "Display";
            lbl_Look_OnlineVedio.Text = "Live Webcast";
            lbl_Look_Vedio.Text = "Video List";
            lblChangeSpace.Text = "Communication";
            lblUserLog.Text = "Login";
            lblUserLogin.Text = "New User";
            lblYIniao.Visible = true;
            lblwenwu.Visible = true;
            lblxiwa.Visible = true;
            lbldiaoyu.Visible = true;
            lblAbotUs.Text = "About us";
            lblIntro.Text =
                "The company was founded in 2016, is committed to the development of fishery products, promotion of various products, such as washing and footwear, cultural relics collection, health care! Welcome to communicate with us! Cooperation!";
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