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
    public partial class UserInvestProjectCHN : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        PublicUserJudge Judge = new PublicUserJudge();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                MessageBoxResponses("你尚未登录或登录超时！");
                return;
            }
            if (!IsPostBack)
            {
                DataBind();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserInvestProject.aspx';</script>");
        }
        private void MessageBoxResponses(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserPageLoginCHN.aspx';</script>");
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
        private void DataBind()
        {
            /*省级单位*/
            ddlProvince.Items.Clear();
            DataTable td = getTable.GetAllDataFromtblProvinceRegionList();
            for (int i = 0; i < td.Rows.Count; i++)
            {
                ListItem item = new ListItem();
                item.Value = td.Rows[i]["ProvinceID"].ToString();
                item.Text = td.Rows[i]["ProvinceName_c"].ToString();
                ddlProvince.Items.Add(item);
            }
        }
        protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDataRegiom.Items.Clear();
            string ProvinceID = ddlProvince.SelectedValue;
            DataTable td = getTable.GetAllDataFromtblDowntownRegionList("ProvinceId =" + ProvinceID);
            for (int i = 0; i < td.Rows.Count; i++)
            {
                ListItem item = new ListItem();
                item.Value = td.Rows[i]["RegionID"].ToString();
                item.Text = td.Rows[i]["RegionName_c"].ToString();
                ddlDataRegiom.Items.Add(item);
            }
        }

        private void ChangeNULL()
        {
            txtAmount.Text = "已结受理.请等待我们的短信通知！";
            txtAddress.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtApplicant.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtPhone.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtTread.Text = "成功！请等待审核! 我们将以短信的方式通知你";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string UserIdPhone = Session["User"].ToString();
            bool IsPingbi = Judge.JudgeUserPowerCountIs_30(UserIdPhone);
            if (IsPingbi)
            {
                MessaegBox("你已经被屏蔽！暂时无法进行业务操作！请及时联系管理员！了解情况.");
                return ;
            }
            if (ddlDataRegiom.Items.Count <= 0)
            {
                MessaegBox("你尚未选择地区！");
                return;
            }
            string ProjectName = txtTread.Text;
            string Account = txtAmount.Text;
            string UserID = "15685962321"; /*Session["User"].ToString();*/
            string Province = ddlProvince.SelectedItem.Text;
            Province =Province+" "+ ddlDataRegiom.SelectedItem.Text;
            string InsertDwName = txtAddress.Text;
            string Phone = txtPhone.Text;
            string Address = txtAddress.Text;
            string sql = "INSERT INTO [XcXm].[dbo].[tblProjectInvestInfo]([InsertProjectName],[Account]," +
                         "[UserId],[Province],[InsertDwName],[NewPhone],[NewAdress],[PiiState]) VALUES";
            string sqlValue = "( '" + ProjectName + "','" + Account + "','" + UserID
                              + "','" + Province + "','" + InsertDwName + "','" + Phone + "','" + Address + "',10)";
            int Count= DB.CarryOutSqlSentence(sql + sqlValue);
            if (Count == 1)
            {
                ChangeNULL();
                MessaegBox("成功！请等待审核! 我们将以短信的方式通知你");
            }
            else
            {
                MessaegBox("系统错误！");
            }
            

        }
    }
}