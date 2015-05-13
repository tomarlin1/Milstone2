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
    public partial class BuyCoupon : System.Web.UI.Page
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

        protected void purchaseCoupon_btn_Click(object sender, EventArgs e)
        {
            
        }

        
        protected void btnShow_Click(object sender, EventArgs e)
        {
            int id;
            try
            {
                id = int.Parse(txtBoxID.Text);
                if (request.IsCouponExist(id))
                {
                    DataTable a = request.selectCouponsDetails();
                    DataRow b = a.Rows[1];

                    if (b != null)
                    {
                        Object[] bArr = b.ItemArray;
                        lblName.Text = bArr[1].ToString();
                        lblCouponPrice.Text = bArr[2].ToString();
                        lbldiscount.Text = b[3].ToString();
                        lblExpiredDate.Text = b[4].ToString();
                        lblRating.Text = b[5].ToString();
                        lblBusinessID.Text = b[6].ToString();
                        
                    }
                    else
                        lblRating.Text = "out";

                }
            }
            catch (Exception)
            { }
        }
    }
}