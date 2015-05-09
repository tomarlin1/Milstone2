using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Coupon_Web.DAL
{
    public class Connection
    {
<<<<<<< HEAD
        private const string URL = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\asus\Documents\coupon-web\Coupon-Web\PL\App_Data\LocalDB.mdf;Integrated Security=True;MultipleActiveResultSets=True";
=======
        private const string URL = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\ziv-user\Documents\בן גוריון\סמסטר ד'\ניתוח ועיצוב\Milestone2\Coupon-Web\PL\App_Data\LocalDB.mdf;Integrated Security=True;MultipleActiveResultSets=True";
>>>>>>> tomer
        //|DataDirectory|\LocalDB.mdf;

        //singleton pattern
        private static Connection instance;

        private SqlConnection _conn;

        private Connection()
        {
            _conn = new System.Data.SqlClient.SqlConnection();
            _conn.ConnectionString = URL;
        }

        public static Connection getInstanceConn()
        {
            if (instance == null)
                instance = new Connection(); 
            return instance;           
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