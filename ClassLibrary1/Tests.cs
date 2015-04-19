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
            try
            {
                conn.open();
                bl.InsertUser("Amitay", "amitay", "12345678"); // customer
                bl.InsertUser("shimi", "amitay", "12345678"); // manager
                bl.InsertCategory(1, "Entertainment", "stand-ups, tv-Shows, etc...");
                bl.InsertSecurePayment("Paypal", 5);
                bl.InsertManager("shimi");
                bl.InsertBusiness(1, "Hamashbir", "menashe kapara 33 Rehovot", "in the shop you can find a lot of things", "shimi");
                bl.InsertCoupon(1, "dead-sea-soap", 100, 70, new DateTime(2014, 04, 06).Date, 1, 1);
                bl.InsertCouponCategory(1, 1);
                bl.InsertCustomer("Amitay", "amitay@gmail.com", "0542819491");
                bl.InsertCustomerPreference("Amitay", 1);
                bl.InsertDeal(1, 0, "11111", 1, "Amitay");
                bl.InsertPaidBy(1, "Paypal");
                bl.InsertRates("Amitay", 1, 3, "good");
            }
            catch (Exception)
            { }
        }

        [Test]
        public void InsertUserTest()
        {
            bl.InsertBusiness)()
            bool ans = bl.IsBusinessExist(1); //added in setup.
            Assert.AreEqual(ans, true, "business with id 1 has added to the system but not found");
        }


        [Test]
        public void InsertBusinessTest()
        {
            bl.InsertBusiness)()
            bool ans = bl.IsBusinessExist(1); //added in setup.
            Assert.AreEqual(ans, true, "business with id 1 has added to the system but not found");
        }

        [Test]
        public void InsertTest()
        {
            Assert.AreEqual(1, 1);
        }

        [Test]
        public void InsertCouponTest()
        {

        }

        [Test]
        public void DeleteRateTest()
        {
            bool before = bl.IsRateExist("Amitay", 1);
            bl.DeleteRates("Amitay", 1);
            bool after = bl.IsRateExist("Amitay", 1);
            Assert.AreEqual(!before, after, "delete rate did not succeded");
        }

        [Test]
        public void EditRateTest()
        {
            bool before = bl.IsRateExist("Amitay", 1);
            bl.DeleteRates("Amitay", 1);
            bool after = bl.IsRateExist("Amitay", 1);
            Assert.AreEqual(!before, after, "delete rate did not succeded");
        }

        [TearDown]
        public void TearDown()
        {
            try
            {
                bl.DeleteRates("Amitay", 1);
                bl.DeletePaidBy(1, "Paypal");
                bl.DeleteDeal(1);
                bl.DeleteCustomerPreferences("Amitay", 1);
                bl.DeleteCustomer("Amitay");
                bl.DeleteCouponCategory(1, 1);
                bl.DeleteCoupon(1);
                bl.DeleteBusiness(1);
                bl.DeleteManager("shimi");
                bl.DeleteSecurePayments("Paypal");
                bl.DeleteCategory(1);
                bl.DeleteUser("shimi");
                bl.DeleteUser("Amitay");
            }
            catch (Exception)
            { }
            finally
            {
                conn.close();
            }
        }
    }
}
