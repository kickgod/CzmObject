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
    public partial class ProductAddNew : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["ProId"] != null)
                {
                    MessaegBox(Request.QueryString["ProId"].ToString());
                }
                else
                {
                    MessaegBox("fuck");
                }
                btnAddProduct.Visible = false;
                btnEditProduct.Visible = false;
                BindData();
            }
        }
        private void BindData()
        {
            ddlProductType.Items.Clear();
            ListItem item = new ListItem();
            item.Value = "-1";
            item.Text = "-- 不选 --";
            ddlProductType.Items.Add(item);
            DataTable td = getTable.GetAllDataFromtblProductTypeInfo();
            if (td.Rows.Count > 0)
            {
                foreach (DataRow row in td.Rows)
                {
                    ListItem itemSItem = new ListItem();
                    itemSItem.Value = row["typeID"].ToString();
                    itemSItem.Text = row["typeName_c"].ToString();
                    ddlProductType.Items.Add(itemSItem);
                }
            }
        }
        private int MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
            return 1;
        }
        private int MessaegBoxConfrim(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script>window.confirm('" + msg + "')</script>");
            return 1;
        }
        private void ChangeProductNull()
        {
            txtNameChinese.Text = "";
            txtNameEnglish.Text = "";
            ddlProductType.SelectedValue = "-1";
            txttaobaoUrl.Text = "";
            txtKetWords.Text = "";
            chkBaoyou.Checked = false;
            chbIsNew.Checked = false;
            chbremai.Checked = false;
            chkIsDown.Checked = false;
            txtPriceLst.Text = "";
            txtPriceNow.Text = "";
            txtProductIntroDuct.Text = "";
            txtProductIntroDuctEng.Text = "";
        }
        private void ChangeProducEnableFalse()
        {
            txtNameChinese.Enabled = false;
            txtNameEnglish.Enabled = false;
            ddlProductType.Enabled = false;
            txttaobaoUrl.Enabled = false;
            txtKetWords.Enabled = false;
            chkBaoyou.Enabled = false;
            chbIsNew.Enabled = false;
            chbremai.Enabled = false;
            chkIsDown.Enabled = false;
            txtPriceLst.Enabled = false;
            txtPriceNow.Enabled = false;
            txtProductIntroDuct.Enabled = false;
            txtProductIntroDuctEng.Enabled = false;
        }

        private void ChangeProductEnableTrue()
        {
            txtNameChinese.Enabled = true;
            txtNameEnglish.Enabled = true;
            ddlProductType.Enabled = true;
            txttaobaoUrl.Enabled = true;
            txtKetWords.Enabled = true;
            chkBaoyou.Enabled = true;
            chbIsNew.Enabled = true;
            chbremai.Enabled = true;
            chkIsDown.Enabled = true;
            txtPriceLst.Enabled = true;
            txtPriceNow.Enabled = true;
            txtProductIntroDuct.Enabled = true;
            txtProductIntroDuctEng.Enabled = true;
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            lblProductId.Text = "自动编号";
            ChangeProductNull();
            ChangeProductEnableTrue();
        }

        protected void btnEditProduct_Click(object sender, EventArgs e)
        {
            if (lblProductId.Text == "自动编号")
            {
                MessaegBoxConfrim("请先选择一个产品以便展示信息");
                return;
            }
            ChangeProductEnableTrue();
        }

        protected void btnSaveProduct_Click(object sender, EventArgs e)
        {
            bool IsModitify;
            string priceLast;
            if (lblProductId.Text == "自动编号")
            {
                IsModitify = false;
            }
            else
            {
                IsModitify = true;
            }
            if (txtNameChinese.Text == "")
            {
                MessaegBoxConfrim("请填写产品名称");
                return;
            }
            if (txtNameEnglish.Text == "")
            {
                MessaegBoxConfrim("请填写产品英文名称");
                return;
            }
            if (ddlProductType.SelectedValue == "-1")
            {
                MessaegBoxConfrim("请选择产品所属类别");
                return;
            }
            if (txtPriceNow.Text == "")
            {
                MessaegBoxConfrim("请输入产品当前价格");
                return;
            }
            else
            {
                if (!ValueJudge.IsNumberic(txtPriceNow.Text))
                {
                    MessaegBox("请填写数字！");
                    return;
                }
            }
            if (!wuc_FileUpload.IsHaveFile())
            {
                MessaegBoxConfrim("请选择图片文件！");
                return;
            }
            if (txtPriceLst.Text != "")
            {
                if (!ValueJudge.IsNumberic(txtPriceLst.Text))
                {
                    MessaegBox("请填写数字！");
                    return;
                }
                priceLast = txtPriceLst.Text;
            }
            else
            {
                priceLast = (Math.Floor(Convert.ToDouble(txtPriceNow.Text) * 1.2)).ToString();
            }
            if (txtProductKeyWordsEnd.Text == "")
            {
                MessaegBoxConfrim("请填写英文关键词");
                return;
            }
            if (txtProductIntroDuct.Text == "")
            {
                MessaegBoxConfrim("请填写产品中文简介");
                return;
            }
            if (txtProductIntroDuctEng.Text == "")
            {
                MessaegBoxConfrim("请填写产品英文简介");
                return;
            }
            string IsVisibly;
            string IsBaoyou;
            string IsRemai;
            string IsNew;
            IsVisibly = chkIsDown.Checked ? "1" : "0";
            IsBaoyou = chkBaoyou.Checked ? "1" : "0";
            IsRemai = chbremai.Checked ? "1" : "0";
            IsNew = chbIsNew.Checked ? "1" : "0";
            if (!IsModitify)
            {
                wuc_FileUpload.MapPaths = "~/ProductImage/";
                wuc_FileUpload.UpFile();
                string ImgPath = wuc_FileUpload.ServerDianPath;
                string sql = "  INSERT INTO [XcXm].[dbo].[tblProductInfo] ( [ProductName_c] ,[ProductName_e],[ProductType],[ProductDescription_c],[ProductDescription_e]  ,[IsVisiable],[IsNew],[ImgPatjh],[ProductKey],[taobaoUrl],[price_last],[Price_now],[IsBY],[IsRm],[ProductState],ProductKeyEng)" +
                             " VALUES('" + txtNameChinese.Text + "','" + txtNameEnglish + "'," + ddlProductType.SelectedValue + " ,'" + txtProductIntroDuct.Text + "','" + txtProductIntroDuctEng.Text +
                             "'," + IsVisibly + "," + IsNew + ",'" + ImgPath + "'," + "'" + txtKetWords.Text + "', '" + txttaobaoUrl.Text + "' ," + priceLast + "," +
                             txtPriceNow.Text + "," + IsBaoyou + "," + IsRemai + ",30" + ",'" + txtProductKeyWordsEnd.Text + "')";
                DB.CarryOutSqlSentence(sql);
                MessaegBoxConfrim("添加完成");
            }
            else
            {
                bool IsHvaeFile = wuc_FileUpload.IsHaveFile();
                if (IsHvaeFile)
                {
                    wuc_FileUpload.MapPaths = "~/ProductImage/";
                    wuc_FileUpload.UpFile();
                    string imgPath = wuc_FileUpload.ServerDianPath;
                    string sql = " UPDATE [XcXm].[dbo].[tblProductInfo] SET" + "ProductName_c ='" +
                                 txtNameChinese.Text + "',ProductName_e ='" + txtNameEnglish + "', ProductType=" +
                                 ddlProductType.SelectedValue +
                                 ",ProductDescription_c='" + txtProductIntroDuct.Text + "',ProductDescription_e='" +
                                 txtProductIntroDuctEng.Text + "',IsVisiable=" + IsVisibly + ",IsNew=" + IsNew +
                                 ",taobaoUrl='" + txttaobaoUrl.Text + "'"
                                 + ",price_last=" + txtPriceNow.Text + ",Price_now=" + priceLast + ",IsBY =" + IsBaoyou + ",IsRm=" + IsRemai + ",ProductKey='" + txtKetWords.Text + "',ImgPatjh='" + imgPath + "'" +
                                 ",ProductKeyEng ='" + txtProductKeyWordsEnd.Text + "'" + "WHERE ProductID=" + lblProductId.Text;
                    DB.CarryOutSqlSentence(sql);
                    MessaegBox("修改完毕");

                }
            }

        }
    }
}