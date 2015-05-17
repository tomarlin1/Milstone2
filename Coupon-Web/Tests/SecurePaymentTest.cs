using Coupon_Web.BL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tests
{
    [TestClass]
    public class SecurePaymentTest
    {
        private BlRequests bl;
        int ID;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                bl.InsertSecurePayment("aaaa", 3);
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertSecurePaymentTest()
        {
            bool after = bl.IsSecurePaymentExist("aaaa");
            Assert.AreEqual(after, true, "should be equal");
        }
        [TestMethod]
        public void DeleteSecurePaymentTest()
        {
            bool before = bl.IsSecurePaymentExist("aaaa");
            bl.DeleteSecurePayments("aaaa");
            bool after = bl.IsSecurePaymentExist("aaaa");

            Assert.AreNotEqual(before, after, "should not be equal");
        }

        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteSecurePayments("aaaa");
            }
            catch (Exception)
            { }
        }
    }
}