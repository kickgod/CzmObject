using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.UserPage
{
    public partial class UserVedioShowList : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        PublicUserJudge Judge = new PublicUserJudge();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBand();
            }
        }
        private void DataBand()
        {
            DataTable td = getTable.CarryOutSqlGeDataTable("SELECT TOP 9 * FROM [XcXm].[dbo].[tblVideoInfo] WHERE IsShow=1");
            reptm.DataSource = td;
            reptm.DataBind();
        }
        private void DataBandS()
        {
            DataTable td = getTable.CarryOutSqlGeDataTable("SELECT * FROM [XcXm].[dbo].[tblVideoInfo] WHERE IsShow=1");
            reptm.DataSource = td;
            reptm.DataBind();
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }

        protected void reptm_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void LkBtnGetAll_Click(object sender, EventArgs e)
        {
            DataBandS();
        }
    }
}