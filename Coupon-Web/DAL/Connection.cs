using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Coupon_Web.DAL
{
    public class Connection
    {
        // need to change the connection string to the specific adress on the computer
        // we assume that in the future we will upload the DB to a server, and then the connection
        // string will be fixed
        private const string URL = @"Data Source=(LocalDB)\v11.0;
                                    AttachDbFilename=C:\Users\shimi\Downloads\coupon-web\coupon-web\coupon-web\Coupon-Web\App_Data\LocalDB.mdf;
                                        Integrated Security=True;Connect Timeout=30";

        private SqlConnection _conn;
        public Connection()
        {
            _conn = new System.Data.SqlClient.SqlConnection();
            _conn.ConnectionString = URL;
        }

        public SqlConnection getSqlCon()
        {
            return _conn;
        }
        public void open()
        {
            _conn.Open();
        }
        public void close()
        {
            _conn.Close();
        }
    }
}