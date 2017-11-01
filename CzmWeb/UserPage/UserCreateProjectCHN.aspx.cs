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
    public partial class UserCreateProjectCHN : System.Web.UI.Page
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
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../Default.aspx';</script>");
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }

        private void ChangeIsNUll()
        {
            txtAdress.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtAmount.Text = "";
            txtApplyName.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtPhone.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtBilieShuoming.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtZlH.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtProjectName.Text = "成功！请等待审核! 我们将以短信的方式通知你";
            txtProjectIntroDuction.Text = "成功！请等待审核! 我们将以短信的方式通知你";
        }

        private void SaveData()
        {
            if (txtProjectName.Text == "")
            {
                MessaegBox("请填写项目名称");
                return;
            }
            if (txtZlH.Text == "")
            {
                MessaegBox("请填写专利号");
                return;
            }
            if (txtProjectIntroDuction.Text == "")
            {
                MessaegBox("请填写简介");
                return;
            }
            if (!wuc_FileUpload_Piture.IsHaveFile())
            {
                MessaegBox("请上传图片");
                return;
            }
            if (!wuc_FileVedio.IsHaveFile())
            {
                MessaegBox("请上传证书");
                return;
            }

            if (txtAmount.Text == "")
            {
                MessaegBox("请输入投资金额");
                return;
            }

            if (txtBilieShuoming.Text == "")
            {
                MessaegBox("请说明持股比例");
                return;
            }

            if (txtApplyName.Text == "")
            {
                MessaegBox("请输入申请人名称");
                return;
            }
            if (txtPhone.Text == "")
            {
                MessaegBox("请输入联系电话");
                return;
            }
            if (txtAdress.Text == "")
            {
                MessaegBox("请填写你的地址");
                return;
            }
            wuc_FileVedio.MapPaths = "~/ProjectFile/";
            wuc_FileUpload_Piture.MapPaths = "~/ProjectFile/";
            string pciName = txtProjectName.Text.Replace("\'", "\'\'");
            string PatentNumber = txtZlH.Text.Replace("\'", "\'\'");
            string Description = txtProjectIntroDuction.Text.Replace("\'", "\'\'");

            wuc_FileUpload_Piture.UpFile();
            string PictureAddress = wuc_FileUpload_Piture.ServerDianPath;

            wuc_FileVedio.UpFile();
            string FileAddress = wuc_FileVedio.ServerDianPath;

            string shareRadio = txtBilieShuoming.Text;
            string PciInvestMeony = txtAmount.Text;

            string Applicant = txtApplyName.Text;

            string Phone = txtPhone.Text;

            string Address = txtAdress.Text;
            string AddUser = Session["User"].ToString();
            string sql = "INSERT INTO [XcXm].[dbo].[tblProjectCreate]" +
                         "([PciName_c],[PatentNumber],[PciDescription_c],[ImgPicturPath],[PciRemark],[PciInvestMeony],[stockRateIntroduction],[FzrName],[NewPhone],[NewAdress],[UserId]) VALUES ";
            string sqlValues = "('" + pciName + "','" + PatentNumber + "','" + Description + "','" + PictureAddress +
                               "','" + FileAddress + "','" + PciInvestMeony + "','" + shareRadio + "','" + Applicant +
                               "','" + Phone + "','" + Address + "'," + AddUser + ")";
            DB.CarryOutSqlSentence(sql + sqlValues);
            ChangeIsNUll();           
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            SaveData();
            Show(this,"成功！请等待审核! 我们将以短信的方式通知你");
            return;
        }
        public static void Show(System.Web.UI.Page page, string msg)
        {
            page.ClientScript.RegisterStartupScript(page.GetType(), "message", "<script language='javascript' defer>window.onload = function (){ alert('" + msg.ToString() + "');};</script>");
        }
    }
}