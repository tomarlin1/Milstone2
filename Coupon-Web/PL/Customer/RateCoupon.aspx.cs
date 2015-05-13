using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL.Customer
{
    public partial class RateCoupon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                BlRequests bl = new BlRequests();
                String userName = (String)Session["UserName"];
                int couponId = int.Parse(TextBox1.Text);
                bool isDefined =bl.IsRateExist(userName, couponId);
                if (!isDefined)
                {
                    bl.InsertRates(userName, couponId, int.Parse(DropDownList1.Text), TextBox2.Text);
                    Response.Redirect("~/Customer/CustomerHomeP.aspx");
                }
                else
                {
                    errorlbl.Text = "You have already voted!";
                }
            }
            catch(Exception)
            {

            }
        }
    }
}