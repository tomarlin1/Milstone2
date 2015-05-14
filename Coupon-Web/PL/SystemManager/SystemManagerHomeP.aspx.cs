using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL.SystemManager
{
    public partial class SystemManagerHomeP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lb_userName.Text = (string)Session["Name"];
            BlRequests bl = new BlRequests();
            DataTable dt = bl.selectBusinessApprove(false);
            if (dt.Rows.Count > 0) Label1.Text = "You Have Businesses To Approve";
            dt = bl.selectCouponApprove();
            if (dt.Rows.Count > 0) Label2.Text = "You Have Coupons To Approve";
        }
    }
}