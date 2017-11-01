using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.BackendManage
{
    public partial class ProjectInformation : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["administator"] == null)
            {
                MessageBoxResponse("登录超时");
                return;
            }
            else
            {
                if (Request.Cookies["administator"] != null)
                {
                    Response.Cookies["administator"].Expires = DateTime.Now.AddHours(1);
                }
            }
            if (!IsPostBack)
            {
                if (Request.Cookies["ProjectName"] != null)
                {
                    BindDataOfProduct(Request.Cookies["ProjectName"].Value.ToString());
                }
                else
                {
                    MessaegBox("FUCK");
                }
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        private int MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
            return 1;
        }
        private int MessaegBoxConfrim(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.confirm('" + msg + "')</script>");
            return 1;
        }
        private void BindDataOfProduct(string PID)
        {
            DataTable td = getTable.GetAllDataFromtblProjectCreate("PciID =" + PID);
            txtProjectName.Text = td.Rows[0]["PciName_c"].ToString();
            txtZlH.Text = td.Rows[0]["PatentNumber"].ToString();
            txtAmount.Text = td.Rows[0]["PciInvestMeony"].ToString();
            txtBilieShuoming.Text = td.Rows[0]["stockRateIntroduction"].ToString();
            txtProjectIntroDuction.Text = td.Rows[0]["PciDescription_c"].ToString();
            txtApplyName.Text = td.Rows[0]["FzrName"].ToString();
            txtAdress.Text = td.Rows[0]["NewAdress"].ToString();
            txtPhone.Text = td.Rows[0]["NewPhone"].ToString();
            hylicture.NavigateUrl = td.Rows[0]["ImgPicturPath"].ToString();
            hylZs.NavigateUrl = td.Rows[0]["PciRemark"].ToString();
        }
    }
}