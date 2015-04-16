using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Coupon_Web.DAL;

namespace Coupon_Web.PL
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Connection conn = new Connection();
            
            SqlCommand cmdSql = new SqlCommand("insert into [users] values (@UserName,@Name,@Password)", conn.getSqlCon());
           
            conn.open();

            cmdSql.Parameters.AddWithValue("@UserName", "shimi2");
            cmdSql.Parameters.AddWithValue("@Name", "shimisv");
            cmdSql.Parameters.AddWithValue("@Password", "1234");

            cmdSql.ExecuteNonQuery();
            Label1.Text = "added";
            conn.close();
        }
    }
}