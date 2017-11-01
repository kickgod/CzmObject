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
    public partial class InvestProjectList : System.Web.UI.Page
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
                lblWhere.Text = "PiiID > 0 order by PiiState,InvestTime Desc";
                wucPager.Bind();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        private void SendMessage(string msg, string ProjectName, string state)
        {
            send.SendMessage(msg, "尊敬的用户！你申请的" + ProjectName + "投资项目已经审核完毕," + state + "通过审核！");
        }
        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string sql = " DELETE FROM [XcXm].[dbo].[tblProjectInvestInfo] WHERE PiiID='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                if (Result == 1)
                {
                    MessaegBox("删除成功！");
                }
                else if (Result == 0)
                {
                    MessaegBox("信息已经被其他管理员删除！");
                }
                else
                {
                    MessaegBox("系统故障！");
                }
            }
            if (e.CommandName == "OK")
            {
                string sql = " UPDATE [XcXm].[dbo].[tblProjectInvestInfo] SET PiiState=30 WHERE  PiiID='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                DataTable td = getTable.GetAllDataFromtblProjectInvestInfo("PiiID =" + e.CommandArgument);
                string ProjectName = td.Rows[0]["InsertProjectName"].ToString();
                string UserId = td.Rows[0]["UserId"].ToString();
                SendMessage(UserId, ProjectName, "已经");
                if (Result == 1)
                {
                    MessaegBox("审核成功！");
                }
                else if (Result == 0)
                {
                    MessaegBox("其他管理员已审核！");
                }
                else
                {
                    MessaegBox("系统故障！");
                }
            }
            if (e.CommandName == "NotOK")
            {
                string sql = " UPDATE [XcXm].[dbo].[tblProjectInvestInfo] SET PiiState=-30 WHERE  PiiID='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                DataTable td = getTable.GetAllDataFromtblProjectInvestInfo("PiiID =" + e.CommandArgument);
                string ProjectName = td.Rows[0]["InsertProjectName"].ToString();
                string UserId = td.Rows[0]["UserId"].ToString();
                SendMessage(UserId, ProjectName, "未能");
                if (Result == 1)
                {
                    MessaegBox("审核成功！");
                }
                else if (Result == 0)
                {
                    MessaegBox("其他管理员已审核！");
                }
                else
                {
                    MessaegBox("系统故障！");
                }
            }
            wucPager.Bind();
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            string sqlString = " PiiID > 0";
            if (txtProjectShow.Text != "")
            {
                sqlString += " and  InsertProjectName like '%" + txtProjectShow.Text + "'% ";
            }
            if (txtUserId.Text != "")
            {
                sqlString += " and  PiiID = " + txtUserId.Text + " ";
            }
            if (ddlState.SelectedItem.Value != "-1")
            {
                sqlString += " and PiiState =" + ddlState.SelectedValue;
            }
            sqlString += "order by PiiState,InvestTime Desc";
            lblWhere.Text = sqlString;
            wucPager.Bind();
        }
        protected void wucPager_OnBindList(object sender, EventArgs e)
        {
            //查询数据
            DataTable dt = getTable.GetAllDataFromtblProjectInvestInfo(lblWhere.Text);
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

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sqlString = " PiiID > 0";
            if (txtProjectShow.Text != "")
            {
                sqlString += " and  InsertProjectName like '%" + txtProjectShow.Text + "'% ";
            }
            if (txtUserId.Text != "")
            {
                sqlString += " and  PiiID = " + txtUserId.Text + " ";
            }
            if (ddlState.SelectedItem.Value != "-1")
            {
                sqlString += " and PiiState =" + ddlState.SelectedValue;
            }
            sqlString += "order by PiiState,InvestTime Desc";
            lblWhere.Text = sqlString;
            wucPager.Bind();
        }
    }
}