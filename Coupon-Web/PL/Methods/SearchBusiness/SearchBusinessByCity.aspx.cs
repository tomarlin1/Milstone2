using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL.Methods.SearchBusiness
{
    public partial class SearchBusinessByCity : System.Web.UI.Page
    {
        DataTable _dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            BlRequests _requests = new BlRequests();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            initDt();
        }

        private void initDt()
        {
            BlRequests requests = new BlRequests();
            string user = (String)Session["User"];
            if (user.CompareTo("Manager") == 0)
            {
                _dt = requests.selectBusinessByCity(TextBox1.Text, (String)Session["UserName"]);

            }
            else
            {
                _dt = requests.selectBusinessByCity(TextBox1.Text, "");
            }

            GridView1.DataSource = _dt;
            GridView1.DataBind();
        }
    }
}