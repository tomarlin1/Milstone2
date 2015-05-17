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
    public class SysManagerTest
    {
        private BlRequests bl;
        int ID;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                bl.InsertUser("avia12", "avia", "123");
                bl.InsertSystemManager("avia12");
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertSystemManagerTest()
        {
            bool after = bl.IsSystemManagerExist("avia12");
            Assert.AreEqual(after, true, "should be equal");
        }

        [TestMethod]
        public void DeleteSystemManagerTest()
        {
            bool before = bl.IsSystemManagerExist("avia12");
            bl.DeleteSystemManager("avia12");
            bool after = bl.IsSystemManagerExist("avia12");
            Assert.AreNotEqual(before, after, "should not be equal");
        }

        [TestMethod]
        public void LoginSystemManagerTest()
        {
            bool isConn = bl.LoginAsSystemManager("avia12", "123");
            Assert.AreEqual(isConn, true, "should be true");
        }

        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteSystemManager("avia12");
                bl.DeleteUser("avia12");
            }
            catch (Exception)
            { }
        }
    }
}