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
    public partial class UserCreateProject : System.Web.UI.Page
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
            Response.Write("<script>alert('" + msg + "');location.href='../DefalutEng.aspx';</script>");
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }

        private void ChangeIsNUll()
        {
            txtAdress.Text = "success！Please wait for the audit! We'll notify you by SMS";
            txtAmount.Text = "";
            txtApplyName.Text = "success！Please wait for the audit! We'll notify you by SMS";
            txtPhone.Text = "success！Please wait for the audit! We'll notify you by SMS";
            txtBilieShuoming.Text = "success！Please wait for the audit! We'll notify you by SMS";
            txtZlH.Text = "success！Please wait for the audit! We'll notify you by SMS";
            txtProjectName.Text = "success！Please wait for the audit! We'll notify you by SMS";
            txtProjectIntroDuction.Text = "success！Please wait for the audit! We'll notify you by SMS";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            /*项目名称*/
            if (txtProjectName.Text == "")
            {
                MessaegBox("Please Enter The Project Name");
                return;
            }
            /*专利号*/
            if (txtZlH.Text == "")
            {
                MessaegBox("Please Enter The Patent Number");
                return;               
            }
            /*项目简介*/
            if (txtProjectIntroDuction.Text == "")
            {
                MessaegBox("Please Enter The Profile");
                return;
            }
            /*文件上传*/
            if (!wuc_FileUpload_Piture.IsHaveFile())
            {
                MessaegBox("Please upload a picture");
                return;                
            }
            /*文件上传 说明文件*/
            if (!wuc_FileVedio.IsHaveFile())
            {
                MessaegBox("Please Enter The File");
                return;
            }
            /*投资金额*/
            if (txtAmount.Text=="")
            {
                MessaegBox("Please enter the amount of investment");
                return;
            }
            /*持股比例*/
            if (txtBilieShuoming.Text == "")
            {
                MessaegBox("Please enter the description of the shares");
                return;
            }
            /*持股比例*/
            if (txtApplyName.Text == "")
            {
                MessaegBox("Please enter the applicant or the applicant unit");
                return;               
            }
            if (txtPhone.Text=="")
            {
                MessaegBox("Please enter your phone number");
                return;  
            }
            if (txtAdress.Text == "")
            {
                MessaegBox("Please enter your unit address");
                return;                 
            }
            wuc_FileVedio.MapPaths = "~/ProjectFile/";
            wuc_FileUpload_Piture.MapPaths = "~/ProjectFile/";
            string pciName = txtProjectName.Text.Replace("\'", "\'\'");
            string PatentNumber=txtZlH.Text.Replace("\'", "\'\'");
            string Description = txtProjectIntroDuction.Text.Replace("\'", "\'\'");
            /*上传图片*/
            wuc_FileUpload_Piture.UpFile();
            string PictureAddress = wuc_FileUpload_Piture.ServerDianPath;
            /*上传文件*/
            wuc_FileVedio.UpFile();
            string FileAddress = wuc_FileVedio.ServerDianPath;
            /*投资金额*/
            string shareRadio = txtBilieShuoming.Text;
            string PciInvestMeony = txtAmount.Text;
            /*申请人*/
            string Applicant = txtApplyName.Text;
            /*电话*/
            string Phone = txtPhone.Text;
            /*地址*/
            string Address = txtAdress.Text;
            string AddUser = Session["User"].ToString();
            string sql = "INSERT INTO [XcXm].[dbo].[tblProjectCreate]" +
                         "([PciName_c],[PatentNumber],[PciDescription_c],[ImgPicturPath],[PciRemark],[PciInvestMeony],[stockRateIntroduction],[FzrName],[NewPhone],[NewAdress],[UserId]) VALUES ";
            string sqlValues = "('" + pciName + "','" + PatentNumber + "','" + Description + "','" + PictureAddress +
                               "','" + FileAddress + "','" + PciInvestMeony + "','" + shareRadio + "','" + Applicant +
                               "','" + Phone + "','" + Address + "'," + AddUser+")";
            int count=DB.CarryOutSqlSentence(sql + sqlValues);
            ChangeIsNUll();
            MessaegBox("success！Please wait for the audit! We'll notify you by SMS");

        }
    }
}