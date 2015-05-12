using Coupon_Web.BL;
using Coupon_Web.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using System.Data;


namespace PL
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page.Session
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string nextPage;
            BlRequests request = new BlRequests();
            if (Type.SelectedIndex == 0) //customer
            {
                if (request.LoginAsCustomer(TbUserName.Text, TbPassword.Text))
                {
                    nextPage = "Customer/CustomerHomeP.aspx";
                    Page.Session["User"] = "Customer";
                }
                else
                {
                    errorlbl.Text = "the customer isn't exist";
                    return;
                }
            }
            else if (Type.SelectedIndex == 1) // manager
            {
                if (request.LoginAsManager(TbUserName.Text, TbPassword.Text))
                {
                    nextPage = "Manager/ManagerHomeP.aspx";
                    Page.Session["User"] = "Manager";
                }
                else
                {
                    errorlbl.Text = "the manager business isn't exist";
                    return;
                }
            }
            else //system Manager
            {
                if (request.LoginAsSystemManager(TbUserName.Text, TbPassword.Text))
                {
                    nextPage = "SystemManager/SystemManagerHomeP.aspx";
                    Page.Session["User"] = "System Manager";
                }
                else
                {
                    errorlbl.Text = "the system manager isn't exist";
                    return;
                }               
            }    
            Page.Session["UserName"] = TbUserName.Text;
            Page.Session["Password"] = TbPassword.Text;
            DataTable dt = request.getUserPersonalName((String)Session["UserName"]);
            if (dt != null)
            {
                Page.Session["Name"] = dt.Rows[0][0];
            }
            else
            {
                errorlbl.Text = "User does not have name";
            }
            Response.Redirect(nextPage); 
        }
    }
}