using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Coupon_Web.BL;

namespace PL.Methods.EditOperations
{
    public partial class EditCoupon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SiteMapDataSource1 != null)
            {
                switch ((string)Session["User"])
                {
                    case "Manager":
                        {
                            SiteMapDataSource1.StartingNodeUrl = "~/Manager/ManagerHomeP.aspx";
                        }
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
            BlRequests bl = new BlRequests();
            int couponId;
            try
            {
                couponId = int.Parse(txtBoxCouponId.Text);
                String manager = bl.selectManagerOfCoupon(couponId);
                String user = (String)Session["User"];
                if (manager.CompareTo(Session["UserName"]) == 0 || user.CompareTo("System Manager") == 0)
                {
                    bl.EditCoupon(couponId, DropDownList1.Text, TextBox1.Text);
                    Response.Redirect(SiteMapDataSource1.StartingNodeUrl);
                }
                else
                    errorlbl.Text = "You Don't Have Permissions To Change The Coupon";
            }
            catch (Exception)
            {
                errorlbl.Text = "Error,Please Check Out Your Parameters";
            }
        }
    }
}