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
    public partial class VedioListAndUp : System.Web.UI.Page
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
                DataBand();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        private void ChangeNull()
        {
            lblVedioId.Text = "自动编号";
            txrChineseName.Text = "";
            txtEnglishName.Text = "";
        }
        private void ChangeEableTrue()
        {
            txrChineseName.Enabled = true;
            txtEnglishName.Enabled = true;
        }
        private void ChangeEableFalse()
        {
            txrChineseName.Enabled = false;
            txtEnglishName.Enabled = false;
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            ChangeEableTrue();
            ChangeNull();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            ChangeEableTrue();
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            bool Ismodify =true;
            if (lblVedioId.Text == "自动编号")
            {
                Ismodify = false;//添加新视频
            }
            if (txtEnglishName.Text == "")
            {
                MessaegBox("请输入英文视频名称");
                return;
            }
            if (txrChineseName.Text == "")
            {
                MessaegBox("请输入中文视频名称");
                return;
            }
            String VedioStringEng = txtEnglishName.Text.Replace("\'", "\'\'");
            String VedioStringCHE = txrChineseName.Text.Replace("\'", "\'\'");
            if (Ismodify)
            {
                string Sql = "";
                if (wuc_FileVedio.IsHaveFile()&&wuc_FileVedio1.IsHaveFile()==false)
                {
                    wuc_FileVedio.UpFile();
                    string FileAddress = wuc_FileVedio.ServerDianPath;
                    Sql = "  UPDATE [XcXm].[dbo].[tblVideoInfo] SET VideoName_c='" + VedioStringCHE + "' ,VideoName_e ='" + VedioStringEng + "' ,VidioPath='" + FileAddress + "' WHERE VidioID = "+lblVedioId.Text;
                }
                else if (wuc_FileVedio.IsHaveFile() == false && wuc_FileVedio1.IsHaveFile())
                {
                    wuc_FileVedio1.UpFile();
                    string FileAddress = wuc_FileVedio1.ServerDianPath;
                    Sql = "  UPDATE [XcXm].[dbo].[tblVideoInfo] SET VideoName_c='" + VedioStringCHE + "' ,VideoName_e ='" + VedioStringEng + "' ,videoPoster='" + FileAddress + "' WHERE VidioID = " + lblVedioId.Text;                   
                }
                else if (wuc_FileVedio.IsHaveFile()&& wuc_FileVedio1.IsHaveFile())
                {
                    wuc_FileVedio1.UpFile();
                    wuc_FileVedio.UpFile();
                    string PosterAddre = wuc_FileVedio1.ServerDianPath;
                    string FileAddress = wuc_FileVedio.ServerDianPath;
                    Sql = "  UPDATE [XcXm].[dbo].[tblVideoInfo] SET VideoName_c='" + VedioStringCHE + "' ,VideoName_e ='" + VedioStringEng + "' ,videoPoster='" + PosterAddre + "',VidioPath='"+FileAddress+"' WHERE VidioID = " + lblVedioId.Text;                       
                }
                else if(!wuc_FileVedio.IsHaveFile()&& !wuc_FileVedio1.IsHaveFile())
                {
                    Sql = "  UPDATE [XcXm].[dbo].[tblVideoInfo] SET VideoName_c='" + VedioStringCHE + "' ,VideoName_e ='" + VedioStringEng + "' WHERE VidioID = " + lblVedioId.Text;                 
                }
                DB.CarryOutSqlSentence(Sql);
                MessaegBox("修改成功");
            }
            else
            {
                if (!wuc_FileVedio.IsHaveFile())
                {
                    MessaegBox("请上传视频");
                    return;
                }
                if (!wuc_FileVedio1.IsHaveFile())
                {
                    MessaegBox("请上传视频封面");
                    return;                  
                }
                wuc_FileVedio.UpFile();
                wuc_FileVedio1.UpFile();
                string FilePoster = wuc_FileVedio1.ServerDianPath;
                string FileAddress = wuc_FileVedio.ServerDianPath;
                String SQL = "  INSERT INTO [XcXm].[dbo].[tblVideoInfo](VideoName_c,VideoName_e,VidioPath,videoPoster)" +
                             " VALUES('" + VedioStringCHE + "',+'" + VedioStringEng + "','" + FileAddress +"','"+ FilePoster+"')";
                DB.CarryOutSqlSentence(SQL);
                MessaegBox("上传成功");
            }
        }

        private void DataBand()
        {
            DataTable td = getTable.GetAllDataFromtblVideoInfo();
            reptm.DataSource = td;
            reptm.DataBind();
        }
        protected void reptm_OnItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string sql = "  DELETE FROM [XcXm].[dbo].[tblVideoInfo] WHERE VidioID=" + e.CommandArgument;
                DB.CarryOutSqlSentence(sql);
                DataBand();
                MessaegBox("删除成功");
                return;
            }
            else if (e.CommandName == "Edit")
            {
                DataTable td = getTable.GetAllDataFromtblVideoInfo("  VidioID = " + e.CommandArgument);
                    lblVedioId.Text = e.CommandArgument.ToString();
                    txrChineseName.Text= td.Rows[0]["VideoName_c"].ToString();
                    txtEnglishName.Text = td.Rows[0]["VideoName_e"].ToString();
                ChangeEableFalse();
                return;

            }else if (e.CommandName == "XiaXian")
            {
                string sql = "UPDATE [XcXm].[dbo].[tblVideoInfo] SET IsShow =0 WHERE VidioID ="+e.CommandArgument;
                DB.CarryOutSqlSentence(sql);
                DataBand();
                MessaegBox("下线成功");                
            }else if (e.CommandName == "ShangXian")
            {
                string sql = "UPDATE [XcXm].[dbo].[tblVideoInfo] SET IsShow =1 WHERE VidioID =" + e.CommandArgument;
                DB.CarryOutSqlSentence(sql);
                DataBand();
                MessaegBox("上线成功");                 
            }
            DataBand();
        }
    }
}