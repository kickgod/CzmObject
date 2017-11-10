﻿using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.UserPage
{
    public partial class UserbecomeTypeHigh : System.Web.UI.Page
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
                MessageBoxResponse("You are not logged in, login timeout");
            }
            if (!IsPostBack)
            {
                BingData();
                AddUserData();
            }
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../UserPage/UserPageLogin.aspx';</script>");
        }
        private void BingData()
        {
            if (Session["User"] != null)
            {
                reptmMy.DataSource = DB.CarryOutSqlGeDataTable("SELECT * FROM tblProjectCreate WHERE UserId ='" + Session["User"].ToString() + "'");
                reptmMy.DataBind();
                Repeater1.DataSource = getTable.GetAllDataFromtblProjectInvestInfo("UserId ='" + Session["User"].ToString() + "'");
                Repeater1.DataBind();
                RpemUserInfor.DataSource = getTable.GetAllDataFromtblUserInfo("UserId ='" + Session["User"].ToString() + "'");
                RpemUserInfor.DataBind();
            }

        }
        protected void Repeater1_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "Delete")
                {
                    string sql = "DELETE FROM [XcXm].[dbo].[tblProjectInvestInfo] WHERE PiiID=" + e.CommandArgument;
                    DB.CarryOutSqlSentence(sql);
                    BingData();
                    MessaegBox("You have deleted it");
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }

        }
        protected void reptmMy_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Repeater rep = (Repeater)e.Item.FindControl("reptem");
            Button sda = (Button)e.Item.FindControl("btncanshu");
            rep.DataSource = DB.CarryOutSqlGeDataTable("SELECT * FROM vwInvestCondition WHERE InsertProjectName = '" + sda.CommandArgument + "'");
            rep.DataBind();
        }

        protected void reptmMy_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void btnChange_OnClick(object sender, EventArgs e)
        {
            try
            {
                if (Session["User"] != null)
                {
                    string UserId = Session["User"].ToString();
                    bool IsOK = Judge.JudgeUserTypeIs_Two(UserId);
                    if (IsOK)
                    {
                        MessaegBox("You are already a Senior member");
                        return;
                    }
                    if (!wuc_FileUpload1.IsHaveFile())
                    {
                        MessaegBox("Please select the first picture");
                        return;
                    }
                    if (!wuc_FileUpload2.IsHaveFile())
                    {
                        MessaegBox("Please select the second picture");
                        return;
                    }
                    if (txtId.Text == "")
                    {
                        MessaegBox("ID can not be empty");
                        return;
                    }
                    /*先上传*/
                    wuc_FileUpload1.UpFile();
                    string FirstPicture = wuc_FileUpload1.ServerDianPath.Replace("\'", "\'\'");
                    wuc_FileUpload2.UpFile();
                    string SeconfPicture = wuc_FileUpload2.ServerDianPath.Replace("\'", "\'\'");
                    string ID = txtId.Text.Replace("\'", "\'\'");
                    string Sql = "update [XcXm].[dbo].[tblUserInfo] set UserRemark ='14',UserCard ='" + ID + "',UserCardPicture_Address='" + FirstPicture + "',UserCardPicture2_Address ='" + SeconfPicture + "' where UserId ='" + UserId + "'";
                    int Reault = DB.CarryOutSqlSentence(Sql);
                    if (Reault == 1)
                    {
                        MessaegBox("Submitted successfully");
                    }
                    else
                    {
                        MessaegBox("System Error");
                    }                    
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }

        }
        private void AddUserData()
        {
            try
            {
                if (Session["User"] != null)
                {
                    DataTable td = getTable.GetAllDataFromtblUserInfo("UserId ='" + Session["User"].ToString() + "'");
                    if (td.Rows.Count == 1)
                    {
                        txtUserName.Text = td.Rows[0]["UserName_e"].ToString();
                        txtUserEmail.Text = td.Rows[0]["UserEmail"].ToString();
                        txtWeChat.Text = td.Rows[0]["UserWechat"].ToString();
                    }
                    ChangetxtEnableFalse();
                }
            }
            catch (Exception e)
            {
                MessaegBox(e.Message);
                throw;
            }

        }
        protected void btnChangeUserInfor_OnClick(object sender, EventArgs e)
        {
            try
            {
                if (Session["User"] != null)
                {
                    string UserId = Session["User"].ToString();
                    if (txtUserEmail.Text == "")
                    {
                        MessaegBox("Email can not be empty");
                        return;
                    }
                    if (txtUserName.Text == "")
                    {
                        MessaegBox("Your name can not be empty");
                        return;
                    }
                    if (txtWeChat.Text == "")
                    {
                        MessaegBox("WeChat can not be empty");
                        return;
                    }
                    string UserNmae = txtUserName.Text.Replace("\'", "\'\'");
                    string UserEmail = txtUserEmail.Text.Replace("\'", "\'\'");
                    string UserWechat = txtWeChat.Text.Replace("\'", "\'\'");

                    string Sql = "update [XcXm].[dbo].[tblUserInfo] set  UserName_e ='" + UserNmae + "',UserEmail='" +
                                 UserEmail + "',UserWechat ='" + UserWechat + "'  where UserId ='" + UserId + "'";
                    int Reault = DB.CarryOutSqlSentence(Sql);
                    if (Reault == 1)
                    {
                        MessaegBox("Submitted successfully");
                    }
                    else
                    {
                        MessaegBox("System Error");
                    }
                    AddUserData();
                    BingData();
                    ChangetxtEnableFalse();
                }
            }
            catch (Exception exception)
            {
                MessaegBox(exception.Message);
                throw;
            }

        }
        private void ChangetxtEnableFalse()
        {
            txtUserEmail.Enabled = false;
            txtUserName.Enabled = false;
            txtWeChat.Enabled = false;
        }
        private void ChangetxtEnableTrue()
        {
            txtUserEmail.Enabled = true;
            txtUserName.Enabled = true;
            txtWeChat.Enabled = true;
        }
        protected void btnEditUserInfor_OnClick(object sender, EventArgs e)
        {
            ChangetxtEnableTrue();
        }
    }
}