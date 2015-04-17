using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;
using Coupon_Web.BL;
using System.Data.SqlClient;
using Coupon_Web.DAL;
namespace ClassLibrary1
{
    [TestFixture]
    public class Tests
    {
        private BlRequests bl;
        private Connection conn;

        [SetUp]
        public void SetUp()
        {
            conn = new Connection();
            bl = new BlRequests(conn.getSqlCon());

            conn.open();

            bl.InsertUser("Amitay140", "amitay", "12345678"); // customer
            bl.InsertUser("shimi", "amitay", "12345678"); // manager
            bl.InsertCategory(2, "Entertainment", "stand-ups, tv-Shows, etc...");
            bl.InsertSecuredPayment("Paypal", 5);
            bl.InsertManager("shimi");
            bl.InsertBusiness(123, "Hamashbir", "menashe kapara 33 Rehovot", "in the shop you can find a lot of things", "shimi");
            bl.InsertCoupon(1234, "dead-sea-soap", 100, 70, new DateTime(2014, 04, 06), 1, 123);
            bl.InsertCouponCategory(1234, 2);
            bl.InsertCustomer("Amitay140", "amitay@gmail.com", "0542819491");
            bl.InsertCustomerPreference("Amitay140", 2);
            bl.InsertDeal(111, 0, "11111", 1234, "Amitay140");
            bl.InsertPaidBy(111, "Paypal");
            bl.InsertRates("Amitay", 1234, 3, "good");
            



            conn.close();
        }

        [Test]
        public void InsertTest()
        {
            InsertUser("asdsdasd", "asds", "svds svcv");
            Assert(queries.isExist();
        }

        [Test]
        public void InsertCouponTest()
        {

        }

        [Test]
        public void InsertTest()
        {

        }

        [Test]
        public void InsertTest()
        {

        }

        [Test]
        public void InsertTest()
        {

        }

        [Test]
        public void InsertTest()
        {

        }


    }
}
