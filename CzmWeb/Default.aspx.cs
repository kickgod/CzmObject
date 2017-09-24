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
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*绑定首页*/
                GetDataFromTable td = new GetDataFromTable();
                DataTable tds = td.GetAllDataFromtblAdministrator();
                wuc_ListPager.PageSize = 10;
                wuc_ListPager.GetDateBind(tds);
                GridView1.DataSource = wuc_ListPager.BindOutData;
                GridView1.DataBind();
            }
        }
        protected void wuc_ListPager_OnBindList(object sender, EventArgs e)
        {
            wuc_ListPager.PageSize = 10;
            GetDataFromTable td = new GetDataFromTable();
            DataTable tds = td.GetAllDataFromtblAdministrator();  
            wuc_ListPager.BindData=tds;                
            GridView1.DataSource = wuc_ListPager.BindOutData;
            if (wuc_ListPager.BindOutData == null)
            {
                MessaegBox("HeiHei BindOutData is NULL");
            }
            GridView1.DataBind();
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
    }
}