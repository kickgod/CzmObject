using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace CzmWeb.App_Code
{
    /// <summary>
    ///显示进度条
    /// </summary>
    public class ProgressBar : System.Web.UI.Page
    {
        /// <summary>
        /// 最大值
        /// </summary>
        private int MaxValue
        {
            get
            {
                if (ViewState["MaxValue"] == null)
                {
                    return 0;
                }
                else
                {
                    return Convert.ToInt32(ViewState["MaxValue"]);
                }
            }
            set { ViewState["MaxValue"] = value; }
        }

        /// <summary>
        /// 当前值
        /// </summary>
        private int ThisValue
        {
            get
            {
                if (ViewState["ThisValue"] == null)
                {
                    return 0;
                }
                else
                {
                    return Convert.ToInt32(ViewState["ThisValue"]);
                }
            }
            set { ViewState["ThisValue"] = value; }
        }

        /// <summary>
        /// 当前页面
        /// </summary>
        System.Web.UI.Page m_page;

        /// <summary>
        /// 功能描述:构造函数
        /// 作　　者:huangzh
        /// 创建日期:2016-05-06 11:54:34
        /// 任务编号:
        /// </summary>
        /// <param name="page">当前页面</param>
        public ProgressBar(System.Web.UI.Page page)
        {
            m_page = page;
        }

        public void SetMaxValue(int intMaxValue)
        {
            MaxValue = intMaxValue;
        }

        /// <summary>
        /// 功能描述:初始化进度条
        /// 作　　者:huangzh
        /// 创建日期:2016-05-06 11:55:26
        /// 任务编号:
        /// </summary>
        public void InitProgress()
        {
            //根据ProgressBar.htm显示进度条界面
            string templateFileName = AppDomain.CurrentDomain.BaseDirectory + "ProgressBar.htm";
            StreamReader reader = new StreamReader(@templateFileName, System.Text.Encoding.GetEncoding("GB2312"));
            string strhtml = reader.ReadToEnd();
            reader.Close();
            m_page.Response.Write(strhtml);
            m_page.Response.Flush();
        }

        /// <summary>
        /// 功能描述:设置标题
        /// 作　　者:huangzh
        /// 创建日期:2016-05-06 11:55:36
        /// 任务编号:
        /// </summary>
        /// <param name="strTitle">strTitle</param>
        public void SetTitle(string strTitle)
        {
            string strjsBlock = "<script>SetTitle('" + strTitle + "'); </script>";

            m_page.Response.Write(strjsBlock);
            m_page.Response.Flush();
        }

        /// <summary>
        /// 功能描述:设置进度
        /// 作　　者:huangzh
        /// 创建日期:2016-05-06 11:55:45
        /// 任务编号:
        /// </summary>
        /// <param name="percent">percent</param>
        public void AddProgress(int intpercent)
        {
            ThisValue = ThisValue + intpercent;
            double dblstep = ((double)ThisValue / (double)MaxValue) * 100;

            string strjsBlock = "<script>SetPorgressBar('" + dblstep.ToString("0.00") + "'); </script>";

            m_page.Response.Write(strjsBlock);
            m_page.Response.Flush();
        }


        public void DisponseProgress()
        {
            string strjsBlock = "<script>SetCompleted();</script>";
            m_page.Response.Write(strjsBlock);
            m_page.Response.Flush();
        }
    }
}