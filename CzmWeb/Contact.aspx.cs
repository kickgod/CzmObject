using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CzmWeb
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void MessaegBox(String msg)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>window.alert('" + msg + "')</script>");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string NameFineOne = "";
            string NameFineTwo = "";
            NameFineOne = ((Label) wuc_UploadPic.FindControl("lblWenjian")).Text;
            NameFineTwo = ((Label)wuc_UploadPic1.FindControl("lblWenjian")).Text;
            if (NameFineOne == "")
            {
                MessaegBox("请上传第一张图片");
                return;
            }
            if (NameFineTwo == "")
            {
                MessaegBox("请上传第二张图片");
                return;
            }
            MessaegBox(NameFineTwo+NameFineOne);
        }
    }
}