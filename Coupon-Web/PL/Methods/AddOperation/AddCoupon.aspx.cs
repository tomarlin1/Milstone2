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
        BlRequests request;

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
                        {
                            SiteMapDataSource1.StartingNodeUrl = "~/SystemManager/SystemManagerHomeP.aspx";
                            
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
            String getDate = (ddl_month.Text + "-" + ddl_day.Text + "-" + ddl_year.Text);
            int bussinessId = int.Parse(txtBoxBusinessID.Text);


            request.InsertCoupon(couponName, couponPrice, couponPrice, getDate, 1, bussinessId,DropDownList1.SelectedIndex+1);
            Response.Redirect(nextPage); 
        }

    }
}