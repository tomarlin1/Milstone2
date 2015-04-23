using Coupon_Web.BL;
using Coupon_Web.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;


namespace PL
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {

            Connection conn = new Connection();
            BlRequests request = new BlRequests(conn.getSqlCon());
            conn.open();
            bool isUserExist =request.IsUserExist(TbUserName.Text);
            conn.close();
            if (isUserExist)
                Response.Write("User Exist");
            else
                Response.Write("User Does Not Exist");
             
        }
    }
}