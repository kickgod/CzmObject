using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;
using CzmWeb;
namespace CzmWeb.BackendManage
{
    public partial class ProductTypeAdd : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["administator"] == null)
            {
                MessaegBox("非法登录");
                Server.Transfer("../Default.aspx");
            }
            if (!IsPostBack)
            {
                BindData();
                wucPager.Bind();
            }
        }
        private int MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
            return 1;
        }
        private int MessaegBoxConfrim(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "confirm", "<script>window.confirm('" + msg + "')</script>");
            return 1;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            lblID.Text = "自动编号";
            ChengNull();
            ChengEnableTrue();
        }

        protected void btnEdit_OnClick(object sender, EventArgs e)
        {
            ChengEnableTrue();
        }

        protected void btnSave_OnClick(object sender, EventArgs e)
        {
            if (txtTypeNameEng.Enabled == false)
            {
                MessaegBoxConfrim("请选择编辑！");
                return;
            }
            bool IsModitify;
            if (lblID.Text != "自动编号")
            {
                IsModitify = true;
            }
            else
            {
                IsModitify = false;
            }
            if (txtTypeNameChe.Text == "")
            {
                MessaegBoxConfrim("请填写中文名称！");
                return;
            }
            if (txtTypeNameEng.Text == "")
            {
                MessaegBoxConfrim("请填写英文名称！");
                return;
            }
            string ChineseseName = txtTypeNameChe.Text;
            string EnglishName = txtTypeNameEng.Text;
            if (IsModitify)
            {
                string sqlUpdate = "UPDATE [XcXm].[dbo].[tblProductTypeInfo] SET typeName_c ='" + ChineseseName + "' ,typeName_e='" + EnglishName + "' WHERE typeID=" + ddlCheckType.SelectedValue;
                DB.CarryOutSqlSentence(sqlUpdate);
                MessaegBox("修改完成");
            }
            else
            {
                string sqlInsert = "INSERT INTO [XcXm].[dbo].[tblProductTypeInfo](typeName_c,typeName_e,TypeState,TypeIsVisiable) VALUES('" + ChineseseName + "','" + EnglishName + "',30,1) ";
                DB.CarryOutSqlSentence(sqlInsert);
                MessaegBox("添加完成");
            }
            BindData();
        }
        private void BindData()
        {
            ddlCheckType.Items.Clear();
            ListItem item = new ListItem();
            item.Value = "-1";
            item.Text = "-- 不选 --";
            ddlCheckType.Items.Add(item);
            DataTable td = getTable.GetAllDataFromtblProductTypeInfo();
            if (td.Rows.Count > 0)
            {
                foreach (DataRow row in td.Rows)
                {
                    ListItem itemSItem = new ListItem();
                    itemSItem.Value = row["typeID"].ToString();
                    itemSItem.Text = row["typeName_c"].ToString();
                    ddlCheckType.Items.Add(itemSItem);
                }
            }
        }
        private void ChengNull()
        {
            ddlCheckType.SelectedValue = "-1";
            txtTypeNameChe.Text = "";
            txtTypeNameEng.Text = "";
        }
        private void ChengEnableFalse()
        {
            txtTypeNameChe.Enabled = false;
            txtTypeNameEng.Enabled = false;
        }
        private void ChengEnableTrue()
        {
            txtTypeNameChe.Enabled = true;
            txtTypeNameEng.Enabled = true;
        }
        protected void ddlCheckType_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCheckType.SelectedValue == "-1")
            {
                ChengEnableTrue();
                ChengNull();
            }
            else
            {
                DataTable td = getTable.GetAllDataFromtblProductTypeInfo("typeID =" + ddlCheckType.SelectedValue);
                if (td.Rows.Count == 1)
                {
                    txtTypeNameChe.Text = td.Rows[0]["typeName_c"].ToString();
                    txtTypeNameEng.Text = td.Rows[0]["typeName_e"].ToString();
                    ChengEnableFalse();
                    lblID.Text = td.Rows[0]["typeID"].ToString();
                }
            }
        }

        protected void wucPager_OnBindList(object sender, EventArgs e)
        {
            //查询数据

            DataTable dt = getTable.GetAllDataFromtblProductTypeInfo();
            int totalCount = 0;
            if (dt != null)
            {
                totalCount = dt.Rows.Count;
                //获取分页信息
                wucPager.LoadData(totalCount);

                //绑定数据
                DoEasyClassLib.WebForm.RepeaterHelper.DataBind(dt, rpItem, wucPager.CurPageCount - 1,
                    wucPager.PageSize);
            }
        }

        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string sql = "DELETE FROM [XcXm].[dbo].[tblProductTypeInfo] WHERE typeID =" + e.CommandArgument;
                DB.CarryOutSqlSentence(sql);
                MessaegBox("成功删除");
            }
            BindData();
        }

        protected void rpItem_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}