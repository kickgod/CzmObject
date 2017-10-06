using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.BackendManage
{
    public partial class UserValidCheck : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }
        private bool CheckIsHave(string ID ,string pwd)
        {
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + ID + "'";
            string SqlUser = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + ID + "' And Pwd='" + pwd + "'";
            string Count = DB.CarryOutSqlGetFirstColmun(Sql);
            if (Count != "1")
            {
                return false;
            }
            Count = DB.CarryOutSqlGetFirstColmun(SqlUser);
            if (Count != "1")
            {
                return false;
            }
            return true;
        }
        private int MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
            return 1;
        }
        private int MessaegBoxConfrim(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.confirm('" + msg + "')</script>");
            return 1;
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
    }
}