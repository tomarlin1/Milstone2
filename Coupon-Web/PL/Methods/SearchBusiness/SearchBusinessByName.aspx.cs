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
    public partial class SearchBusinessByName : System.Web.UI.Page
    {
        DataTable _dt;
        protected void Page_Load(object sender, EventArgs e)
        {

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
            BlRequests requests = new BlRequests();
            string text = TextBox1.Text;
            String user = (String)Session["User"];
            if(user.CompareTo("Manager") == 0)
                _dt = requests.selectBuisnessesByName(text, (String)Session["UserName"]);
            else
                _dt = requests.selectBuisnessesByName(text, "");
            GridView1.DataSource = _dt;
            GridView1.DataBind();
        }

    }
}