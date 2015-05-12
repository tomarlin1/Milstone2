using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL
{
    public partial class RegisterManager : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            BlRequests request = new BlRequests();
            String userName = TbUserName.Text;
            bool isExist = request.IsUserExist(userName);
            if (isExist)
            {
                errorlbl.Text = "UserName Exist";
            }
            else
            {
                request.InsertManager(userName, TbName.Text, TbPassword.Text);
                Response.Redirect("~/SystemManager/SystemManagerHomeP.aspx");
            }
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            TbUserName.Text = "";
            TbName.Text = "";
            TbRepeatPass.Text = "";
            TbPassword.Text = "";
        }
    }
}