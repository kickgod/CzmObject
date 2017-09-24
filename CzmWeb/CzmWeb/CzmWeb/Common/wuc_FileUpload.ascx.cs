using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CzmObject.Common
{
    public partial class wuc_FileUpload : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public String GetImgServerPath()
        {
            if(String.IsNullOrEmpty(ServerShenNuePath))
            {
                return "暂未上传任何图片";
            }
            else
            {
                String result =".."+ServerShenNuePath.Substring(1, ServerShenNuePath.Length - 1);
                ServerDianPath = result;
                return result;
            }
        }

        public String ServerDianPath;
        public String ServerShenNuePath ="";
        public string MapPaths = "~/Images/";
        public void UpFile()
        {
            //判断是否有文件
            try
            {
                if (FlUpLoad.HasFile)
                {
                    string[] type = { ".jpg", ".gif", ".png", ".bmp" };
                    string isStanderded = "";
                    string FileType = Path.GetExtension(FlUpLoad.PostedFile.FileName);
                    foreach (string name in type.Where<string>(str => str == FileType))
                    {
                        isStanderded = name;
                    }
                    if (isStanderded == "")
                    {
                        MessaegBox("文件格式只支持 jpg gif png bmp！");
                        return;
                    }
                    if (File.Exists(Server.MapPath(MapPaths) + Path.GetFileName(FlUpLoad.PostedFile.FileName)))
                    {
                        MessaegBox("文件名已经重复！");
                        return;
                    }
                    FlUpLoad.PostedFile.SaveAs(Server.MapPath(MapPaths) + Path.GetFileName(FlUpLoad.PostedFile.FileName));
                    ChangeFileName(Server.MapPath(MapPaths) + Path.GetFileName(FlUpLoad.PostedFile.FileName), GetNewFileName());
                    MessaegBox("上传成功！");
                }
                //如果没有文件则弹出对话框
                else
                {
                    MessaegBox("请选择上传文件！");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        /// <summary>
        /// /*改变文件的名字*/
        /// </summary>
        /// <param name="previousPath">为以前文件的绝对路劲</param>
        /// <param name="newFileName">为后来文件的文件名(只是文件名不包括文件扩展名(格式后缀))</param>
        /// <returns>成功 返回 ture 否则 为false</returns>
        public bool ChangeFileName(string previousPath, string newFileName)
        {
            if (File.Exists(previousPath))
            {
                string extension = Path.GetExtension(previousPath);
                string newFileAdress = Server.MapPath(MapPaths) + newFileName + extension;
                File.Move(previousPath, newFileAdress);
                ServerShenNuePath = MapPaths + newFileName + extension;
                GetImgServerPath();
                return true;
            }
            else return false;
        }

        /*得到新的文件名字 通过时间来给文件编号*/
        public string GetNewFileName()
        {
            string DateID = DateTime.Now.Year.ToString();
            DateID += DateTime.Now.Month.ToString();
            DateID += DateTime.Now.Day.ToString();
            DateID += DateTime.Now.Hour.ToString();
            DateID += DateTime.Now.Minute.ToString();
            DateID += DateTime.Now.Second.ToString();
            DateID += DateTime.Now.Millisecond.ToString();
            return DateID;
        }       
    }
}