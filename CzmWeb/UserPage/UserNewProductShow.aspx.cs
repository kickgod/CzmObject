﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;
using CzmWeb;
using CzmWeb.Common;

namespace CzmWeb.UserPage
{
    public partial class UserNewProductShow : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBindS();
            }
        }

        private void DataBindS()
        {
            //绑定新品八个/四个/六个
            DataTable tdNewProduct = new DataTable();
            tdNewProduct = DB.CarryOutSqlGeDataTable("SELECT TOP 12 * FROM [XcXm].[dbo].[tblProductInfo] WHERE [IsNew] =1 AND IsVisiable=0 and ProductType not in (select typeID from tblProductTypeInfo where TypeState !=30 )  order by ImgUplodetime desc ");
            reptemNewProduct.DataSource = tdNewProduct;
            reptemNewProduct.DataBind();
        }
    }
}