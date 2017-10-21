using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.BackendManage
{
    public partial class UserIdentityVerify : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Admin"] != null)
                {
                    String Admin = Request.QueryString["Admin"].ToString();
                    lblAdmin.Text = Admin;
                    String AdminPassword = Request.QueryString["AdminPassword"].ToString();
                    lbladminpwd.Text = AdminPassword;
                    Response.Cookies["administator"]["ID"]=Admin;
                    Response.Cookies["administator"]["Pswd"] = AdminPassword;
                    Response.Cookies["administator"].Expires=DateTime.Now.AddHours(1);
                }
                else
                {
                    MessaegBox("登陆超时！");
                    Server.Transfer("../Default.aspx");                    
                }
            }
        }
        private bool CheckIsHave(string ID, string pwd)
        {
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + ID + "'";
            string SqlUser = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + ID + "' And Pwd='" + pwd + "'";
            string Count = DB.CarryOutSqlGetFirstColmun(Sql);
            if (Count != "1")
            {
                MessaegBox("非法用户3！");
                Thread.Sleep(3000);
                return false;
            }
            Count = DB.CarryOutSqlGetFirstColmun(SqlUser);
            if (Count != "1")
            {
                MessaegBox("非法用户4！！");
                Thread.Sleep(3000);
                return false;
            }
            return true;
        }
        private void CarryGetPage(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>GetPage('"+msg+"')</script>");
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
    }
}