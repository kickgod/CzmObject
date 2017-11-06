using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.UserPage
{
    public partial class UserConmunicationApaceCHN : System.Web.UI.Page
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
                MessageBoxResponse("尚未登录！或登录超时！");
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserPageLoginCHN.aspx';</script>");
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        private void ChangeItToNull()
        {
            txtEmailText.Text = "";
            txtMessageContent.Text = "";
            txtboxPhone.Text = "";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string UserIdPhone = Session["User"].ToString();
            bool IsPingbi = Judge.JudgeUserPowerCountIs_30(UserIdPhone);
            if (IsPingbi)
            {
                MessaegBox("你已经被屏蔽！暂时无法进行业务操作！请及时联系管理员！了解情况.");
                return ;
            }
            string lblEmail = "";
            string sql;
            if (txtboxPhone.Text == "")
            {
                MessaegBox("请填写你的电话联系方式");
                return;
            }
            if (txtMessageContent.Text == "")
            {
                MessaegBox("请输入文本");
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
                MessaegBox("留言成功!");
            }
            ChangeItToNull();
        }
    }
}