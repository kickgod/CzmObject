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
using CzmObject.Common;
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
                binds();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        private void binds()
        {
            GetDataFromTable tsd = new GetDataFromTable();
            DataTable tds = tsd.GetAllDataFromtblAdministrator();
            rpItem.DataSource = tds;
            rpItem.DataBind();
        }
        private void BinddataTable()
        {
            DataTable td = getTable.GetAllDataFromtblAdministrator();
            rpItem.DataSource = td;
            rpItem.DataBind();
        }
        private DataTable DataBindNow()
        {
            DataTable td= new DataTable();
            /*查询账号级别*/
            string Sql = "SELECT state FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + Response.Cookies["administator"].ToString() + "'";
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

        private bool IDIsHave(string IsD)
        {
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + IsD + "'";
            string Count = DB.CarryOutSqlGetFirstColmun(Sql);
            if (Count == "1")
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        private bool IDIsHaves(string IsDs)
        {
            string Sql = "SELECT COUNT(*) FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId='" + IsDs + "'";
            string Count = DB.CarryOutSqlGetFirstColmun(Sql);
            if (Count == "2")
            {
                return true;
            }
            else
            {
                return false;
            }
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
            DataTable td = getTable.GetAllDataFromtblAdministrator("AdminId= '" + Id + "'");
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
            if (ViewState["Grade"].ToString() == "100")
            {
                lblxiugai.Text = "30";
                txtName.Enabled = true;
                txtAdminID.Enabled = true;
                txtAdminPwd.Enabled = true;
                txtPhone.Enabled = true;
                txtName.Text = "";
                txtPhone.Text = "";
                txtAdminID.Text = "";
                txtAdminPwd.Text = "";
                lbladdTime.Text = DateTime.Now.ToString();              
            }
            else
            {
                MessaegBox("你的权限不够");
            }

        }

        private void Close()
        {
            txtName.Enabled = false;
            txtAdminID.Enabled = false;
            txtAdminPwd.Enabled = false;
            txtPhone.Enabled = false;              
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
                    if (IDIsHaves(txtAdminID.Text))
                    {
                        MessaegBox("改后ID已存在重复");
                        return;
                    }
                    string sql = "  UPDATE [XcXm].[dbo].[tblAdministrator] SET AdminId ='"+txtAdminID+"' ,Pwd='"+txtAdminPwd+"' ,Phone='"+txtPhone+"',AdminName='"+txtName+"'WHERE AdminId='"+lblIDLast.Text+"'";
                    DB.CarryOutSqlSentence(sql);
                    MessaegBox("修改完毕");
                    MessaegBoxs();
                    lblxiugai.Text = "10";
                    lblIDLast.Text = "";
                }
                else
                {
                    if (IDIsHave(txtAdminID.Text))
                    {
                        MessaegBox("账号已经存在");
                        return;
                    }
                    string sqlstring = "INSERT INTO [XcXm].[dbo].[tblAdministrator](AdminId,Pwd,AdminName,Phone,state) VALUES('" + txtAdminID + "','" + txtAdminPwd + "','"+txtName+"','"+txtPhone+"',30)";
                    DB.CarryOutSqlSentence(sqlstring);
                    MessaegBox("添加完毕");
                    lblxiugai.Text = "10";
                    lblIDLast.Text = "";
                }
            }
            else
            {
                MessaegBox("尚未选择编辑！");
            }
            binds();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtName.Enabled == true)
            {
                bool IsModitify;
                if (lblxiugai.Text == "30")
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
                    string sql = "  UPDATE [XcXm].[dbo].[tblAdministrator] SET AdminId ='" + txtAdminID.Text + "' ,Pwd='" + txtAdminPwd.Text + "' ,Phone='" + txtPhone.Text + "',AdminName='" + txtName.Text + "'WHERE AdminId='" + lblIDLast.Text + "'";
                    DB.CarryOutSqlSentence(sql);
                    MessaegBox("修改完毕");
                    MessaegBoxs();
                    lblxiugai.Text = "10";
                    lblIDLast.Text = "";
                    Close();
                }
                else
                {
                    string sqlstring = "INSERT INTO [XcXm].[dbo].[tblAdministrator](AdminId,Pwd,AdminName,Phone,state) VALUES('" + txtAdminID.Text + "','" + txtAdminPwd.Text + "','" + txtName.Text + "','" + txtPhone.Text + "',30)";
                    DB.CarryOutSqlSentence(sqlstring);
                    MessaegBox("添加完毕");
                    lblxiugai.Text = "10";
                    lblIDLast.Text = "";
                    Close();
                }
            }
            else
            {
                MessaegBox("尚未选择！");
            }
            binds();
        }
        private int MessaegBoxs()
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.parent.frames.location.href = '../Default.aspx"+"';</script>");
            return 1;
        }
        protected void rpItem_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (ViewState["Grade"].ToString() == "100")
            {
                if (e.CommandName == "Delete")
                {
                    string sql = "DELETE FROM [XcXm].[dbo].[tblAdministrator] WHERE AdminId ='" + e.CommandArgument + "'";
                    DB.CarryOutSqlSentence(sql);
                    MessaegBox("成功删除");
                    binds();
                }               
            }
            else
            {
                MessaegBox("你的权限等级不够");
            }
        }

    }
}