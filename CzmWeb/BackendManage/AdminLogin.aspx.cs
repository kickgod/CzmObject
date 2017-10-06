using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.BackendManage
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtID.Text = "";
                txtpwd.Text = "";                
            }
        }

        private bool CheckIsHave()
        {
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + txtID.Text + "'";
            string SqlUser = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + txtID.Text + "' And Pwd='"+txtpwd.Text+"'" ;
            string Count= DB.CarryOutSqlGetFirstColmun(Sql);
            if (Count != "1")
            {
                MessaegBox("非法用户！");
                txtID.Text = "";
                txtpwd.Text = "";
                return false;
            }
            Count = DB.CarryOutSqlGetFirstColmun(SqlUser);
            if (Count != "1")
            {
                MessaegBox("密码错误！！");
                txtpwd.Text = "";
                return false;
            }
            return true;
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        private void MessageBoxLanguge(string Chinese, string English)
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
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (CheckIsHave())
            {
                Session["Admin"] = txtID.Text;
                Session["AdminPassword"] = txtpwd.Text;
                //MessaegBox("~/BackendManage/BackAdmin.aspx ?Admin=" + Session["Admin"] + " & AdminPassword=" + Session["AdminPassword"]);
                Response.Redirect("~/BackendManage/BackAdmin.aspx?Admin=" + txtID.Text + "&AdminPassword="+txtpwd.Text);
            }
        }
    }
}