using System;
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

            if (!IsPostBack)
            {
                if (Session["User"] == null)
                {
                    MessageBoxResponse("You are not logged in, login timeout");
                }
                else
                {
                    Label3.Text = Session["User"].ToString();                  
                }

                BingDatas();
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
        private void BingDatas()
        {
            if (Label3.Text != "")
            {
                reptmMy.DataSource = DB.CarryOutSqlGeDataTable("SELECT * FROM tblProjectCreate WHERE UserId ='" + Label3.Text+ "'");
                reptmMy.DataBind();
                Repeater1.DataSource = getTable.GetAllDataFromtblProjectInvestInfo("UserId ='" + Label3.Text+ "'");
                Repeater1.DataBind();
                RpemUserInfor.DataSource = getTable.GetAllDataFromtblUserInfo("UserId ='" + Label3.Text + "'");
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
                    BingDatas();
                    MessaegBox("You have deleted it");
                }
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
                throw;
            }

        }
        private void ShowPictue()
        {
            if (Label3.Text != "")
            {
                DataTable td = getTable.GetAllDataFromtblUserInfo("UserId ='" + Label3.Text.ToString() + "'");
                ImgSrcPictureOne.ImageUrl = td.Rows[0]["UserCardPicture_Address"].ToString();
                ImgSrcPictureTwo.ImageUrl = td.Rows[0]["UserCardPicture2_Address"].ToString();
                ImgSrcPictureOne.Visible = true;
                ImgSrcPictureTwo.Visible = true;
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
                if (Label3.Text != "")
                {
                    string userId = Convert.ToString(Label3.Text);
                    bool isOK = false;
                    isOK = Judge.JudgeUserTypeIs_Two(userId);
                    if (isOK)
                    {
                        MessaegBox("You are already a Senior member");
                        return;
                    }
                    string NameFineOne = "";
                    string NameFineTwo = "";
                    NameFineOne = ((Label)wuc_UpLoadDoubleEng2.FindControl("lblWenjian")).Text;
                    NameFineTwo = ((Label)wuc_UpLoadDoubleEng2.FindControl("lblWenjian2")).Text;
                    if (NameFineOne == "")
                    {
                        MessaegBox("Please upload the first picture");
                        return;
                    }
                    if (NameFineTwo == "")
                    {
                        MessaegBox("Please upload the second picture");
                        return;
                    }
                    if (txtId.Text == "")
                    {
                        MessaegBox("ID number can not be empty！");
                        return;
                    }
                    /*先上传*/
                    string FirstPicture = NameFineOne.Replace("\'", "\'\'");
                    string SeconfPicture = NameFineTwo.Replace("\'", "\'\'");
                    string ID = txtId.Text.Replace("\'", "\'\'");
                    string Sql = "update [XcXm].[dbo].[tblUserInfo] set UserRemark ='14',UserCard ='" + ID + "',UserCardPicture_Address='" + FirstPicture + "',UserCardPicture2_Address ='" + SeconfPicture + "' where UserId ='" + userId + "'";
                    int Reault = DB.CarryOutSqlSentence(Sql);
                    ShowPictue();
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
                if (Label3.Text != "")
                {
                    DataTable td = getTable.GetAllDataFromtblUserInfo("UserId ='" + Label3.Text.ToString() + "'");
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
                if (Label3.Text != "")
                {
                    string UserId = Label3.Text;
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
                    BingDatas();
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