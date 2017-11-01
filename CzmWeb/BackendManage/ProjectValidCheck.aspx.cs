using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.BackendManage
{
    public partial class ProjectValidCheck : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                lblWhere.Text = "PciID > 0 order by PciState,ImgUploadtime Desc";
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
        private void SendMessage(string msg,string ProjectName, string state)
        {
            send.SendMessage(msg, "尊敬的用户！你申请的"+ProjectName +"创造项目已经审核完毕," +state + "通过审核！");
        }
        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string sql = " DELETE FROM [XcXm].[dbo].[tblProjectCreate] WHERE PciID='" + e.CommandArgument + "'";
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
                string sql = " UPDATE [XcXm].[dbo].[tblProjectCreate] SET PciState=30 WHERE  PciID='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                DataTable td = getTable.GetAllDataFromtblProjectCreate("PciID ="+e.CommandArgument);
                string ProjectName = td.Rows[0]["PciName_c"].ToString();
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
                string sql = " UPDATE [XcXm].[dbo].[tblProjectCreate] SET PciState=-30 WHERE  PciID='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                DataTable td = getTable.GetAllDataFromtblProjectCreate("PciID =" + e.CommandArgument);
                string ProjectName = td.Rows[0]["PciName_c"].ToString();
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
            if (e.CommandName == "Edit")
            {
                HttpCookie cokiecName = new HttpCookie("ProjectName");
                cokiecName.Value = e.CommandArgument.ToString();
                cokiecName.Expires = DateTime.Now.AddSeconds(15);
                Response.Cookies.Add(cokiecName);
                Response.Redirect("~/BackendManage/ProjectInformation.aspx");
            }
            wucPager.Bind();
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            string sqlString =  " PciID > 0";
            if (txtProjectShow.Text!="")
            {
                sqlString += " and  PciName_c like '%" + txtProjectShow.Text + "'% ";
            }
            if (txtKeyMiaoshu.Text!="")
            {
                sqlString += " and  PciDescription_c like '%" + txtKeyMiaoshu.Text + "'% ";                
            }
            if (txtProductKey.Text != "")
            {
                sqlString += " and  PciID = " + txtKeyMiaoshu.Text + " ";           
            }
            if (ddlState.SelectedItem.Value!="-1")
            {
                sqlString += " and PciState =" + ddlState.SelectedValue;
            }
            sqlString += "order by PciState,ImgUploadtime Desc";
            lblWhere.Text = sqlString;
            wucPager.Bind();
        }
        protected void wucPager_OnBindList(object sender, EventArgs e)
        {
            //查询数据
            DataTable dt = getTable.GetAllDataFromtblProjectCreate(lblWhere.Text);
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
            string sqlString = " PciID > 0";
            if (txtProjectShow.Text != "")
            {
                sqlString += " and  PciName_c like '%" + txtProjectShow.Text + "'% ";
            }
            if (txtKeyMiaoshu.Text != "")
            {
                sqlString += " and  PciDescription_c like '%" + txtKeyMiaoshu.Text + "'% ";
            }
            if (txtProductKey.Text != "")
            {
                sqlString += " and  PciID = " + txtKeyMiaoshu.Text + " ";
            }
            if (ddlState.SelectedItem.Value != "-1")
            {
                sqlString += " and PciState =" + ddlState.SelectedValue;
            }
            sqlString += "order by PciState,ImgUploadtime Desc";
            lblWhere.Text = sqlString;
            wucPager.Bind();
        }
    }
}