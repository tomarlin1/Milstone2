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
    public class CustomerPerferencesTest
    {
        private BlRequests bl;
        int catID;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                bl.InsertCustomer("mimi12", "mimi@gmail.com", "089334453", "mimi", "123");
                catID = bl.InsertCategory("abab", "i dont care");
                bl.InsertCustomerPreference("mimi12", catID);
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertCustomerPerferencesTest()
        {
            bool after = bl.IsCustomerPreferenceExist("mimi12", catID);
            Assert.AreEqual(after, true, "should be equal");
        }

        [TestMethod]
        public void DeleteCustomerPerferencesTest()
        {
            bool before = bl.IsCustomerPreferenceExist("mimi12", catID);
            bl.DeleteCustomerPreferences("mimi12", catID);
            bool after = bl.IsCustomerPreferenceExist("mimi12", catID);
            Assert.AreNotEqual(before, after, "should not be equal");
        }

        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteCustomerPreferences("mimi12", catID);
                bl.DeleteCustomer("mimi12");
                bl.DeleteUser("mimi12");
              
                bl.DeleteCategory(catID);
            }
            catch (Exception)
            { }
        }
    }
}