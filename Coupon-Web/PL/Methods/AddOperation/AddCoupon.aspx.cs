using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Coupon_Web.BL;
using Coupon_Web.DAL;

namespace PL.Methods.AddOperation
{
    public partial class AddCoupon : System.Web.UI.Page
    {
        const int CUSTOMER = 0;
        const int MANAGER = 1;
        const int SYSMANAGER = 2;

        BlRequests request;

        private int authority;
        protected void Page_Load(object sender, EventArgs e)
        {
            request = new BlRequests();
            if (SiteMapDataSource1 != null)
            {
                switch ((string)Session["User"])
                {
                    case "Manager":
                        {
                            SiteMapDataSource1.StartingNodeUrl = "~/Manager/ManagerHomeP.aspx";
                            authority = MANAGER;        
                        }
                        break;
                    case "System Manager":
                        {
                            SiteMapDataSource1.StartingNodeUrl = "~/SystemManager/SystemManagerHomeP.aspx";
                            authority = SYSMANAGER;
                        }
                        break;
                }
            }
        }

        protected void addCoupon_btn_Click(object sender, EventArgs e)
        {
            string nextPage = SiteMapDataSource1.StartingNodeUrl;

            string couponName = txtBoxCouponName.Text;
            double couponPrice = double.Parse(txtBoxCouponPrice.Text);
            String getDate = (ddl_year.Text + "/" + ddl_month.Text + "/" + ddl_day.Text);
            DateTime couponExpiredDate = DateTime.Parse(getDate);
            int bussinessId = int.Parse(txtBoxBusinessID.Text);

          
            request.InsertCoupon(couponName, couponPrice, couponPrice, couponExpiredDate, 1, bussinessId);
            Response.Redirect(nextPage); 
        }

    }
}