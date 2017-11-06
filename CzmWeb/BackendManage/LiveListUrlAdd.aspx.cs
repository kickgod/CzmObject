using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;

namespace CzmWeb.BackendManage
{
    public partial class LiveListUrlAdd : System.Web.UI.Page
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
                LinkData();
                LinkTxtEnablefalse();
            }
        }
        private void LinkData()
        {
            DataTable td =new DataTable();
            td = getTable.GetAllDataFromtblLiveInfo();
            txtLivelinkKuaiShou.Text = td.Rows[0]["LiUrl"].ToString();
            txtLinkKuaishouTitleEng.Text = td.Rows[0]["LiTitleEng"].ToString();//LiTitle
            txtLinkKuaishouTitle.Text = td.Rows[0]["LiTitle"].ToString();

            txtyinkeLink.Text = td.Rows[1]["LiUrl"].ToString();
            txtyinkelinkSassEng.Text = td.Rows[1]["LiTitleEng"].ToString();//LiTitle
            txtyinkeLinkSass.Text = td.Rows[1]["LiTitle"].ToString();

            txtshangyuLink.Text = td.Rows[2]["LiUrl"].ToString();
            txtShangyutitleENG.Text = td.Rows[2]["LiTitleEng"].ToString();//LiTitle
            txtShangyutitle.Text = td.Rows[2]["LiTitle"].ToString();
        }
        private void LinkTxtEnableTrue()
        {
            txtLinkKuaishouTitleEng.Enabled = true;
            txtLivelinkKuaiShou.Enabled = true;
            txtLinkKuaishouTitle.Enabled = true;

            txtyinkeLink.Enabled = true;
            txtyinkeLinkSass.Enabled = true;
            txtyinkelinkSassEng.Enabled = true;

            txtshangyuLink.Enabled = true;
            txtShangyutitleENG.Enabled = true;
            txtShangyutitle.Enabled = true;
        }
        private void LinkTxtEnablefalse()
        {
            txtLinkKuaishouTitleEng .Enabled = false;
            txtLivelinkKuaiShou.Enabled = false;
            txtLinkKuaishouTitle.Enabled = false;

            txtyinkeLink.Enabled = false;
            txtyinkeLinkSass.Enabled = false;
            txtyinkelinkSassEng.Enabled = false;

            txtshangyuLink.Enabled = false;
            txtShangyutitleENG.Enabled = false;
            txtShangyutitle.Enabled = false;
        }
        protected void btnKSXiugai_Click(object sender, EventArgs e)
        {
            txtLinkKuaishouTitleEng.Enabled = true;
            txtLivelinkKuaiShou.Enabled = true;
            txtLinkKuaishouTitle.Enabled = true;
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string sqlwhere =
                "  update [XcXm].[dbo].[tblLiveInfo] set LiUrl='" + txtLivelinkKuaiShou.Text.Replace("\'", "\'\'") + "' ,LiTitleEng='" + txtLinkKuaishouTitleEng.Text.Replace("\'", "\'\'") + "',LiTitle ='" + txtLinkKuaishouTitle.Text.Replace("\'", "\'\'") + "' where LiId=1";
            int count = DB.CarryOutSqlSentence(sqlwhere);
            if (count == 1)
            {
                MessaegBox("保存成功！");
            }
            LinkTxtEnablefalse();
        }
        protected void btnYKXiugai_Click(object sender, EventArgs e)
        {
            txtyinkeLink.Enabled = true;
            txtyinkeLinkSass.Enabled = true;
            txtyinkelinkSassEng.Enabled = true;
        }
        protected void btnYKsave_Click(object sender, EventArgs e)
        {
            string sqlwhere =
                "  update [XcXm].[dbo].[tblLiveInfo] set LiUrl='" + txtyinkeLink.Text.Replace("\'", "\'\'") + "' ,LiTitleEng='" + txtyinkelinkSassEng.Text.Replace("\'", "\'\'") + "',LiTitle ='" + txtyinkeLinkSass.Text.Replace("\'", "\'\'") + "' where LiId=2";
            int count = DB.CarryOutSqlSentence(sqlwhere);
            if (count == 1)
            {
                MessaegBox("保存成功！");
            }
            LinkTxtEnablefalse();
        }
        protected void btnSYxiugai_Click(object sender, EventArgs e)
        {
            txtshangyuLink.Enabled = true;
            txtShangyutitleENG.Enabled = true;
            txtShangyutitle.Enabled = true;
        }
        protected void btnSYsave_Click(object sender, EventArgs e)
        {
            string sqlwhere =
                "  update [XcXm].[dbo].[tblLiveInfo] set LiUrl='" + txtshangyuLink.Text.Replace("\'", "\'\'") + "' ,LiTitleEng='" + txtShangyutitleENG.Text.Replace("\'", "\'\'") + "',LiTitle ='" + txtShangyutitle.Text.Replace("\'", "\'\'") + "' where LiId=3";
            int count = DB.CarryOutSqlSentence(sqlwhere);
            if (count == 1)
            {
                MessaegBox("保存成功！");
            }
            LinkTxtEnablefalse();
        }
    }
}