using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL.Methods.ApproveOperations
{
    public partial class ApproveBusiness : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BlRequests bl = new BlRequests();
            DataTable dt = bl.selectBusinessApprove();
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BlRequests bl = new BlRequests();
            int id;
            try
            {
                id = int.Parse(TextBox1.Text);
                errorlbl.Text = "";
                bl.EditBusiness(id, "approve", "True");
                DataTable dt = bl.selectBusinessApprove();
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception)
            {
                errorlbl.Text = "Invalid Number";
            }
        }
    }
}