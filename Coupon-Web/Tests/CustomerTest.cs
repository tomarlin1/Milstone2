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
    public class CustomerTest
    {
        private BlRequests bl;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                bl.InsertCustomer("mimi12", "mimi@gmail.com", "089334453", "mimi", "123");
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertCustomerTest()
        {
            bool after = bl.IsUserExist("mimi12");
            Assert.AreEqual(after, true, "should be equal");
        }
                
        [TestMethod]
        public void DeleteCustomerTest()
        {
            bool before = bl.IsCustomerExist("mimi12");
            bl.DeleteCustomer("mimi12");
            bool after = bl.IsCustomerExist("mimi12");
            Assert.AreNotEqual(before, after, "should not be equal");
        }

        [TestMethod]
        public void LoginCustomerTest()
        {
            bool isConn = bl.LoginAsCustomer("mimi12", "123");
            Assert.AreEqual(isConn, true, "should be true");
        }


        
        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteCustomer("mimi12");
                bl.DeleteUser("mimi12");
            }
            catch (Exception)
            { }
        }
    }
}