using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CzmObject.App_Code;
using CzmWeb.App_Code;
using CzmWeb;
namespace CzmWeb.BackendManage
{
    public partial class ProductTypeAdd : System.Web.UI.Page
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
                BindData();
                wucPager.Bind();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        private int MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
            return 1;
        }
        private int MessaegBoxConfrim(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "confirm", "<script>window.confirm('" + msg + "')</script>");
            return 1;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            
            ChengNull();
            ChengEnableTrue();
        }

        protected void btnEdit_OnClick(object sender, EventArgs e)
        {
            ChengEnableTrue();
        }

        protected void btnSave_OnClick(object sender, EventArgs e)
        {
            if (txtTypeNameEng.Enabled == false)
            {
                MessaegBoxConfrim("请选择编辑！");
                return;
            }
            bool IsModitify;
            if (lblID.Text != "自动编号")
            {
                IsModitify = true;
            }
            else
            {
                IsModitify = false;
            }
            if (txtTypeNameChe.Text == "")
            {
                MessaegBoxConfrim("请填写中文名称！");
                return;
            }
            if (txtTypeNameEng.Text == "")
            {
                MessaegBoxConfrim("请填写英文名称！");
                return;
            }
            if(txtDecriptionCHN.Text=="")
            {
                MessaegBoxConfrim("请填写中文简介！");
                return;               
            }
            if (txtDecriptionENG.Text == "")
            {
                MessaegBoxConfrim("请填写英文简介！");
                return;
            }
            string ss = "\'\'";
            string ChineseseName = txtTypeNameChe.Text;
            string EnglishName = txtTypeNameEng.Text;
            if (IsModitify)
            {
                string FineName ="";
                string sqlUpdate = "";
                if (wuc_FileUpload.IsHaveFile())
                {
                    wuc_FileUpload.UpFile();
                    FineName = wuc_FileUpload.ServerDianPath;
                }
                if (FineName == "")
                {
                    sqlUpdate = "UPDATE [XcXm].[dbo].[tblProductTypeInfo] SET  typeName_c ='" + ChineseseName + "'" +
                                " ,typeName_e='" + EnglishName.Replace("\'", ss) + "', TypeDecription_c = '" +txtDecriptionCHN.Text.Replace("\'", ss)
                                +"', TypeDecription_e = '"+txtDecriptionENG.Text.Replace("\'", ss)+
                                "' WHERE typeID= " + ddlCheckType.SelectedValue;
                 
                }
                else
                {
                    sqlUpdate = "UPDATE [XcXm].[dbo].[tblProductTypeInfo]" +
                                " SET TypePicture='" + FineName + "' , typeName_c ='" + ChineseseName +
                                "' ,typeName_e='" + EnglishName.Replace("\'", ss) + "', TypeDecription_c = '" +txtDecriptionCHN.Text.Replace("\'", ss)
                        +"', TypeDecription_e = '"+txtDecriptionENG.Text.Replace("\'", ss)+
                        "'  WHERE typeID= " + ddlCheckType.SelectedValue;
                   
                }
                DB.CarryOutSqlSentence(sqlUpdate);
                MessaegBox("修改完成");
            }
            else
            {
                if (!wuc_FileUpload.IsHaveFile())
                {
                    MessaegBox("请上传图片");
                    return;
                }
                string FineName = "";
                wuc_FileUpload.UpFile();
                FineName = wuc_FileUpload.ServerDianPath;
                string sqlInsert = "INSERT INTO [XcXm].[dbo].[tblProductTypeInfo](typeName_c,typeName_e,TypeState,TypeIsVisiable,TypePicture,TypeDecription_c,TypeDecription_e) VALUES('" + ChineseseName + "','" +
                    EnglishName.Replace("\'", ss) + "',30,1,'" + FineName + "','"+txtDecriptionCHN.Text+"','"+txtDecriptionENG.Text+"') ";
                //lblID.Text = sqlInsert;
                DB.CarryOutSqlSentence(sqlInsert);
                MessaegBox("添加完成");
            }
            ChengNull();
            BindData();
        }
        private void BindData()
        {
            ddlCheckType.Items.Clear();
            ListItem item = new ListItem();
            item.Value = "-1";
            item.Text = "-- 不选 --";
            ddlCheckType.Items.Add(item);
            DataTable td = getTable.GetAllDataFromtblProductTypeInfo();
            if (td.Rows.Count > 0)
            {
                foreach (DataRow row in td.Rows)
                {
                    ListItem itemSItem = new ListItem();
                    itemSItem.Value = row["typeID"].ToString();
                    itemSItem.Text = row["typeName_c"].ToString();
                    ddlCheckType.Items.Add(itemSItem);
                }
            }
        }
        private void ChengNull()
        {
            lblID.Text = "自动编号";
            ddlCheckType.SelectedValue = "-1";
            txtTypeNameChe.Text = "";
            txtTypeNameEng.Text = "";
            txtDecriptionCHN.Text = "";
            txtDecriptionENG.Text = "";
        }
        private void ChengEnableFalse()
        {
            txtTypeNameChe.Enabled = false;
            txtTypeNameEng.Enabled = false;
            txtDecriptionCHN.Enabled = false;
            txtDecriptionENG.Enabled = false;
        }
        private void ChengEnableTrue()
        {
            txtTypeNameChe.Enabled = true;
            txtTypeNameEng.Enabled = true;
            txtDecriptionCHN.Enabled = true;
            txtDecriptionENG.Enabled = true;
        }
        protected void ddlCheckType_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCheckType.SelectedValue == "-1")
            {
                ChengEnableTrue();
                ChengNull();
            }
            else
            {
                DataTable td = getTable.GetAllDataFromtblProductTypeInfo("typeID =" + ddlCheckType.SelectedValue);
                if (td.Rows.Count == 1)
                {

                        txtTypeNameChe.Text = td.Rows[0]["typeName_c"].ToString();                     
                        txtTypeNameEng.Text = td.Rows[0]["typeName_e"].ToString();
                        txtDecriptionCHN.Text = td.Rows[0]["TypeDecription_c"].ToString();
                        txtDecriptionENG.Text = td.Rows[0]["TypeDecription_e"].ToString();
                        lblID.Text = td.Rows[0]["typeID"].ToString();
                    ChengEnableFalse();              
                }
            }
        }

        protected void wucPager_OnBindList(object sender, EventArgs e)
        {
            //查询数据

            DataTable dt = getTable.GetAllDataFromtblProductTypeInfo();
            int totalCount = 0;
            if (dt != null)
            {
                totalCount = dt.Rows.Count;
                //获取分页信息
                wucPager.LoadData(totalCount);

                //绑定数据
                DoEasyClassLib.WebForm.RepeaterHelper.DataBind(dt, rpItem, wucPager.CurPageCount - 1,
                    wucPager.PageSize);
            }
        }

        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Delete")
            {
                string sqlString = "delete from  tblProductInfo where [ProductType]= " + e.CommandArgument;
                string sql = "DELETE FROM [XcXm].[dbo].[tblProductTypeInfo] WHERE typeID =" + e.CommandArgument;
                DB.CarryOutSqlSentence(sql);
                DB.CarryOutSqlSentence(sqlString);
                BindData();
                MessaegBox("成功删除");
            }
            else if (e.CommandName == "XiaJia")
            {
                string sql = "  update [XcXm].[dbo].[tblProductTypeInfo] set TypeState =-30 where typeID =" + e.CommandArgument;
                DB.CarryOutSqlSentence(sql);
                BindData();
                MessaegBox("成功下架！");                
            }
            else if (e.CommandName == "ShangeJia")
            {
                string sql = "  update [XcXm].[dbo].[tblProductTypeInfo] set TypeState =30 where typeID =" + e.CommandArgument;
                DB.CarryOutSqlSentence(sql);
                BindData();
                MessaegBox("成功下架！");
            }
            wucPager.Bind();
        }

        protected void rpItem_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}