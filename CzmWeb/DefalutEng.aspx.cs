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
    public partial class defalut : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        PublicUserJudge Judge =new PublicUserJudge();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataBindt();                
            }
        }

        private void DataBindt()
        {
            //绑定产品种类
            DataTable td= new DataTable();
            td = getTable.GetAllDataFromtblProductTypeInfo();
            reptem.DataSource = td;
            reptem.DataBind();
            //绑定新品八个/四个/六个
            DataTable tdNewProduct=new DataTable();
            tdNewProduct = DB.CarryOutSqlGeDataTable("SELECT TOP 8 * FROM [XcXm].[dbo].[tblProductInfo] WHERE [IsNew] =1 AND IsVisiable=0  order by ImgUplodetime desc");
            reptemNewProduct.DataSource = tdNewProduct;
           
            reptemNewProduct.DataBind();
        }
    }
}