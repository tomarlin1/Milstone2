using Coupon_Web.BL;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PL.Methods.AddOperation
{
    public partial class AddBusiness : System.Web.UI.Page
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
                            SiteMapDataSource1.StartingNodeUrl = "~/SystemManager/SystemManagerHomeP.aspx";
                            break;
                }
            }
        }

        private string[] setAddressLcation(String Address)
        {
            string[] ret;
            string url = "http://maps.google.com/maps/api/geocode/xml?address=" + Address + "&sensor=false";
            WebRequest request = WebRequest.Create(url);
            using (WebResponse response = (HttpWebResponse)request.GetResponse())
            {
                using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
                {
                    DataSet dsResult = new DataSet();
                    dsResult.ReadXml(reader);
                    DataTable dtCoordinates = new DataTable();
                    dtCoordinates.Columns.AddRange(new DataColumn[4] { new DataColumn("Id", typeof(int)),
                        new DataColumn("Address", typeof(string)),
                        new DataColumn("Latitude",typeof(string)),
                        new DataColumn("Longitude",typeof(string)) });
                    foreach (DataRow row in dsResult.Tables["result"].Rows)
                    {
                        string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
                        DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
                        dtCoordinates.Rows.Add(row["result_id"], row["formatted_address"], location["lat"], location["lng"]);
                    }
                    DataRow mapLoc = dtCoordinates.Rows[0];

                    string address = (string)mapLoc["Address"];
                    string locLatitude = (string)mapLoc["Latitude"];
                    string locLongitude = (string)mapLoc["Longitude"];

                    ret = new string[] { address, locLatitude, locLongitude};
                }
            }
            return ret;
        }

        protected void addCoupon_btn_Click(object sender, EventArgs e)
        {
            string nextPage = SiteMapDataSource1.StartingNodeUrl;

            string name = txtBoxName.Text;
            string address = txtBoxAddress.Text;
            string description = txtBoxDescription.Text;
            string userName = txtBoxUserName.Text;

            string[] addressParmes = setAddressLcation(address);

            request.InsertBusiness(299, name, address, description, userName);
            Response.Redirect(nextPage); 
        }
    }
}