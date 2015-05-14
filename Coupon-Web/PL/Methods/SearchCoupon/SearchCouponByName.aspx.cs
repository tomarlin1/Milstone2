using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Coupon_Web.BL;
using System.Data;

namespace PL.Customer
{
    public partial class SearchCouponByName : System.Web.UI.Page
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
            _dt = new DataTable();
            _requests = new BlRequests();
            String user = (String)Session["User"];
            if (user.CompareTo("Manager") == 0)
            {
                _dt = _requests.selectCouponsDetails((String)Session["UserName"]);
                View.DataSource = _dt;
                View.DataBind();
            }
            else
            {
                _dt = _requests.selectCouponsDetails("");
                View.DataSource = _dt;
                View.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string text = TextBox_Name.Text;
            _dt = _requests.selectCouponsName(text);
            View.DataSource = _dt;
            View.DataBind();
        }

    }
}