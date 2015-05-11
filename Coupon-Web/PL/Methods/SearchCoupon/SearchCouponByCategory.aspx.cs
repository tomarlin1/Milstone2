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
    public partial class SearchCouponByCategory : System.Web.UI.Page
    {
        DataTable _dt;
        BlRequests _requests;
        protected void Page_Load(object sender, EventArgs e)
        {
            _requests = new BlRequests();
            _dt = _requests.selectCouponDetailsWithCategory(category.Text);
            View.DataSource = _dt;
            View.DataBind();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            _dt = _requests.selectCouponDetailsWithCategory(category.Text);
            View.DataSource = _dt;
            View.DataBind();
        }
        
    }
}