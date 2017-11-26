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
    public partial class UserProductTypeShow : System.Web.UI.Page
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
                if (Request.QueryString["TypeIds"] != null)
                {
                    ViewState["Typeid"] = Request.QueryString["TypeIds"].ToString();
                    DataBindPerson();
                }
                else
                {
                    DataBandS();
                }
            } 
        }
        private void DataBindPerson()
        {
            DataTable td = null;
            if (ViewState["Typeid"] != null)
            {
                td = getTable.CarryOutSqlGeDataTable("SELECT * FROM [XcXm].[dbo].[tblProductTypeTwoInfo] WHERE TypeIsVisiable=1 and typeID= " + ViewState["Typeid"].ToString());
            }
            reptmTwoType.DataSource = td;
            reptmTwoType.DataBind();
        }
        private void DataBandS()
        {
            DataTable td = getTable.CarryOutSqlGeDataTable("SELECT * FROM [XcXm].[dbo].[tblProductTypeInfo] WHERE TypeIsVisiable=1");
            reptm.DataSource = td;
            reptm.DataBind();
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

        protected void reptm_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Check")
            {
                ViewState["Typeid"] = e.CommandArgument;
                DataBindPerson();
                reptm.DataSource = null;
                reptm.DataBind();
            }       
        }
    }
}