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
            GetDataFromTable td =new GetDataFromTable();
            DataTable tds = td.GetAllDataFromtblAdministrator();
            PublicGetDataFromDB db =new GetDataFromTable();
            GetDataFromView view =new GetDataFromView();
            GridView1.DataSource = tds;
            GridView1.DataBind();
        }
        
    }
}