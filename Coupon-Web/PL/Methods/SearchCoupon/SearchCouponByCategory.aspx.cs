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

            if (SiteMapDataSource1 != null)
            {
                switch ((string)Session["User"])
                {
                    case "Customer":
                        SiteMapDataSource1.StartingNodeUrl = "~/Customer/CustomerHomeP.aspx";
                        break;
                    case "Manager":
                        SiteMapDataSource1.StartingNodeUrl = "~/Manager/ManagerHomeP.aspx";
                        break;
                    case "System Manager":
                        SiteMapDataSource1.StartingNodeUrl = "~/SystemManager/SystemManagerHomeP.aspx";
                        break;
                }
            }
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