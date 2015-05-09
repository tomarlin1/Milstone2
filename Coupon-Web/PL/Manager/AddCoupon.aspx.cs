using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Coupon_Web.BL;
using Coupon_Web.DAL;


namespace PL.Manager
{
    public partial class AddCoupon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addCoupon_btn_Click(object sender, EventArgs e)
        {
            string nextPage = "~/Manager/ManagerHomeP.aspx";
            BlRequests request = new BlRequests();
         
            int couponId = int.Parse(getCouponId_tb.Text);
            if(request.IsCouponExist(couponId)){
                error_lbl.Text = "Entered id is already exist, please try again";
                nextPage = "~/Manager/AddCoupon.aspx";
                return;
            }
            string couponName = getCouponName_tb.Text;
            double couponPrice = double.Parse(getCouponPrice_tb.Text);
            String getDate = (getYear_ddl.Text + "/" + getMonth_ddl.Text + "/" + getDay_ddl.Text);
            DateTime couponExpiredDate = DateTime.Parse(getDate);
            int bussinessId = int.Parse(getCouponBusinessId_TB.Text);
            request.InsertCoupon(couponId,couponName,couponPrice,couponPrice,couponExpiredDate,1,bussinessId);
            Response.Redirect(nextPage); 
        }
    }
}