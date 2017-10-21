using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CzmWeb.Common
{
    public partial class wuc_PagerEng : System.Web.UI.UserControl
    {
        protected void lbtnFirst_Click(object sender, EventArgs e)
        {
            lblCurPageCount.Text = "1";
            Bind();
        }

        protected void lbtnPre_Click(object sender, EventArgs e)
        {
            lblCurPageCount.Text = (int.Parse(lblCurPageCount.Text) - 1).ToString();
            Bind();
        }

        protected void lbtnNext_Click(object sender, EventArgs e)
        {
            lblCurPageCount.Text = (int.Parse(lblCurPageCount.Text) + 1).ToString();
            Bind();
        }

        protected void lbtnLast_Click(object sender, EventArgs e)
        {
            try
            {
                lblCurPageCount.Text = lblTotalPageCount.Text;
                Bind();
            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }

        protected void ddlChangePage_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lblCurPageCount.Text = ddlChangePage.SelectedValue;
                Bind();
            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }

        protected void ddlChangePageSize_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                lblPageSize.Text = ddlChangePageSize.SelectedValue;
                Bind();
            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }

        #region 定义事件

        public delegate void CustomerEventHandler(object sender, EventArgs e);

        public event wucPager.CustomerEventHandler BindList;

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



        #region 内部数据

        //数据绑定
        public void LoadData(int totalCount)
        {
            if (totalCount.ToString() != lblTotalCount.Text)
            {
                lblCurPageCount.Text = "1";
            }

            lblTotalCount.Text = totalCount.ToString();

            int totalPageCount = 0;
            int pageSize = PageSize;
            if (pageSize == 0)
            {
                totalPageCount = 1;
            }
            else
            {
                if (totalCount % pageSize == 0)
                {
                    if (totalCount == 0)
                    {
                        totalPageCount = 1;
                    }
                    else
                    {
                        totalPageCount = totalCount / pageSize;
                    }
                }
                else
                {
                    totalPageCount = totalCount / pageSize + 1;
                }
            }
            lblTotalPageCount.Text = totalPageCount.ToString();

            //下拉列表
            ddlChangePage.Items.Clear();
            for (int i = 1; i <= totalPageCount; i++)
            {
                ListItem li = new ListItem(i.ToString()); //"第" + i.ToString() + "页", i.ToString());
                ddlChangePage.Items.Add(li);
            }
            try
            {
                ddlChangePage.SelectedValue = lblCurPageCount.Text;
            }
            catch
            {
                ddlChangePage.SelectedValue = "1";
                lblCurPageCount.Text = "1";
            }
            ddlChangePageSize.Items.Clear();
            for (int i = 10; i < 101; i += 5)
            {
                ListItem liSize = new ListItem(i.ToString(), i.ToString());
                ddlChangePageSize.Items.Add(liSize);
            }
            ListItem liAllSize = new ListItem("全部", "0");
            ddlChangePageSize.Items.Add(liAllSize);
            try
            {
                ddlChangePageSize.SelectedValue = lblPageSize.Text;
            }
            catch
            {
                lblPageSize.Text = totalCount.ToString();
                ddlChangePageSize.SelectedValue = lblPageSize.Text;
            }
            lbtnFirst.Enabled = true;
            lbtnPre.Enabled = true;
            lbtnNext.Enabled = true;
            lbtnLast.Enabled = true;
            lbtnFirst.Attributes.Add("onclick", "javascript:ShowWaitingDialog('数据处理中，请等待……');");
            lbtnPre.Attributes.Add("onclick", "javascript:ShowWaitingDialog('数据处理中，请等待……');");
            lbtnNext.Attributes.Add("onclick", "javascript:ShowWaitingDialog('数据处理中，请等待……');");
            lbtnLast.Attributes.Add("onclick", "javascript:ShowWaitingDialog('数据处理中，请等待……');");
            if (int.Parse(lblCurPageCount.Text) == 1)
            {
                lbtnFirst.Enabled = false;
                lbtnPre.Enabled = false;
                lbtnFirst.Attributes.Add("onclick", "javascript:return false;");
                lbtnPre.Attributes.Add("onclick", "javascript:return false;");
            }
            if (int.Parse(lblCurPageCount.Text) == int.Parse(lblTotalPageCount.Text))
            {
                lbtnNext.Enabled = false;
                lbtnLast.Enabled = false;
                lbtnNext.Attributes.Add("onclick", "javascript:return false;");
                lbtnLast.Attributes.Add("onclick", "javascript:return false;");
            }
        }

        /// <summary>
        /// 分页大小
        /// </summary>
        public int PageSize
        {
            get
            {
                try
                {
                    return int.Parse(lblPageSize.Text);
                }
                catch (Exception ex)
                {
                    lblInfo.Text = ex.Message.ToString();
                    return 0;
                }
            }
            set { lblPageSize.Text = value.ToString(); }
        }

        /// <summary>
        /// 当前页数
        /// </summary>
        public int CurPageCount
        {
            get
            {
                try
                {
                    return int.Parse(lblCurPageCount.Text);
                }
                catch (Exception ex)
                {
                    lblInfo.Text = ex.Message.ToString();
                    return 0;
                }
            }
            set
            {
                lblCurPageCount.Text = value.ToString();
                ddlChangePage.SelectedValue = value.ToString();
            }
        }

        #endregion
    }
}