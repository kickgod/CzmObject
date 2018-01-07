using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;
using System.Data;

namespace CzmWeb.UserPage
{
    public partial class UserInvestShow : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        PublicUserJudge Judge = new PublicUserJudge();
        protected void Page_Load(object sender, EventArgs e)
        {
            if ( Session["User"]== null)
            {
                 MessageBoxResponse("You are not logged in, login timeout");
                return;
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["ProjectNames"] != null)
                {
                    string sqlwhere = " PciID = " + Request.QueryString["ProjectNames"];
                    DataTable td = getTable.GetAllDataFromtblProjectCreate(sqlwhere);
                    reptemNewProduct.DataSource = td;
                    reptemNewProduct.DataBind();
                }
                BingData();
            }
        }

        private void BingData()
        {
            reptemNewProduct.DataSource = DB.CarryOutSqlGeDataTable("SELECT TOP 9 * FROM [XcXm].[dbo].[tblProjectCreate] WHERE PciState = 30 order by PciTime");
            reptemNewProduct.DataBind();
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserPageLogin.aspx';</script>");
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void reptmMy_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Repeater rep = (Repeater)e.Item.FindControl("reptem");
            Button sda = (Button)e.Item.FindControl("btncanshu");
            rep.DataSource = DB.CarryOutSqlGeDataTable("SELECT * FROM vwInvestCondition WHERE InsertProjectName = '" + sda.CommandArgument+"'");
            rep.DataBind();
        }

        protected void reptmMy_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Repeater1_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "Delete")
                {
                    string sql = "DELETE FROM [XcXm].[dbo].[tblProjectInvestInfo] WHERE PiiID=" + e.CommandArgument;
                    DB.CarryOutSqlSentence(sql);
                    BingData();
                    MessaegBox("You have deleted it");
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }

        }
        protected void reptemNewProduct_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Invest")
            {
                string QueryName = e.CommandArgument.ToString();
                Response.Redirect("~/UserPage/UserInvestProject.aspx?QueryNamet=" + QueryName);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text != "")
            {
                string sqlwhere = "PciName_c like '%" + txtSearch.Text + "%'";
                DataTable td = getTable.GetAllDataFromtblProjectCreate(sqlwhere);
                reptemNewProduct.DataSource = td;
                reptemNewProduct.DataBind();
            }
            else
            {
                reptemNewProduct.DataSource = DB.CarryOutSqlGeDataTable("SELECT TOP 9 * FROM [XcXm].[dbo].[tblProjectCreate] WHERE PciState = 30 order by PciTime");
                reptemNewProduct.DataBind();                
            }
        }
    }
}