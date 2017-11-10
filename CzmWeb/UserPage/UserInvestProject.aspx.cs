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
    public partial class UserInvestProject : System.Web.UI.Page
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
                MessageBoxResponse("You are not logged in, login timeout");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["QueryName"] != "")
                {
                    txtTread.Text = Request.QueryString["QueryName"];
                }
                DataBind();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserPageLogin.aspx';</script>");
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
                ListItem item =new ListItem();
                item.Value = td.Rows[i]["ProvinceID"].ToString();
                item.Text = td.Rows[i]["ProvinceName_e"].ToString();
                ddlProvince.Items.Add(item);
            }
            ddlProvince.SelectedIndex = 0;
            string ProvinceID = ddlProvince.SelectedValue;
            DataTable tds = getTable.GetAllDataFromtblDowntownRegionList("ProvinceId =" + ProvinceID);
            for (int i = 0; i < tds.Rows.Count; i++)
            {
                ListItem item = new ListItem();
                item.Value = tds.Rows[i]["RegionID"].ToString();
                item.Text = tds.Rows[i]["RegionName_e"].ToString();
                ddlDataRegiom.Items.Add(item);
            }
        }
        protected void ddlProvince_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlDataRegiom.Items.Clear();
            string ProvinceID =ddlProvince.SelectedValue;
            DataTable td = getTable.GetAllDataFromtblDowntownRegionList("ProvinceId ="+ProvinceID);
            for (int i = 0; i < td.Rows.Count; i++)
            {
                ListItem item = new ListItem();
                item.Value = td.Rows[i]["RegionID"].ToString();
                item.Text = td.Rows[i]["RegionName_e"].ToString();
                ddlDataRegiom.Items.Add(item);
            }
        }

        private void ChangeNULL()
        {
            txtAmount.Text = "Please wait for acceptance! We'll notify you by sms.";
            txtAddress.Text = "Please wait for acceptance! We'll notify you by sms.";
            txtApplicant.Text = "Please wait for acceptance! We'll notify you by sms.";
            txtPhone.Text = "Please wait for acceptance! We'll notify you by sms.";
            txtTread.Text = "Please wait for acceptance! We'll notify you by sms.";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["User"]!=null)
                {
                    string UserIdPhone = Session["User"].ToString();
                    bool IsPingbi = Judge.JudgeUserPowerCountIs_30(UserIdPhone);
                    if (IsPingbi)
                    {
                        MessaegBox("You have been shielded! Temporarily unable to conduct business operations! Please contact the administrator! understand situation.");
                        return;
                    }
                    bool IsnormalUser = Judge.JudgeUserPowerCountIs30(UserIdPhone);
                    if (!IsnormalUser)
                    {
                        MessaegBox("You have no investment rights");
                        return;
                    }
                    bool IsCanTypeTwo = Judge.JudgeUserTypeIs_Two(UserIdPhone);
                    if (!IsCanTypeTwo)
                    {
                        MessaegBox("Diamond members have investment rights!");
                        return;
                    }
                    if (ddlDataRegiom.Items.Count <= 0)
                    {
                        MessaegBox("You have not selected a region yet");
                        return;
                    }
                    string ProjectName = txtTread.Text;
                    string Account = txtAmount.Text;
                    string UserID = "15685962321"; /*Session["User"].ToString();*/
                    string Province = ddlProvince.SelectedItem.Text;
                    Province = Province + " " + ddlDataRegiom.SelectedItem.Text;
                    string InsertDwName = txtAddress.Text;
                    string Phone = txtPhone.Text;
                    string Address = txtAddress.Text;
                    string sql = "INSERT INTO [XcXm].[dbo].[tblProjectInvestInfo]([InsertProjectName],[Account]," +
                                 "[UserId],[Province],[InsertDwName],[NewPhone],[NewAdress],[PiiState]) VALUES";
                    string sqlValue = "( '" + ProjectName + "','" + Account + "','" + UserID
                                      + "','" + Province + "','" + InsertDwName + "','" + Phone + "','" + Address + "',10)";
                    DB.CarryOutSqlSentence(sql + sqlValue);
                    ChangeNULL();
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }

        }
    }
}