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
    public class UsersTest
    {
        private BlRequests bl;
        int ID;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                bl.InsertUser("avia123", "aaa", "123");
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertUserTest()
        {
            bool after = bl.IsUserExist("avia123");
            Assert.AreEqual(after, true, "should be equal");
        }

        [TestMethod]
        public void DeleteUserTest()
        {
            bool before = bl.IsUserExist("avia123");
            bl.DeleteUser("avia123");
            bool after = bl.IsUserExist("avia123");
            Assert.AreNotEqual(before, after, "should not be equal");
        }


        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteUser("avia123");
            }
            catch (Exception)
            { }
        }
    }
}