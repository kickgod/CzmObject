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
    public partial class UserSuggestionsList : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        PublicUserJudge Judge = new PublicUserJudge();
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
                wuc_PagerEng.Bind();
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
        protected void btnSave_Click(object sender, EventArgs e)
        {
            #region MyRegion
            /*
            //判断用户权限
            int Power;
            //String IdOfUser= Session["UserID"].ToString();
            //测试代码
            string IdOfUser = "13913662301";
            Power=Judge.GetUserPowerRightCount(IdOfUser);
            if (Power != 30)
            {
                if (Power == -30)
                {
                    MessaegBox("Your account has been blocked");
                    return;
                }
                else
                {
                    MessaegBox("Your account is invalid");
                    return;                   
                }
            }
             * */          
            #endregion
            string lblEmail="";
            string sql;
            if (txtboxPhone.Text == "") {
                MessaegBox("Please leave the contact information so that we can contact you");
                return;
            }
            if (txtMessageContent.Text == "")
            {
                MessaegBox("Please enter text");
                return;
            }
            if (txtEmailText.Text=="")
            {
                sql = "INSERT INTO [XcXm].[dbo].[tblAdviceInfo](Phone,userEmail,AdviceContent) values('" +txtboxPhone.Text + "',null,'" + txtMessageContent.Text + "')";
                DB.CarryOutSqlSentence(sql);
                MessaegBox("Success!");
            }
            else
            {
                sql = "INSERT INTO [XcXm].[dbo].[tblAdviceInfo](Phone,userEmail,AdviceContent) values('" + txtboxPhone.Text + "','"+txtEmailText.Text+"','" + txtMessageContent.Text + "')";
                DB.CarryOutSqlSentence(sql);
                MessaegBox("Success!");
            }
            wuc_PagerEng.Bind();
            ChangeItToNull();
        }

        private void ChangeItToNull()
        {
            txtEmailText.Text = "";
            txtMessageContent.Text = "";
            txtboxPhone.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                String TimeNianFirst = ThisFataFirst.Text;
                String TimeHourFirst = FirstPratTwo.Text;
                String TimeNianSecond = ThisFataSecond.Text;
                String TimeHourSecond = SecondPartTwo.Text;
                string TimeFirst="";
                string TimeSecond="";
                string SqlWhere = "AdviceID >0 ";
                if (TimeNianFirst != "")
                {
                    if (TimeHourFirst != "")
                    {
                        TimeFirst = TimeNianFirst + " " + TimeHourFirst;
                    }
                    else
                    {
                        TimeFirst = TimeNianFirst;
                    }
                    DateTime dt = Convert.ToDateTime(TimeFirst);
                    SqlWhere += " and LeaveTime >= '" + dt.ToString() + "'";

                }
                if (TimeNianSecond != "")
                {
                    if (TimeHourSecond != "")
                    {
                        TimeSecond = TimeNianSecond + " " + TimeHourSecond;
                    }
                    else
                    {
                        TimeSecond = TimeNianSecond;
                    }
                    DateTime dt = Convert.ToDateTime(TimeSecond);
                    SqlWhere += " and LeaveTime <= '" + dt.ToString() + "'";
                }
                if (txtPhone.Text != "")
                {
                    SqlWhere += " and  Phone ='"+txtPhone.Text+"'";
                }
                lblWhere.Text = SqlWhere;
                //Response.Write(lblWhere.Text);
                wuc_PagerEng.Bind();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }
        }

        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string sql = "DELETE FROM [XcXm].[dbo].[tblAdviceInfo] WHERE AdviceID =" + e.CommandArgument + "";
                DB.CarryOutSqlSentence(sql);
                MessaegBox("成功删除");
                wuc_PagerEng.Bind();              
            }
        }

        protected void rpItem_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
        protected void wuc_PagerEng_OnBindList(object sender, EventArgs e)
        {
            //查询数据
            DataTable dt = getTable.GetAllDataFromtblAdviceInfo(lblWhere.Text);
            int totalCount = 0;
            if (dt != null)
            {
                totalCount = dt.Rows.Count;
                //获取分页信息
                wuc_PagerEng.LoadData(totalCount);
                //绑定数据
                DoEasyClassLib.WebForm.RepeaterHelper.DataBind(dt, rpItem, wuc_PagerEng.CurPageCount - 1,
                    wuc_PagerEng.PageSize);
            } 
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string sql = "DELETE FROM [XcXm].[dbo].[tblAdviceInfo]";
            DB.CarryOutSqlSentence(sql);
            MessaegBox("成功删除");
            wuc_PagerEng.Bind();
        }
    }
}