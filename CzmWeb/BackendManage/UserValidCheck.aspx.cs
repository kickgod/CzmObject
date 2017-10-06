using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.SessionState;
using System.Web.ClientServices;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.BackendManage
{
    public partial class UserValidCheck : System.Web.UI.Page, IHttpHandler, IRequiresSessionState 
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["administator"] == null)
                {
                    MessaegBox("非法登录");
                    Server.Transfer("../Default.aspx");  
                }
                else
                {
                    ViewState["AdminId"]= Request.Cookies["administator"]["ID"];
                    ViewState["AdminIPwd"] = Request.Cookies["administator"]["Pswd"];
                }
                /*bind数据*/
                DataTable td= DataBindNow();
                ddlAdmin.DataSource = td;
                ddlAdmin.DataTextField = "AdminId";
                ddlAdmin.DataValueField = "Phone";
                ddlAdmin.DataBind();
                ListItem item=new ListItem();
                item.Text = "-- 不选 --";
                item.Value = "-1";
                ddlAdmin.Items.Add(item);
            }
        }
        private DataTable DataBindNow()
        {
            DataTable td= new DataTable();
            /*查询账号级别*/
            string Sql = "SELECT state FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + ViewState["AdminId"].ToString() + "'";
            int Jibie = Convert.ToInt32(DB.CarryOutSqlGetFirstColmun(Sql));
            ViewState["Grade"] = Jibie;
            if (Jibie == 30)
            {
                td = getTable.GetAllDataFromtblAdministrator("AdminId='" + ViewState["AdminId"].ToString() + "'");
            }
            else if (Jibie == 100)
            {
                td = getTable.GetAllDataFromtblAdministrator();
            }
            return td;
        }
        private bool CheckIsHave(string ID ,string pwd)
        {
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + ID + "'";
            string SqlUser = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + ID + "' And Pwd='" + pwd + "'";
            string Count = DB.CarryOutSqlGetFirstColmun(Sql);
            if (Count != "1")
            {
                return false;
            }
            Count = DB.CarryOutSqlGetFirstColmun(SqlUser);
            if (Count != "1")
            {
                return false;
            }
            return true;
        }
        private int MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
            return 1;
        }
        private int MessaegBoxConfrim(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.confirm('" + msg + "')</script>");
            return 1;
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

        private void ChangeNull()
        {
            txtName.Text = "";
            txtAdminID.Text = "";
            txtAdminPwd.Text = "";
            txtPhone.Text = "";
        }
        protected void ddlAdmin_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            if (ddlAdmin.SelectedItem.Text == "-1")
            {
                ChangeNull();
                return;
            }
            lblxiugai.Text = "10";
            String Id = ddlAdmin.SelectedItem.Text;
            lblIDLast.Text = Id;
            DataTable td = getTable.GetAllDataFromtblAdministrator("AdminId='" + Id + "'");
            MessaegBox(td.Rows.Count.ToString());
            if (td.Rows.Count == 1)
            {
                string Name = td.Rows[0]["AdminName"].ToString();
                txtName.Text = Name;
                txtPhone.Text = td.Rows[0]["Phone"].ToString();
                txtAdminID.Text = td.Rows[0]["AdminId"].ToString();
                txtAdminPwd.Text = td.Rows[0]["Pwd"].ToString();
                lbladdTime.Text = td.Rows[0]["GetDate"].ToString();
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "")
            {
                lblxiugai.Text = "10";
                txtName.Enabled = true;
                txtAdminID.Enabled = true;
                txtAdminPwd.Enabled = true;
                txtPhone.Enabled = true;   
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblxiugai.Text = "30";
            txtName.Text = "";
            txtPhone.Text = "";
            txtAdminID.Text = "";
            txtAdminPwd.Text = "";
            lbladdTime.Text = DateTime.Now.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtName.Enabled == true)
            {
                bool IsModitify;
                if (lblxiugai.Text=="30")
                {
                    IsModitify = false;
                }
                else
                {
                    IsModitify = true;
                }
                if (txtName.Text == "")
                {
                    MessaegBox("请填写姓名");
                    return;
                }
                if (txtPhone.Text == "")
                {
                    MessaegBox("请填写电话号码！");
                    return;
                }
                if (txtAdminPwd.Text == "")
                {
                    MessaegBox("请填写密码");
                    return;
                }
                if (txtAdminID.Text == "")
                {
                    MessaegBox("请填写一个ID");
                    return;
                }
                if (IsModitify)
                {
                    string sql = "  UPDATE [XcXm].[dbo].[tblAdministrator] SET AdminId ='"+txtAdminID+"' ,Pwd='"+txtAdminPwd+"' ,Phone='"+txtPhone+"',AdminName='"+txtName+"'WHERE AdminId='"+lblIDLast.Text+"'";
                    DB.CarryOutSqlSentence(sql);
                }
                else
                {
                    
                }

            }
            else
            {
                MessaegBox("尚未选择！");
            }
        }
    }
}