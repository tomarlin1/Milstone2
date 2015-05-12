using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Coupon_Web.BL;

namespace PL
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

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
                request.InsertCustomer(userName, TbEmail.Text, TbPhoneNumber.Text, TbName.Text, TbPassword.Text);
                Response.Redirect("~/LoginPage.aspx");
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