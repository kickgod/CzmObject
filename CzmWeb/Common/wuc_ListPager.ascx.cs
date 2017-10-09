using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CzmObject.Common
{
    public partial class wuc_ListPager : System.Web.UI.UserControl
    {
        public Int32 PageSize; //分页每页行数目
        public Int32 RowCount = 0;   //总函数
        public DataTable BindData;  //绑定数据 存入的数据
        public DataTable BindOutData; //对外数据; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (ViewState["List"] != null)
                {
                    BindData = (DataTable) ViewState["List"];
                    RowCount = BindData.Rows.Count;
                }
                else
                {
                    MessaegBox("kongshuju");
                }
            }
        }
        public DataTable GetDateBind(DataTable td)
        {
            BindData = td.Copy();
            RowCount = td.Rows.Count;
            //数据量
            lblCountDate.Text = RowCount.ToString();
            //得到总页数 
            //如何页数小与分页数量 则无法点击下页 上页 
            if (RowCount <= PageSize)
            {
                lbtnFirstPage.Enabled = false;
                lbtnLastPage.Enabled = false;
                lbtnNextPage.Enabled = false;
                lbtnUpPage.Enabled = false;
            }
            else
            {
                lbtnFirstPage.Enabled = true;
                lbtnLastPage.Enabled = true;
                lbtnNextPage.Enabled = true;
                lbtnUpPage.Enabled = true;               
            }
            //得到页面数量
            if (RowCount % PageSize == 0)
            {
                 lblAllPage.Text = (RowCount / PageSize).ToString();
            }
            else
            {
                lblAllPage.Text = ((RowCount/PageSize) + 1).ToString();
            }
            DataTable FisrtPager = td.Clone();
            //数据量小于单页面数量
            DataRow[] rows = td.Select();
            if (RowCount <= PageSize)
            {
                for (int i = 0; i < RowCount; i++)
                {

                    FisrtPager.Rows.Add(rows[i].ItemArray);
                }
            }
            else if (RowCount>PageSize)
            {
                for (int i = 0; i < PageSize; i++)
                {
                    FisrtPager.Rows.Add(rows[i].ItemArray);
                }               
            }
            //返回数据
            ViewState["List"] = BindData.Copy();
            BindOutData = FisrtPager;
            return FisrtPager;
        }
        protected void btnFirstPage_Click(object sender, EventArgs e)
        {
            if (BindData!= null)
            {
                //已经在首页则点击无效
                if (lblCurPage.Text != "1")
                {
                    DataTable BackTable = new DataTable();
                    BackTable = BindData.Clone();
                    if (RowCount <= PageSize)
                    {
                        for (int i = 0; i < RowCount; i++)
                        {
                            BackTable.Rows.Add(BindData.Rows[i].ItemArray);
                        }
                    }
                    else
                    {
                        for (int i = 0; i < PageSize; i++)
                        {
                            BackTable.Rows.Add(BindData.Rows[i].ItemArray);
                        }
                    }
                    BindOutData = BackTable.Copy();
                    BackTable.Dispose();
                    lblCurPage.Text = "1";
                    Bind();
                }
            }
            else
            {
                MessaegBox("你知道的");
            }
        }
        protected void lbtnUpPage_Click(object sender, EventArgs e)
        {
            if (BindData != null)
            {
                DataTable BackTable = new DataTable();
                BackTable = BindData.Clone();
                int CountStart;
                //首页不跳转
                if (lblCurPage.Text == "1")
                {
                    return;
                }
                else
                {
                    CountStart = (Convert.ToInt32(lblCurPage.Text) - 2) * PageSize;
                    int count = Convert.ToInt32(lblCurPage.Text);
                    for (int i = CountStart; i < CountStart + PageSize; i++)
                    {
                        BackTable.Rows.Add(BindData.Rows[i].ItemArray);
                    }
                    BindOutData = BackTable;
                    lblCurPage.Text = (count - 1).ToString();
                    Bind();
                }
             }
        }
        private   void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void lbtnNextPage_Click(object sender, EventArgs e)
        {
            if (BindData != null)
            {
                //已经是最后一页则不跳转
                DataTable BackTable = new DataTable();
                BackTable = BindData.Clone();
                if (lblCurPage.Text.Trim() == lblAllPage.Text)
                {
                    return;
                }
                else
                {
                    int Count = Convert.ToInt32(lblCurPage.Text);
                    //如果下一页为最后一页
                    if (Count + 1 == Convert.ToInt32(lblAllPage.Text))
                    {
                        for (int i = Count * PageSize; i < RowCount; i++)
                        {
                            BackTable.Rows.Add(BindData.Rows[i].ItemArray);
                        }
                    }//如果下一页不是最后一页
                    else
                    {
                        for (int i = Count * PageSize; i < (Count + 1) * PageSize; i++)
                        {
                            BackTable.Rows.Add(BindData.Rows[i].ItemArray);
                        }                    
                    }
                    BindOutData = BackTable;
                    lblCurPage.Text = (Count + 1).ToString();
                }
                Bind();
            }

        }
        protected void lbtnLastPage_Click(object sender, EventArgs e)
        {
            if (BindData != null)
            {
                DataTable BackTable = new DataTable();
                BackTable = BindData.Clone();
                if (lblCurPage.Text == lblAllPage.Text)
                {
                    return;
                }
                else
                {
                    int Countpages = Convert.ToInt32(lblAllPage.Text);
                    for (int i = (Countpages - 1) * PageSize; i < Convert.ToInt32(lblCountDate.Text); i++)
                    {
                        BackTable.Rows.Add(BindData.Rows[i].ItemArray);
                    }
                    BindOutData = BackTable;
                    lblCurPage.Text = lblAllPage.Text;
                }
                Bind();
            }

        }
        #region 定义事件
        public delegate void CustomerEventHandler(object sender, EventArgs e);
        //public delegate void CusomerEventTowHandler(object sender, EventArgs e);
        //public event CusomerEventTowHandler BindDataToControl;
        public event CustomerEventHandler BindList;
        public virtual void OnBindList()
        {
            if (BindList != null)
            {
                BindList(this, EventArgs.Empty);
            }
        }
        public void Bind()
        {
            OnBindList();
        }
        #endregion
    }
}