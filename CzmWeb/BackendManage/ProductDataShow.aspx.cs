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
    public partial class ProductDataShow : System.Web.UI.Page
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
                BindData();
                wucPager.Bind();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        private void BindData()
        {
            ddlShoosProductTypes.Items.Clear();
            ListItem item = new ListItem();
            item.Value = "-1";
            item.Text = "-- 不选 --";
            ddlShoosProductTypes.Items.Add(item);
            DataTable td = getTable.GetAllDataFromtblProductTypeInfo();
            if (td.Rows.Count > 0)
            {
                foreach (DataRow row in td.Rows)
                {
                    ListItem itemSItem = new ListItem();
                    itemSItem.Value = row["typeID"].ToString();
                    itemSItem.Text = row["typeName_c"].ToString();
                    ddlShoosProductTypes.Items.Add(itemSItem);
                }
            }
        }
        private void CheckSql()
        {
            string where = " ProductID >0";
            if (ddlShoosProductTypes.SelectedValue != "-1")
            {
                where += " and ProductType =" + ddlShoosProductTypes.SelectedValue;
            }
            if (ddlIiBaoyou.SelectedValue != "-1")
            {
                where += " and IsBY=" + ddlIiBaoyou.SelectedValue;
            }
            if (ddlLiRemai.SelectedValue != "-1")
            {
                where += " and IsRm =" + ddlLiRemai.SelectedValue;
            }
            if (ddlIsXiajia.SelectedValue != "-1")
            {
                where += " and IsVisiable=" + ddlIsXiajia.SelectedValue;
            }
            if (ddlISnew.SelectedValue != "-1")
            {
                where += " and IsNew=" + ddlISnew.SelectedValue;
            }
            if (txtPRoductName.Text != "")
            {
                where += "and ProductName_c like '%" + txtPRoductName.Text + "%' or ProductName_e like '%" + txtPRoductName.Text + "%'";
            }
            if (txtKeyMiaoshu.Text != "")
            {
                where += " and ProductDescription_c like '%" + txtKeyMiaoshu.Text + "%' or ProductDescription_e like '%" + txtKeyMiaoshu.Text + "%'";
            }
            if (txtProductKey.Text != "")
            {
                where += " and ProductKeyEng like '%" + txtProductKey.Text + "%' or ProductKey like '%" + txtProductKey.Text + "%'";
            }
            lblWhere.Text = where;
            wucPager.Bind();
        }
        protected void Button6_Click1(object sender, EventArgs e)
        {
            CheckSql();
        }
        protected void ddlShoosProductTypes_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            CheckSql();
        }
        protected void wucPager_OnBindList(object sender, EventArgs e)
        {
            //查询数据
            DataTable dt = getView.GetAllDataFrom_vwproductInfo(lblWhere.Text);
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

        }

        protected void rpItem_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}