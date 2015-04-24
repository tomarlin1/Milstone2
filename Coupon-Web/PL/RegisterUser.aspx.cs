using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //check if the UserName is legit.
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