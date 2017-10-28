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
    public partial class InvestPlaceAdd : System.Web.UI.Page
    {
        GetDataFromTable getTable = new GetDataFromTable();
        GetDataFromView getView = new GetDataFromView();
        PublicGetDataFromDB DB = new PublicGetDataFromDB();
        SendPhoneMessage send = new SendPhoneMessage();
        PublicUserJudge Judge = new PublicUserJudge();
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
            tnTop.Text = "省市列表";
            tnTop.Value = "0";
            DataTable tBase = getTable.GetAllDataFromtblProvinceRegionList();
            for (int i = 0; i < tBase.Rows.Count; i++)
            {
                TreeNode tnNode = new TreeNode();
                tnNode.Text = tBase.Rows[i]["ProvinceName_c"].ToString().Trim() +" |英文:"+ tBase.Rows[i]["ProvinceName_e"].ToString().Trim();
                tnNode.Value ="P"+ tBase.Rows[i]["ProvinceID"].ToString().Trim();
                tnTop.ChildNodes.Add(CreateSubMenu(tnNode, tnNode.Value.Replace('P',' ')));
            }
            trvNode.Nodes.Add(tnTop);
            trvNode.ExpandAll();
        }
        private TreeNode CreateSubMenu(TreeNode tnTop, string pid)
        {
            DataTable tsubmnu = getTable.GetAllDataFromtblDowntownRegionList("ProvinceId =" + pid);
            for (int j = 0; j < tsubmnu.Rows.Count; j++)
            {
                TreeNode tnSubMenu = new TreeNode();
                tnSubMenu.Text = tsubmnu.Rows[j]["RegionName_c"].ToString().Trim() + " |英文:" + tsubmnu.Rows[j]["RegionName_e"].ToString().Trim(); ;
                tnSubMenu.Value ="R"+ tsubmnu.Rows[j]["RegionID"].ToString().Trim();
                tnTop.ChildNodes.Add(tnSubMenu);
            }
            return tnTop;
        }

        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        private void MessageBoxLanguge(string Chinese, string English)
        {
            if (Session["Lang"].ToString() == "CHE" || Session["Lang"] == null)
            {
                MessaegBox(Chinese);
            }
            else
            {
                MessaegBox(English);
            }
        }
        private void ChangeFromEnableFalse()
        {
            txtBoxENGname.Enabled = false;
            txtBoxCHNname.Enabled = false;
        }
        private void ChangeFromEnableTrue()
        {
            txtBoxENGname.Enabled = true;
            txtBoxCHNname.Enabled = true;
        }

        private void ChangeNull()
        {
            txtBoxENGname.Text = "";
            txtBoxCHNname.Text = "";
            lblProvinceId.Text = "自动编号";
            lblFuji.Text = "";
            lblFujiRegion.Text = "";
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
                    DataTable td = getTable.GetAllDataFromtblProvinceRegionList("ProvinceID= " + ProvinceIdSelet);
                    if (td.Rows.Count == 1)
                    {
                        lblFujiRegion.Text ="-"+tnSelected.Value;
                        lblProvinceId.Text = "P" + td.Rows[0]["ProvinceID"].ToString();
                        txtBoxCHNname.Text = td.Rows[0]["ProvinceName_c"].ToString();
                        txtBoxENGname.Text = td.Rows[0]["ProvinceName_e"].ToString();
                        lblFuji.Text = "省市列表";
                    }
                }
                /*如果是二级城市*/
                if (parentNode.Value.ToString() != "0")
                {
                    btnAdd.Visible = false;
                    btnDelete.Visible = true;
                    string RegiuonSelect = tnSelected.Value.Replace('R', ' ');
                    DataTable td = getTable.GetAllDataFromtblDowntownRegionList("RegionID= " + RegiuonSelect);
                    if (td.Rows.Count == 1)
                    {
                        lblFujiRegion.Text ="-"+tnSelected.Value;
                        lblProvinceId.Text = "R" + td.Rows[0]["RegionID"].ToString();
                        txtBoxCHNname.Text = td.Rows[0]["RegionName_c"].ToString();
                        txtBoxENGname.Text = td.Rows[0]["RegionName_e"].ToString();
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
                txtBoxENGname.Text = "省市列表";
                txtBoxCHNname.Text = "省市列表";
            }
            ChangeFromEnableFalse();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (lblFuji.Text=="")
            {
                MessaegBox("请选择地区级别");
                return;
            }
            lblFujiRegion.Visible = true;
            string ParentRegionId = lblProvinceId.Text;
            lblFuji.Text =  txtBoxCHNname.Text;
            lblFujiRegion.Text ="-"+ ParentRegionId ;
            lblProvinceId.Text = "自动编号";
            txtBoxCHNname.Text = "";
            txtBoxENGname.Text = "";
            txtBoxENGname.Enabled = true;
            txtBoxCHNname.Enabled = true;
            btnAdd.Visible = false;
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            if (lblProvinceId.Text == "自动编号")
            {
                MessaegBox("请选着一个地区！");
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
                MessaegBox("请选着一个地区！");
                return;
            }
            else
            {
                string str = lblProvinceId.Text;
                char strChar = lblProvinceId.Text.First();
                if (strChar=='P')
                {
                    string sql = "  DELETE FROM [XcXm].[dbo].[tblProvinceRegionList] WHERE ProvinceID="+str.Replace('P',' ');
                    int count = DB.CarryOutSqlSentence(sql);
                    if (count == 1)
                    {
                        MessaegBox("已经删除！");
                        ChangeNull();
                        InitTreeView();
                    }
                }
                else if (strChar == 'R')
                {
                    string sql = "  DELETE FROM [XcXm].[dbo].[tblDowntownRegionList] WHERE RegionID=" + str.Replace('R', ' ');
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
            if (txtBoxENGname.Enabled==false)
            {
                MessaegBox("尚未修改信息");
                return;              
            }
            if (lblFujiRegion.Text == "")
            {
                MessaegBox("未选择添加所属区域");
                return;
            }
            if (txtBoxCHNname.Text=="")
            {
                MessaegBox("请输入中文名称！");
                return;               
            }
            if (txtBoxENGname.Text == "")
            {
                MessaegBox("请输入英文文名称！");
                return;
            }
            bool IsModitify = lblProvinceId.Text != "自动编号";
            string ss = "\'\'";
            if (IsModitify)
            {
                string ChangeTable = lblProvinceId.Text.Substring(0,1);
                if (ChangeTable == "P")
                {
                    String sqlwhere = " UPDATE [XcXm].[dbo].[tblProvinceRegionList] SET ProvinceName_c='" + txtBoxCHNname.Text.Replace("\'", ss) + "',ProvinceName_e='"+txtBoxENGname.Text.Replace("\'", ss)+"' WHERE ProvinceID= "+lblProvinceId.Text.Replace('P',' ').Replace('-',' ');
                    int count = DB.CarryOutSqlSentence(sqlwhere);
                    if (count == 1)
                    {
                        MessaegBox("修改成功！");
                    }
                    else
                    {
                        throw new  Exception("修改失败 错误0001");
                    }
                }
                else if (ChangeTable == "R")
                {
                    String sqlwhere = " UPDATE [XcXm].[dbo].[tblDowntownRegionList] SET RegionName_c='" + txtBoxCHNname.Text.Replace("\'", ss) + "',RegionName_e='" + txtBoxENGname.Text.Replace("\'", ss) + "' WHERE RegionID= " + lblProvinceId.Text.Replace('R', ' ').Replace('-', ' ');
                    int count = DB.CarryOutSqlSentence(sqlwhere);
                    if (count==1)
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
                string ChangeTable = lblFujiRegion.Text.Substring(1,1);
                if (ChangeTable == "0")
                {

                    String sqlwhere =
                        "  INSERT INTO [XcXm].[dbo].[tblProvinceRegionList](ProvinceName_c,ProvinceName_e)  VALUES('" +
                        txtBoxCHNname.Text.Replace("\'", ss) + "','" + txtBoxENGname.Text.Replace("\'", ss) + "')";
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
                    string sqlProvinceID = lblFujiRegion.Text.Replace('P',' ').Replace('-',' '); ;
                    String sqlwhere =
                        "  INSERT INTO [XcXm].[dbo].[tblDowntownRegionList](RegionName_c,RegionName_e,ProvinceId)  VALUES('" +
                        txtBoxCHNname.Text.Replace("\'", ss) + "','" + txtBoxENGname.Text.Replace("\'", ss) + "'," + sqlProvinceID + ")";
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