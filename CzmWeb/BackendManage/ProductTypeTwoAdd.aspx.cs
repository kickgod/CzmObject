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
    public partial class ProductTypeTwoAdd : System.Web.UI.Page
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
                btnDelete.Visible = false;
                ChangeFromEnableFalse();
                InitTreeView();
            }
        }
        private void MessageBoxResponse(string msg)
        {
            Response.Write("<script>alert('" + msg + "');location.href='../BackendManage/AdminLogin.aspx';</script>");
        }
        private void InitTreeView()
        {
            trvNode.Nodes.Clear();
            TreeNode tnTop = new TreeNode();
            tnTop.Text = "产品类别";
            tnTop.Value = "0";
            DataTable tBase = getTable.GetAllDataFromtblProductTypeInfo();
            for (int i = 0; i < tBase.Rows.Count; i++)
            {
                TreeNode tnNode = new TreeNode();
                tnNode.Text = tBase.Rows[i]["typeName_c"].ToString().Trim() + " |英文:" + tBase.Rows[i]["typeName_e"].ToString().Trim();
                tnNode.Value = "P" + tBase.Rows[i]["typeID"].ToString().Trim();
                tnTop.ChildNodes.Add(CreateSubMenu(tnNode, tnNode.Value.Replace('P', ' ')));
            }
            trvNode.Nodes.Add(tnTop);
            trvNode.ExpandAll();
        }
        private TreeNode CreateSubMenu(TreeNode tnTop, string pid)
        {
            DataTable tsubmnu = getTable.GetAllDataFromtblProductTypeTwoInfo("typeID =" + pid);
            for (int j = 0; j < tsubmnu.Rows.Count; j++)
            {
                TreeNode tnSubMenu = new TreeNode();
                tnSubMenu.Text = tsubmnu.Rows[j]["TypeNameCHM"].ToString().Trim() + " |英文:" + tsubmnu.Rows[j]["TypeNameENG"].ToString().Trim(); ;
                tnSubMenu.Value = "R" + tsubmnu.Rows[j]["TypeTwoId"].ToString().Trim();
                tnTop.ChildNodes.Add(tnSubMenu);
            }
            return tnTop;
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        private void ChangeFromEnableFalse()
        {
            txtBoxENGname.Enabled = false;
            txtBoxCHNname.Enabled = false;
            txtDescriptionENG.Enabled = false;
            txtDescriptionCHN.Enabled = false;
            txtTaoBaoDizhi.Enabled = false;
        }
        private void ChangeFromEnableTrue()
        {
            txtBoxENGname.Enabled = true;
            txtBoxCHNname.Enabled = true;
            txtDescriptionENG.Enabled = true;
            txtDescriptionCHN.Enabled = true;
            txtTaoBaoDizhi.Enabled = true;
        }
        private void ChangeNull()
        {
            txtBoxENGname.Text = "";
            txtBoxCHNname.Text = "";
            lblProvinceId.Text = "自动编号";
            lblFuji.Text = "";
            lblFujiRegion.Text = "";
            txtDescriptionENG.Text = "";
            txtTaoBaoDizhi.Text = "";
            txtDescriptionCHN.Text = "";
        }
        protected void trvNode_SelectedNodeChanged1(object sender, EventArgs e)
        {
            TreeNode tnSelected = trvNode.SelectedNode;
            TreeNode parentNode = tnSelected.Parent;
            if (parentNode != null)
            {
                /*如果省市情况*/
                if (parentNode.Value.ToString() == "0")
                {
                    /**一级地区的信息**/
                    btnAdd.Visible = true;
                    btnDelete.Visible = true;
                    string ProvinceIdSelet = tnSelected.Value.Replace('P', ' ');
                    DataTable td = getTable.GetAllDataFromtblProductTypeInfo("typeID= " + ProvinceIdSelet);
                    if (td.Rows.Count == 1)
                    {
                        lblFujiRegion.Text = "-" + tnSelected.Value;
                        lblProvinceId.Text = "P" + td.Rows[0]["typeID"].ToString();
                        txtBoxCHNname.Text = td.Rows[0]["typeName_c"].ToString();
                        txtBoxENGname.Text = td.Rows[0]["typeName_e"].ToString();
                        txtDescriptionCHN.Text = td.Rows[0]["TypeDecription_c"].ToString();
                        txtDescriptionENG.Text = td.Rows[0]["TypeDecription_e"].ToString();
                        txtTaoBaoDizhi.Text ="";
                        lblFuji.Text = "产品类比";
                    }
                }
                /*如果是二级城市*/
                if (parentNode.Value.ToString() != "0")
                {
                    btnAdd.Visible = false;
                    btnDelete.Visible = true;
                    string RegiuonSelect = tnSelected.Value.Replace('R', ' ');
                    DataTable td = getTable.GetAllDataFromtblProductTypeTwoInfo("TypeTwoId= " + RegiuonSelect);
                    if (td.Rows.Count == 1)
                    {
                        lblFujiRegion.Text = "-" + tnSelected.Value;
                        lblProvinceId.Text = "R" + td.Rows[0]["TypeTwoId"].ToString();
                        txtBoxCHNname.Text = td.Rows[0]["TypeNameCHM"].ToString();
                        txtBoxENGname.Text = td.Rows[0]["TypeNameENG"].ToString();
                        txtDescriptionCHN.Text = td.Rows[0]["TypeDecription2_c"].ToString();
                        txtDescriptionENG.Text = td.Rows[0]["TypeDecription2_e"].ToString();
                        txtTaoBaoDizhi.Text = td.Rows[0]["Taobao"].ToString();
                        lblFuji.Text = parentNode.Text;
                    }
                }
            }
            else
            {
                btnDelete.Visible = false;
                btnAdd.Visible = true;
                lblProvinceId.Text = "0";
                lblFujiRegion.Text = "-" + tnSelected.Value;
                lblFuji.Text = "已是顶层";
                txtBoxENGname.Text = "产品类比";
                txtBoxCHNname.Text = "产品类比";
            }
            ChangeFromEnableFalse();

        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (lblFuji.Text == "")
            {
                MessaegBox("请选择类别级别");
                return;
            }
            lblFujiRegion.Visible = true;
            string ParentRegionId = lblProvinceId.Text;
            lblFuji.Text = txtBoxCHNname.Text;
            lblFujiRegion.Text = "-" + ParentRegionId;
            lblProvinceId.Text = "自动编号";
            txtBoxCHNname.Text = "";
            txtBoxENGname.Text = "";
            txtDescriptionENG.Text = "";
            txtDescriptionCHN.Text = "";
            txtDescriptionENG.Enabled = true;
            txtDescriptionCHN.Enabled=true;
            txtBoxENGname.Enabled = true;
            txtBoxCHNname.Enabled = true;
            txtTaoBaoDizhi.Enabled = true;
            btnAdd.Visible = false;
        }
        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (lblProvinceId.Text == "自动编号")
            {
                MessaegBox("请选着一个类别！");
                return;
            }
            if (lblProvinceId.Text == "	0")
            {
                MessaegBox("顶级节点无法操作！");
                return;
            }
            else
            {
                ChangeFromEnableTrue();
            }
        }
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (lblProvinceId.Text == "	0")
            {
                MessaegBox("顶级节点无法操作！");
                return;
            }

            if (lblProvinceId.Text == "自动编号")
            {
                MessaegBox("请选着一个类别！");
                return;
            }
            else
            {
                string str = lblProvinceId.Text;
                char strChar = lblProvinceId.Text.First();
                if (strChar == 'P')
                {
                    string sqls = " DELETE FROM [XcXm].[dbo].[tblProductTypeInfo] WHERE typeID=" + str.Replace('P', ' ');
                    string sqlt = " DELETE FROM [XcXm].[dbo].[tblProductInfo] WHERE ProductKey=" + str.Replace('P', ' ');
                    string sql = "  DELETE FROM [XcXm].[dbo].[tblProductTypeTwoInfo] WHERE typeID=" + str.Replace('P', ' ');
                    int count = DB.CarryOutSqlSentence(sql);
                    int counts = DB.CarryOutSqlSentence(sqlt);
                    int count2 = DB.CarryOutSqlSentence(sqls);
                    if (count == 1)
                    {
                        MessaegBox("已经删除！");
                        ChangeNull();
                        InitTreeView();
                    }
                }
                else if (strChar == 'R')
                {
                    string sql = "  DELETE FROM [XcXm].[dbo].[tblProductTypeTwoInfo] WHERE TypeTwoId=" + str.Replace('R', ' ');
                    int count = DB.CarryOutSqlSentence(sql);
                    if (count == 1)
                    {
                        MessaegBox("已经删除！");
                        ChangeNull();
                        InitTreeView();
                    }
                }
            }
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (txtBoxENGname.Enabled == false)
            {
                MessaegBox("尚未修改信息");
                return;
            }
            if (lblFujiRegion.Text == "")
            {
                MessaegBox("未选择添加所属类别");
                return;
            }
            if (txtBoxCHNname.Text == "")
            {
                MessaegBox("请输入中文名称！");
                return;
            }
            if (txtBoxENGname.Text == "")
            {
                MessaegBox("请输入英文名称！");
                return;
            }
            if (txtDescriptionENG.Text == "")
            {
                MessaegBox("请输入英文描述！");
                return;
            }
            if (txtDescriptionCHN.Text == "")
            {
                MessaegBox("请输入中文名称！");
                return;
            }
            bool IsModitify = lblProvinceId.Text != "自动编号";
            string ss = "\'\'";
            if (IsModitify)
            {
                string ChangeTable = lblProvinceId.Text.Substring(0, 1);
                if (ChangeTable == "P")
                {
                    String sqlwhere = " UPDATE [XcXm].[dbo].[tblProductTypeInfo] SET  typeName_c='" + txtBoxCHNname.Text.Replace("\'", ss) + "',typeName_e='" + txtBoxENGname.Text.Replace("\'", ss) + "',TypeDecription_c= '" + txtDescriptionCHN.Text.Replace("\'", ss) + "', TypeDecription_e = '" + txtDescriptionENG.Text.Replace("\'", ss) + "' WHERE typeID= " + lblProvinceId.Text.Replace('P', ' ').Replace('-', ' ');
                    if (wuc_FileUpload.IsHaveFile())
                    {
                        wuc_FileUpload.UpFile();
                        string Address= wuc_FileUpload.ServerDianPath;
                        sqlwhere = " UPDATE [XcXm].[dbo].[tblProductTypeInfo] SET typeName_c='" + txtBoxCHNname.Text.Replace("\'", ss) + "',typeName_e='" + txtBoxENGname.Text.Replace("\'", ss) + "',TypeDecription_c= '" + txtDescriptionCHN.Text.Replace("\'", ss) + "', TypeDecription_e = '" + txtDescriptionENG.Text.Replace("\'", ss) + "' , TypePicture = '" +Address+ " ' WHERE typeID= " + lblProvinceId.Text.Replace('P', ' ').Replace('-', ' ');
                    }
                    int count = DB.CarryOutSqlSentence(sqlwhere);
                    if (count == 1)
                    {
                        MessaegBox("修改成功！");
                    }
                    else
                    {
                        throw new Exception("修改失败 错误0001");
                    }
                }
                else if (ChangeTable == "R")
                {
                    String sqlwhere = " UPDATE [XcXm].[dbo].[tblProductTypeTwoInfo] SET  Taobao ='" + txtTaoBaoDizhi.Text.Replace("\'", ss) + "' , TypeNameCHM='" + txtBoxCHNname.Text.Replace("\'", ss) + "',TypeNameENG='" + txtBoxENGname.Text.Replace("\'", ss) + "',TypeDecription2_c= '" + txtDescriptionCHN.Text.Replace("\'", ss) + "', TypeDecription2_e = '" + txtDescriptionENG.Text.Replace("\'", ss) + " ' WHERE TypeTwoId= " + lblProvinceId.Text.Replace('R', ' ').Replace('-', ' ');
                    if (wuc_FileUpload.IsHaveFile())
                    {
                        wuc_FileUpload.UpFile();
                        string Address = wuc_FileUpload.ServerDianPath;
                        sqlwhere = " UPDATE [XcXm].[dbo].[tblProductTypeTwoInfo] SET   Taobao ='" + txtTaoBaoDizhi.Text.Replace("\'", ss) + "', TypeNameCHM='" + txtBoxCHNname.Text.Replace("\'", ss) + "',TypeNameENG='" + txtBoxENGname.Text.Replace("\'", ss) + "',TypeDecription2_c= '" + txtDescriptionCHN.Text.Replace("\'", ss) + "', TypeDecription2_e = '" + txtDescriptionENG.Text.Replace("\'", ss) + "' , TypePictureTwo = '" + Address + " ' WHERE TypeTwoId= " + lblProvinceId.Text.Replace('R', ' ').Replace('-', ' ');
                    }
                    int count = DB.CarryOutSqlSentence(sqlwhere);
                    if (count == 1)
                    {
                        MessaegBox("修改成功！");
                    }
                    else
                    {
                        throw new Exception("修改失败 错误0001");
                    }
                }
                InitTreeView();
                btnDelete.Visible = false;
                ChangeNull();
            }
            else
            {
                if (!wuc_FileUpload.IsHaveFile())
                {
                    MessaegBox("请上传视频封面");
                    return;
                }
                wuc_FileUpload.UpFile();
                string Address = wuc_FileUpload.ServerDianPath;

                string ChangeTable = lblFujiRegion.Text.Substring(1, 1);
                if (ChangeTable == "0")
                {

                    String sqlwhere =
                        "  INSERT INTO [XcXm].[dbo].[tblProductTypeInfo](typeName_c,typeName_e,TypePicture,TypeDecription_c,TypeDecription_e)  VALUES('" +
                        txtBoxCHNname.Text.Replace("\'", ss) + "','" + txtBoxENGname.Text.Replace("\'", ss)+"','" +Address+ "', '"+txtDescriptionCHN.Text +"' ,'"+txtDescriptionENG.Text+
                        "')";
                    int count = DB.CarryOutSqlSentence(sqlwhere);
                    if (count == 1)
                    {
                        MessaegBox("添加成功！");
                    }
                    else
                    {
                        throw new Exception("添加失败 错误0002");
                    }
                }
                else if (ChangeTable == "P")
                {
                    string sqlProvinceID = lblFujiRegion.Text.Replace('P', ' ').Replace('-', ' '); ;
                    String sqlwhere =
                        "  INSERT INTO [XcXm].[dbo].[tblProductTypeTwoInfo](TypeNameCHM,TypeNameENG,typeID,TypePictureTwo,TypeDecription2_c,TypeDecription2_e,Taobao)  VALUES('" +
                        txtBoxCHNname.Text.Replace("\'", ss) + "','" + txtBoxENGname.Text.Replace("\'", ss) + "'," + sqlProvinceID + ",'" + Address + "', '" + txtDescriptionCHN.Text + "' ,'" + txtDescriptionENG.Text + "', '" + txtTaoBaoDizhi.Text.Replace("\'", ss) + "' )";
                    int count = DB.CarryOutSqlSentence(sqlwhere);
                    if (count == 1)
                    {
                        MessaegBox("添加成功！");
                    }
                    else
                    {
                        throw new Exception("添加失败 错误0002");
                    }
                }
                InitTreeView();
                lblFujiRegion.Text = "";
                btnDelete.Visible = false;
                ChangeNull();
            }
            btnAdd.Visible = true;
        }

    }
}