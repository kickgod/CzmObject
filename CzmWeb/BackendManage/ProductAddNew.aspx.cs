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
                btnAddProduct.Visible = false;
                btnEditProduct.Visible = false;
                BindData();
                if (Request.Cookies["ProductID"] != null)
                {
                    btnAddProduct.Visible = true;
                    btnEditProduct.Visible =true;
                    BindDataOfProduct(Request.Cookies["ProductID"].Value.ToString());
                }
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        private void BindDataOfProduct(string ProductId)
        {
            /*Product Information*/
            string Where = "ProductID =" + ProductId;
            DataTable td = getView.GetAllDataFrom_vwproductInfo(Where);
            if (td.Rows.Count == 1)
            {
                lblProductId.Text = ProductId;
                txtNameChinese.Text= td.Rows[0]["ProductName_c"].ToString();
                txtNameEnglish.Text = td.Rows[0]["ProductName_e"].ToString();
                chkIsDown.Checked = Convert.ToBoolean(td.Rows[0]["IsVisiable"]);
                //bang ding chanping zhonglei
                ddlProductType.SelectedValue = td.Rows[0]["ProductType"].ToString();
                //绑定产品淘宝地址
                txttaobaoUrl.Text = td.Rows[0]["taobaoUrl"].ToString();
                //绑定关键字
                txtKetWords.Text = td.Rows[0]["ProductKey"].ToString();
                //绑定英文关键字
                txtProductKeyWordsEnd.Text = td.Rows[0]["ProductKeyEng"].ToString();
                //是否包邮
                chkBaoyou.Checked = Convert.ToBoolean(td.Rows[0]["IsBY"]);
                //是否热卖
                chbremai.Checked = Convert.ToBoolean(td.Rows[0]["IsRm"]);
                //是否新品
                chbIsNew.Checked = Convert.ToBoolean(td.Rows[0]["IsNew"]);
                //当前价格
                txtPriceNow.Text = td.Rows[0]["Price_now"].ToString();
                //过去价格
                txtPriceLst.Text = td.Rows[0]["price_last"].ToString();
                //简介中文
                txtProductIntroDuct.Text = td.Rows[0]["ProductDescription_c"].ToString();
                //简介英文
                txtProductIntroDuctEng.Text = td.Rows[0]["ProductDescription_e"].ToString();
            }
            ChangeProducEnableFalse();

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
            txtProductKeyWordsEnd.Text = "";
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
            txtProductKeyWordsEnd.Enabled = false;
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
            txtProductKeyWordsEnd.Enabled = true;
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
            /*英文 ’ 字符串处理*/
            /*
               1.英文名称
             * **/
            string EnglishName = txtNameEnglish.Text.Replace("\'", "\'\'");
            string UrlOfTaoBao = txttaobaoUrl.Text.Replace("\'", "\'\'");
            string KendLish = txtProductKeyWordsEnd.Text.Replace("\'", "\'\'");
            string ProductEngIntroDuctiuon = txtProductIntroDuctEng.Text.Replace("\'", "\'\'");
            string IsVisibly;
            string IsBaoyou;
            string IsRemai;
            string IsNew;
            string ss="\'\'";
            IsVisibly = chkIsDown.Checked ? "1" : "0";
            IsBaoyou = chkBaoyou.Checked ? "1" : "0";
            IsRemai = chbremai.Checked ? "1" : "0";
            IsNew = chbIsNew.Checked ? "1" : "0";
            if (!IsModitify)
            {
                if (!wuc_FileUpload.IsHaveFile())
                {
                    MessaegBoxConfrim("请选择图片文件！");
                    return;
                }
                wuc_FileUpload.MapPaths = "~/ProductImage/";
                wuc_FileUpload.UpFile();
                string ImgPath = wuc_FileUpload.ServerDianPath;
                string sql = "  INSERT INTO [XcXm].[dbo].[tblProductInfo] ( [ProductName_c] ,[ProductName_e],[ProductType],[ProductDescription_c],[ProductDescription_e]  ,[IsVisiable],[IsNew],[ImgPatjh],[ProductKey],[taobaoUrl],[price_last],[Price_now],[IsBY],[IsRm],[ProductState],ProductKeyEng)" +
                             " VALUES('" + txtNameChinese.Text + "','" + EnglishName + "'," + ddlProductType.SelectedValue + " ,'" + txtProductIntroDuct.Text + "','" + ProductEngIntroDuctiuon +
                             "'," + IsVisibly + "," + IsNew + ",'" + ImgPath + "'," + "'" + txtKetWords.Text + "', '" + UrlOfTaoBao + "' ," + priceLast + "," +
                             txtPriceNow.Text + "," + IsBaoyou + "," + IsRemai + ",30" + ",'" + KendLish + "')";
                //Label1.Text = sql;
                DB.CarryOutSqlSentence(sql);
                MessaegBoxConfrim("添加完成");
            }
            else
            {
                    if (wuc_FileUpload.IsHaveFile())
                    {
                        wuc_FileUpload.MapPaths = "~/ProductImage/";
                        wuc_FileUpload.UpFile();
                        string imgPath = wuc_FileUpload.ServerDianPath;
                        string sql = " UPDATE [XcXm].[dbo].[tblProductInfo] SET" + "ProductName_c ='" +
                                     txtNameChinese.Text + "',ProductName_e ='" + txtNameEnglish.Text.Replace("\'", ss) + "', ProductType=" +
                                     ddlProductType.SelectedValue +
                                     ",ProductDescription_c='" + txtProductIntroDuct.Text + "',ProductDescription_e='" +
                                     txtProductIntroDuctEng.Text.Replace("\'", ss) + "',IsVisiable=" + IsVisibly + ",IsNew=" + IsNew +
                                     ",taobaoUrl='" + txttaobaoUrl.Text.Replace("\'", ss) + "'"
                                     + ",price_last=" + txtPriceNow.Text + ",Price_now=" + priceLast + ",IsBY =" + IsBaoyou + ",IsRm=" + IsRemai + ",ProductKey='" + txtKetWords.Text + "',ImgPatjh='" + imgPath + "'" +
                                     "ProductKeyEng ='" + txtProductKeyWordsEnd.Text.Replace("\'", ss) + "'" + "WHERE ProductID=" + lblProductId.Text;
                        DB.CarryOutSqlSentence(sql);
                        MessaegBox("修改完毕");                      
                    }
                    else
                    {
                        string sql = " UPDATE [XcXm].[dbo].[tblProductInfo] SET " + "ProductName_c ='" +
                                     txtNameChinese.Text + "',ProductName_e ='" + txtNameEnglish.Text.Replace("\'", ss) + "', ProductType=" +
                                     ddlProductType.SelectedValue +
                                     ",ProductDescription_c='" + txtProductIntroDuct.Text + "',ProductDescription_e='" +
                                     txtProductIntroDuctEng.Text.Replace("\'", ss) + "',IsVisiable=" + IsVisibly + ",IsNew=" + IsNew +
                                     ",taobaoUrl='" + txttaobaoUrl.Text.Replace("\'", ss) + "'"
                                     + ",price_last=" + txtPriceNow.Text + ",Price_now=" + priceLast + ",IsBY =" + IsBaoyou + ",IsRm=" + IsRemai + ",ProductKey='" + txtKetWords.Text
                                     + "'," + "ProductKeyEng ='" + txtProductKeyWordsEnd.Text.Replace("\'", ss) + "'" + "WHERE ProductID=" + lblProductId.Text;
                        DB.CarryOutSqlSentence(sql);
                        MessaegBox("修改完毕");                        
                    }
                }
            lblProductId.Text = "自动编号";
            ChangeProductNull();
            ChangeProductEnableTrue();
        }
    }
}