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
    public partial class AddProductList : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                binds();
                BindData();                
            }
        }
        /// <summary>
        /// 你懂的排序 用户排序的控件
        /// </summary>
        private void binds()
        {
            if (lblWhere.Text == "")
            {
                DataTable tds = getView.GetAllDataFrom_vwproductInfo();
                wuc_ListPager1.PageSize = 20;
                wuc_ListPager1.GetDateBind(tds);
                ProductCount.Text = wuc_ListPager1.BindOutData.Rows.Count.ToString();
                rpItem.DataSource = wuc_ListPager1.BindOutData;
                rpItem.DataBind();
            }
            else
            {
                DataTable tds = getView.GetAllDataFrom_vwproductInfo(lblWhere.Text);
                wuc_ListPager1.PageSize = 10;
                wuc_ListPager1.GetDateBind(tds);
                ProductCount.Text = wuc_ListPager1.BindOutData.Rows.Count.ToString();
                rpItem.DataSource = wuc_ListPager1.BindOutData;
                rpItem.DataBind();
            }
        }
        protected void wuc_ListPager1_OnBindList(object sender, EventArgs e)
        {
            wuc_ListPager1.PageSize = 20;
            DataTable tds = new DataTable();
            if (lblWhere.Text == "")
            {
                tds = getView.GetAllDataFrom_vwproductInfo(lblWhere.Text);
            }
            else
            {
                tds = getView.GetAllDataFrom_vwproductInfo();
            }
            wuc_ListPager1.BindData = tds;
            ProductCount.Text = wuc_ListPager1.BindOutData.Rows.Count.ToString();
            rpItem.DataSource = wuc_ListPager1.BindOutData;
            if (wuc_ListPager1.BindOutData == null)
            {
                MessaegBox("HeiHei BindOutData is NULL");
            }
            rpItem.DataBind();
        }
        /// <summary>
        /// 绑定两个DropDownList数据
        /// </summary>
        private void BindData()
        {
            ddlCheckType.Items.Clear();
            ddlProductType.Items.Clear();
            ListItem item=new ListItem();
            item.Value = "-1";
            item.Text = "-- 不选 --";
            ddlCheckType.Items.Add(item);
            ddlProductType.Items.Add(item);
            ddlShoosProductTypes.Items.Add(item);
            DataTable td = getTable.GetAllDataFromtblProductTypeInfo();
            if (td.Rows.Count > 0)
            {
                foreach (DataRow row in td.Rows)
                {
                    ListItem itemSItem=new ListItem();
                    itemSItem.Value = row["typeID"].ToString();
                    itemSItem.Text = row["typeName_c"].ToString();
                    ddlCheckType.Items.Add(itemSItem);
                    ddlProductType.Items.Add(itemSItem);
                    ddlShoosProductTypes.Items.Add(itemSItem);
                }
            }
        }

        private void ChengNull()
        {
            ddlCheckType.SelectedValue = "-1";
            txtTypeNameChe.Text = "";
            txtTypeNameEng.Text = "";
        }
        private void ChengEnableFalse()
        {
            txtTypeNameChe.Enabled = false;
            txtTypeNameEng.Enabled = false;
        }
        private void ChengEnableTrue()
        {
            txtTypeNameChe.Enabled = true;
            txtTypeNameEng.Enabled = true;
        }
        protected void btnAdd_OnClick(object sender, EventArgs e)
        {
            ChengNull();
            ChengEnableTrue();
        }

        protected void btnEdit_OnClick(object sender, EventArgs e)
        {
            ChengNull();
            ChengEnableTrue();          
        }

        protected void btnSave_OnClick(object sender, EventArgs e)
        {
            if (txtTypeNameEng.Enabled==false)
            {
                MessaegBoxConfrim("请选择编辑！");
                return;
            }
            bool IsModitify;
            if (ddlCheckType.SelectedValue != "-1")
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
            string ChineseseName = txtTypeNameChe.Text;
            string EnglishName = txtTypeNameEng.Text;
            if (IsModitify)
            {
                string sqlUpdate = "UPDATE [XcXm].[dbo].[tblProductTypeInfo] SET typeName_c ='" + ChineseseName +"' ,typeName_e='" + EnglishName + "' WHERE typeID=" + ddlCheckType.SelectedValue;
                DB.CarryOutSqlSentence(sqlUpdate);
                MessaegBox("修改完成");
            }
            else
            {
                string sqlInsert = "INSERT INTO [XcXm].[dbo].[tblProductTypeInfo](typeName_c,typeName_e,TypeState,TypeIsVisiable) VALUES('" + ChineseseName + "','" + EnglishName + "',30,1) ";
                DB.CarryOutSqlSentence(sqlInsert);
                MessaegBox("添加完成");
            }
            BindData();
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
        protected void ddlCheckType_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCheckType.SelectedValue == "-1")
            {
                ChengEnableTrue();
                ChengNull();
            }
            else
            {
                DataTable td = getTable.GetAllDataFromtblProductTypeInfo("typeID ="+ddlCheckType.SelectedValue);
                if (td.Rows.Count == 1)
                {
                    txtTypeNameChe.Text = td.Rows[0]["typeName_c"].ToString();
                    txtTypeNameEng.Text = td.Rows[0]["typeName_e"].ToString();
                    ChengEnableFalse();
                }
            }
        }

        private void ChangeProductNull()
        {
            txtNameChinese.Text = "";
            txtNameEnglish.Text = "";
            ddlProductType.SelectedValue= "-1";
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
            if (ddlProductType.SelectedValue=="-1")
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
                wuc_FileUpload.MapPaths="~/ProductImage/";
                wuc_FileUpload.UpFile();
                string ImgPath = wuc_FileUpload.ServerDianPath;
                string sql = "  INSERT INTO [XcXm].[dbo].[tblProductInfo] ( [ProductName_c] ,[ProductName_e],[ProductType],[ProductDescription_c],[ProductDescription_e]  ,[IsVisiable],[IsNew],[ImgPatjh],[ProductKey],[taobaoUrl],[price_last],[Price_now],[IsBY],[IsRm],[ProductState],ProductKeyEng)" +
                    " VALUES('" + txtNameChinese.Text + "','" + txtNameEnglish + "'," + ddlProductType.SelectedValue + " ,'" + txtProductIntroDuct.Text + "','" + txtProductIntroDuctEng.Text +
                    "'," + IsVisibly + "," + IsNew + ",'" + ImgPath + "'," + "'" + txtKetWords.Text + "', '" + txttaobaoUrl.Text + "' ," + priceLast + "," +
                     txtPriceNow.Text + "," + IsBaoyou + "," + IsRemai + ",30" + "," + txtProductKeyWordsEnd.Text+ ")";
                DB.CarryOutSqlSentence(sql);
                MessaegBoxConfrim("添加完成");
            }
            else
            {
                bool IsHvaeFile= wuc_FileUpload.IsHaveFile();
                if (IsHvaeFile)
                {
                    wuc_FileUpload.MapPaths="~/ProductImage/";
                    wuc_FileUpload.UpFile();
                    string imgPath = wuc_FileUpload.ServerDianPath;
                    string sql = " UPDATE [XcXm].[dbo].[tblProductInfo] SET" + "ProductName_c ='" +
                                 txtNameChinese.Text + "',ProductName_e ='" + txtNameEnglish + "', ProductType=" +
                                 ddlProductType.SelectedValue +
                                 ",ProductDescription_c='" + txtProductIntroDuct.Text + "',ProductDescription_e='" +
                                 txtProductIntroDuctEng.Text + "',IsVisiable=" + IsVisibly + ",IsNew=" + IsNew +
                                 ",taobaoUrl='" + txttaobaoUrl.Text + "'"
                                 + ",price_last="+txtPriceNow.Text+",Price_now="+priceLast+",IsBY ="+IsBaoyou+",IsRm="+IsRemai+",ProductKey='"+txtKetWords.Text+"',ImgPatjh='"+imgPath+"'"+
                                 ",ProductKeyEng ='"+txtProductKeyWordsEnd.Text+"'"+"WHERE ProductID=" + lblProductId.Text;
                    Response.Write(sql);
                    //DB.CarryOutSqlSentence(sql);
                    MessaegBox("修改完毕");

                }
            }

        }

        protected void rpItem_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void rpItem_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }

        private void CheckSql()
        {
            string where = " ProductID >0";
            if (ddlShoosProductTypes.SelectedValue != "-1")
            {
                where += " and ProductType =" + ddlShoosProductTypes.SelectedValue;
            }
            if (ddlIiBaoyou.SelectedValue != "-1")
            {
                where +=" and IsBY="   +ddlIiBaoyou.SelectedIndex;
            }
            if (ddlLiRemai.SelectedValue != "-1")
            {
                where +=" and IsRm"   +ddlLiRemai.SelectedIndex;
            }
            if (ddlIsXiajia.SelectedValue != "-1")
            {
                where +=" and IsVisiable"   +ddlIsXiajia.SelectedIndex;
            }
            if (ddlISnew.SelectedValue != "-1")
            {
                where +=" and IsNew"   +ddlISnew.SelectedIndex;
            }
            if (txtKeyMiaoshu.Text != "")
            {
                where += " and ProductDescription_c like '%" + txtKeyMiaoshu.Text + "%' or ProductDescription_e like '%" + txtKeyMiaoshu.Text + "%'";
            }
            if (txtProductKey.Text != "")
            {
                where += " and ProductKeyEng like '%" + txtProductKey.Text + "%' or ProductKey like '%" + txtProductKey.Text + "%'";
            }
            //lblWhere.Text = where;
            //lblWhere.Visible = true;
            binds();
        }

        protected void Button6_Click1(object sender, EventArgs e)
        {
            CheckSql();
        }
    }
}