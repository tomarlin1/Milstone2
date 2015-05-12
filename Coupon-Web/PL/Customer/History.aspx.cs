using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL.Customer
{
    public partial class History : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BlRequests bl = new BlRequests();
            DataTable dt = bl.selectCustomerHistory((String)Session["UserName"]);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}