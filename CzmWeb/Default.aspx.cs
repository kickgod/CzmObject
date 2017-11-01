﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb
{
    public partial class Default : System.Web.UI.Page
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
                DataBind();
            }
        }

        private void DataBind()
        {
            //绑定产品种类
            DataTable td = new DataTable();
            td = getTable.GetAllDataFromtblProductTypeInfo();
            reptem.DataSource = td;
            reptem.DataBind();
            //绑定新品八个/四个/六个
            DataTable tdNewProduct = new DataTable();
            tdNewProduct = DB.CarryOutSqlGeDataTable("SELECT TOP 8 * FROM [XcXm].[dbo].[tblProductInfo] WHERE [IsNew] =1 AND IsVisiable=0  order by ImgUplodetime desc");
            reptemNewProduct.DataSource = tdNewProduct;
            reptemNewProduct.DataBind();
            reptmInvset.DataSource = getView.GetAllDataFrom_vwUserInvsertProject("PiiState =30");
            reptmInvset.DataBind();
            reptmProject.DataSource = getView.GetAllDataFrom_vwCreateProjrctItem();
            reptmProject.DataBind();
            Repeater1.DataSource = DB.CarryOutSqlGeDataTable("SELECT TOP 4 * FROM [XcXm].[dbo].[tblProjectCreate] WHERE PciState = 30 order by PciTime");
            Repeater1.DataBind();
        }

        protected void Repeater1_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
                if (e.CommandName == "Invest")
                {
                    string QueryName = e.CommandArgument.ToString();
                    Response.Redirect("~/UserPage/UserInvestProject.aspx?QueryName=" + QueryName);
                }
           
        }
    }
}