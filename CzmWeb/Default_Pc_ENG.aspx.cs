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
    public partial class Default_Pc_ENG : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["User"] != null)
                {
                    HyPersonCenter.Visible = true;
                }
                DataBindD();
                Bind_zaishou();
                Bind_Yuju();
                Bind_XiXiewa();
                Bind_YiLiao();
                AddUrlLive();
            }
        }
        private void AddUrlLive()
        {
            DataTable td = getTable.GetAllDataFromtblLiveInfo();
            ReptmLive.DataSource = td;
            ReptmLive.DataBind();
        }
        private void DataBindD()
        {
            DataTable tdNewProduct = new DataTable();
            tdNewProduct = DB.CarryOutSqlGeDataTable("SELECT TOP 4 * FROM [XcXm].[dbo].[tblProductInfo] WHERE [IsNew] =1 AND IsVisiable=0 and ProductType not in(6,9) and ProductType not in (select typeID from tblProductTypeInfo where TypeState !=30 )  order by ImgUplodetime desc");
            reptemNewProduct.DataSource = tdNewProduct;
            reptemNewProduct.DataBind();
            Repeater1.DataSource = DB.CarryOutSqlGeDataTable("SELECT TOP 3 * FROM [XcXm].[dbo].[tblProjectCreate] WHERE PciState = 30 order by PciTime");
            Repeater1.DataBind();
            reptmInvset.DataSource = getView.GetAllDataFrom_vwUserInvsertProject("PiiState =30");
            reptmInvset.DataBind();
        }
        protected void Bind_zaishou()
        {
            DataTable tdNewProduct = new DataTable();
            tdNewProduct = DB.CarryOutSqlGeDataTable("SELECT TOP 3 * FROM [XcXm].[dbo].[tblProductInfo] WHERE [IsNew] =0  AND IsVisiable=0 and ProductType not in(6,9) order by ImgUplodetime desc  ");
            Repeater2.DataSource = tdNewProduct;
            Repeater2.DataBind();
        }
        protected void Bind_Yuju()
        {
            DataTable tdNewProduct = new DataTable();
            tdNewProduct = DB.CarryOutSqlGeDataTable("   SELECT TOP 3 * FROM [XcXm].[dbo].[tblProductInfo] WHERE  IsVisiable=0 and ProductType =3 order by ImgUplodetime desc  ");
            rptYuJu.DataSource = tdNewProduct;
            rptYuJu.DataBind();
        }
        protected void Bind_XiXiewa()
        {
            DataTable tdNewProduct = new DataTable();
            tdNewProduct = DB.CarryOutSqlGeDataTable("  SELECT TOP 3 * FROM [XcXm].[dbo].[tblProductInfo] WHERE   IsVisiable=0 and ProductType =6 order by ImgUplodetime desc ");
            ptmxixiewa.DataSource = tdNewProduct;
            ptmxixiewa.DataBind();
        }
        protected void Bind_YiLiao()
        {
            DataTable tdNewProduct = new DataTable();
            tdNewProduct = DB.CarryOutSqlGeDataTable("SELECT TOP 3 * FROM [XcXm].[dbo].[tblProductInfo] WHERE  IsVisiable=0 and ProductType =9 order by ImgUplodetime desc ");
            rpt_YiNiaoBaoJian.DataSource = tdNewProduct;
            rpt_YiNiaoBaoJian.DataBind();

            ptmyiniaobaojian.DataSource = tdNewProduct;
            ptmyiniaobaojian.DataBind();
        }
        protected void Repeater1_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Invest")
            {
                string queryName = e.CommandArgument.ToString();
                Response.Redirect("~/UserPage/UserInvestProjectCHN.aspx?projectName=" + queryName);
            }
            else if (e.CommandName == "Check")
            {
                string queryName = e.CommandArgument.ToString();
                Response.Redirect("~/UserPage/UserProjectShowCHN.aspx?ProjectNames=" + queryName);
            }
        }
    }
}