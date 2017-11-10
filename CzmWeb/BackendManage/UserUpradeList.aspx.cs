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
    public partial class UserUpradeList : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        PublicUserJudge Judge =new PublicUserJudge();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["administator"] == null)
            {
                MessageBoxResponse("登录超时");
                return;
            }
            if (!IsPostBack)
            {
                /*绑定首页*/
                lblWhere.Text = "UserType >0 AND [UserRemark] =14  AND [UserState] =30  AND [UserType] =1";
                wucPager1.Bind();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        /// <summary>
        /// 弹窗提醒
        /// </summary>
        /// <param name="msg"></param>
        /// 
        ///<asp:Button ID="Button5" runat="server" Text="通过" CssClass="Save"  Visible='<%# Eval("UserState").ToString()=="10" %>' CommandArgument='<%#Eval("UserId")%>' CommandName="OK" />
        ///<asp:Button ID="Button8" runat="server" Text="不通过"  CssClass="Save"  Visible='<%# Eval("UserState").ToString()=="10" %>'  CommandArgument='<%#Eval("UserId")%>' CommandName="NotOK"/>
        ///<asp:Button ID="Button2" runat="server" Text="屏蔽"  CssClass="Save"  Visible='<%# Eval("UserState").ToString()=="30" %>'  CommandArgument='<%#Eval("UserId")%>' CommandName="Close"/>
        /// 
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string sql = " DELETE FROM [XcXm].[dbo].[tblUserInfo] WHERE UserId='" + e.CommandArgument + "'";
                string sqlProject = "DELETE FROM [XcXm].[dbo].[tblProjectCreate] WHERE UserId ='" + e.CommandArgument + "'";
                string sqlInvest = "  DELETE FROM  [XcXm].[dbo].[tblProjectInvestInfo] WHERE UserId ='" + e.CommandArgument + "'";
                DB.CarryOutSqlSentence(sqlInvest);
                DB.CarryOutSqlSentence(sqlProject);
                int Result = DB.CarryOutSqlSentence(sql);
                if (Result == 1)
                {
                    MessaegBox("删除成功！");
                }
                else if (Result == 0)
                {
                    MessaegBox("消息已经被其他管理员删除！");
                }
                else
                {
                    MessaegBox("系统故障！");
                }
            }
            if (e.CommandName == "Up")
            {
                string sql = " UPDATE [XcXm].[dbo].[tblUserInfo] SET UserType=2,UserRemark ='10' WHERE  UserId='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                if (Result == 1)
                {
                    MessaegBox("升级成功！审核完成");
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
                string sql = " UPDATE [XcXm].[dbo].[tblUserInfo] SET UserType=1 ,UserRemark ='-10' WHERE  UserId='" + e.CommandArgument + "'";
                int Result = DB.CarryOutSqlSentence(sql);
                if (Result == 1)
                {
                    MessaegBox("不通过！审核完毕");
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
        }

        protected void rpItem_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        private void ProducteSqlWhere()
        {
            string sql = "UserType >0 AND [UserRemark] =14  AND [UserState] =30  AND [UserType] =1";
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
            wucPager1.Bind();
        }

        private void SendMessage(string msg, string state)
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

        protected void wucPager_OnBindList(object sender, EventArgs e)
        {
            //查询数据

            DataTable dt = getView.GetAllDataFrom_vwUserInfo(lblWhere.Text);
            int totalCount = 0;
            if (dt != null)
            {
                totalCount = dt.Rows.Count;
                //获取分页信息
                wucPager1.LoadData(totalCount);

                //绑定数据
                DoEasyClassLib.WebForm.RepeaterHelper.DataBind(dt, rpItem, wucPager1.CurPageCount - 1,
                    wucPager1.PageSize);
            }
        }
    }
}