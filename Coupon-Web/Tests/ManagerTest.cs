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
    public class ManagerTest
    {
        private BlRequests bl;
        int ID;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                bl.InsertManager("braun12", "bibi", "134");
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertManagerTest()
        {
            bool after = bl.IsManagerExist("braun12");
            Assert.AreEqual(after, true, "should be equal");
        }

        [TestMethod]
        public void DeleteManagerTest()
        {
            bool before = bl.IsManagerExist("braun12");
            bl.DeleteManager("braun12");
            bool after = bl.IsManagerExist("braun12");
            Assert.AreNotEqual(before, after, "should not be equal");
        }

        [TestMethod]
        public void LoginManagerTest()
        {
            bool isConn = bl.LoginAsManager("braun12", "134");
            Assert.AreEqual(isConn, true, "should be true");
        }

        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteManager("braun12");
                bl.DeleteUser("braun12");
            }
            catch (Exception)
            { }
        }
    }
}