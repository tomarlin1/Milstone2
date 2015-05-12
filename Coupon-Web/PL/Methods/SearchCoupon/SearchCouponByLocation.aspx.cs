using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PL.Customer
{
    public partial class SearchCouponByLocation : System.Web.UI.Page
    {
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
        }

        public string ConvertDataTabletoString()
        {
            BlRequests bl = new BlRequests();
            DataTable dt = bl.selectCoupons();
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            return serializer.Serialize(rows);
        }

    }

    
}