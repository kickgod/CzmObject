using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;
using CzmWeb.Common;

namespace CzmWeb.UserPage
{
    public partial class UserConmunicationApace : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        PublicUserJudge Judge = new PublicUserJudge();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserPageLogin.aspx';</script>");
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "confirm", "<script>window.confirm('" + msg + "')</script>");
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
        private void ChangeItToNull()
        {
            txtEmailText.Text = "";
            txtMessageContent.Text = "";
            txtboxPhone.Text = "";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            bool IsUses = Judge.JudgeUserPowerCountIs30(Session["User"].ToString());
            if (!IsUses)
            { 
                // MessaegBox("无法留言!暂无留言权限！你未通过审核或者已被后台屏蔽");
                MessaegBox("Can not leave a message, no message permission, you have not passed the audit or has been shielded by the background"); 
                return;
            }
            string lblEmail = "";
            string sql;
            if (txtboxPhone.Text == "")
            {
                MessaegBox("Please leave the contact information so that we can contact you");
                return;
            }
            if (txtMessageContent.Text == "")
            {
                MessaegBox("Please enter text");
                return;
            }
            if (txtEmailText.Text == "")
            {
                sql = "INSERT INTO [XcXm].[dbo].[tblAdviceInfo](Phone,userEmail,AdviceContent) values('" + txtboxPhone.Text + "',null,'" + txtMessageContent.Text + "')";
                DB.CarryOutSqlSentence(sql);
                MessaegBox("Success!");
            }
            else
            {
                sql = "INSERT INTO [XcXm].[dbo].[tblAdviceInfo](Phone,userEmail,AdviceContent) values('" + txtboxPhone.Text + "','" + txtEmailText.Text + "','" + txtMessageContent.Text + "')";
                DB.CarryOutSqlSentence(sql);
                MessaegBox("Success!");
            }
            ChangeItToNull();
        }
    }
}