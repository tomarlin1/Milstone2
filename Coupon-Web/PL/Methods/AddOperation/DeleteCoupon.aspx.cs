using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL.Methods.AddOperation
{
    public partial class DeleteCoupon1 : System.Web.UI.Page
    {
        private BlRequests request;
        protected void Page_Load(object sender, EventArgs e)
        {
            request = new BlRequests();
            if (SiteMapDataSource1 != null)
            {
                switch ((string)Session["User"])
                {
                    case "Manager":
                        SiteMapDataSource1.StartingNodeUrl = "~/Manager/ManagerHomeP.aspx";
                        break;
                    case "System Manager":
                        SiteMapDataSource1.StartingNodeUrl = "~/SystemManager/SystemManagerHomeP.aspx";
                        break;
                }
            }
        }

        protected void addCoupon_btn_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtBoxID.Text);
            request.DeleteCoupon(id);
        }
    }
}