﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Coupon_Web.DAL
{
    public class Connection
    {
        private const string URL = @"Data Source=(LocalDB)\v11.0;
                            AttachDbFilename=C:\Users\matan\OneDrive\האוניברסיטה\סימסטר ד\ניתוח ועיצוב\coupon-web\Coupon-Web\DAL\LocalDB.mdf;
                            Integrated Security=True";
        //|DataDirectory|\LocalDB.mdf;

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