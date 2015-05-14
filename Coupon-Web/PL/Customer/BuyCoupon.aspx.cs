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
            lblerrorChoose.Visible = false;
            request = new BlRequests();
            if (ddlID.Items.Count == 1)
            {
                foreach (DataRow row in request.selectCouponsDetails().Rows)
                    ddlID.Items.Add(row[0].ToString());
            }
            
            
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
            lblerrorChoose.Visible = false;
            lblError.Visible = false;
            
            if(ddlID.SelectedIndex == 0)
            {
                lblerrorChoose.Visible = true;
                return;
            }
            int couponId = int.Parse(ddlID.Items[ddlID.SelectedIndex].ToString());
            String customerUsername = "amitay";//Page.Session["UserName"].ToString();
            String paymentMethod = payment_dropDownList.Items[payment_dropDownList.SelectedIndex].ToString();
            //need to generate serial key
            try
            {
                Guid g = Guid.NewGuid();
                string GuidString = Convert.ToBase64String(g.ToByteArray());
                GuidString = GuidString.Replace("=", "");
                GuidString = GuidString.Replace("+", "");
                request.InsertDeal(0, GuidString, couponId, customerUsername, paymentMethod);

                lblSerialKey.Text = "Your order succesfully handled!  \nYour uniq serial key is: " + GuidString;
            }
            catch(Exception)
            {
                lblError.Visible = true;
            }
        }

        protected void ddlID_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSerialKey.Text = "";
            DataTable a = request.selectAllCoupons();

            if (ddlID.SelectedIndex > 0)
            {
                DataRow b = a.Rows[ddlID.SelectedIndex - 1];

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
            }
        }
    }
}