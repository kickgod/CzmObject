using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmObject.Common;
using CzmWeb.App_Code;

namespace CzmWeb.BackendManage
{
    public partial class UserApplyCheck : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                /*绑定首页*/
                binds();
            }
        }

        private void binds()
        {
            if (lblWhere.Text!="")
            {
                DataTable tds = getView.GetAllDataFrom_vwUserInfo(lblWhere.Text);
                wuc_ListPager1.PageSize = 10;
                wuc_ListPager1.GetDateBind(tds);
                rpItem.DataSource = wuc_ListPager1.BindOutData;
                rpItem.DataBind();               
            }
            else
            {
                DataTable tds = getView.GetAllDataFrom_vwUserInfo(lblWhere.Text);
                wuc_ListPager1.PageSize = 10;
                wuc_ListPager1.GetDateBind(tds);
                rpItem.DataSource = wuc_ListPager1.BindOutData;
                rpItem.DataBind();                    
            }
        }
        /// <summary>
        /// 弹窗提醒
        /// </summary>
        /// <param name="msg"></param>
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string sql = " DELETE FROM [XcXm].[dbo].[tblUserInfo] WHERE UserId='" + e.CommandArgument + "'";
                int Result= DB.CarryOutSqlSentence(sql);
                if (Result == 1)
                {
                    MessaegBox("删除成功！");
                }
                else if (Result==0)
                {
                    MessaegBox("消息已经被其他管理员删除！");
                }
                else
                {
                    MessaegBox("系统故障！");
                }
            }
            if (e.CommandName == "Close")
            {
                string sql = " UPDATE [XcXm].[dbo].[tblUserInfo] SET UserState=-40 WHERE  UserId='"+e.CommandArgument+"'";
                int Result = DB.CarryOutSqlSentence(sql);
                if (Result == 1)
                {
                    MessaegBox("屏蔽成功！");
                }
                else if (Result == 0)
                {
                    MessaegBox("其他管理员已屏蔽！");
                }
                else
                {
                    MessaegBox("系统故障！");
                }
            }
            if (e.CommandName == "OK")
            {
                string sql = " UPDATE [XcXm].[dbo].[tblUserInfo] SET UserState=30 WHERE  UserId='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                SendMessage(e.CommandName, "已经");
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
                string sql = " UPDATE [XcXm].[dbo].[tblUserInfo] SET UserState=-30 WHERE  UserId='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                SendMessage(e.CommandName, "未能");
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
            if (e.CommandName == "Up")
            {
                string sql = " UPDATE [XcXm].[dbo].[tblUserInfo] SET UserType=2 WHERE  UserId='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                if (Result == 1)
                {
                    MessaegBox("升级成功！");
                }
                else if (Result == 0)
                {
                    MessaegBox("其他管理员已升级！");
                }
                else
                {
                    MessaegBox("系统故障！");
                }
            }
            if (e.CommandName == "Down")
            {
                string sql = " UPDATE [XcXm].[dbo].[tblUserInfo] SET UserType=1 WHERE  UserId='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                if (Result == 1)
                {
                    MessaegBox("降级成功！");
                }
                else if (Result == 0)
                {
                    MessaegBox("其他管理员已降级！");
                }
                else
                {
                    MessaegBox("系统故障！");
                }
            }
            wuc_ListPager1.Bind();
        }

        protected void rpItem_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        private void ProducteSqlWhere()
        {
            string sql = "UserType >0";
            if (ddlSex.SelectedValue != "-1")
            {
                sql += " and UserSex =" + ddlSex.SelectedValue;
            }
            if (ddlUserType.SelectedValue != "-1")
            {
                sql += "and UserType =" + ddlUserType.SelectedValue;
            }
            if (ddlState.SelectedValue != "-1")
            {
                sql += "and UserState =" + ddlState.SelectedValue;
            }
            if (txtPhone.Text != "")
            {
                sql += " and UserId='" + txtPhone.Text + "'";
            }
            if (txtName.Text != "")
            {
                sql += " and UserName_e ='" + txtName.Text + "'";
            }
            lblWhere.Text = sql;
            //binds();
        }
        protected void wuc_ListPager1_OnBindList(object sender, EventArgs e)
        {
            wuc_ListPager1.PageSize = 10;
            DataTable tds=new DataTable();
            if (lblWhere.Text != "")
            {
               tds = getView.GetAllDataFrom_vwUserInfo(lblWhere.Text);               
            }
            else
            {
                tds = getView.GetAllDataFrom_vwUserInfo();       
            }

            wuc_ListPager1.BindData = tds;
            rpItem.DataSource = wuc_ListPager1.BindOutData;
            if (wuc_ListPager1.BindOutData == null)
            {
                MessaegBox("HeiHei BindOutData is NULL");
            }
            rpItem.DataBind();
        }

        private void SendMessage(string msg,string state)
        {
            send.SendMessage(msg, "1.尊敬的用户！你的个人认证" + state + "通过！");
        }
        protected void ddlSex_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ProducteSqlWhere();
        }

        protected void ddlUserType_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ProducteSqlWhere();
        }

        protected void ddlState_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            ProducteSqlWhere();
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            ProducteSqlWhere();
        }
    }
}