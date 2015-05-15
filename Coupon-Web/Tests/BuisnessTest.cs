using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Coupon_Web.BL;
using Coupon_Web.DAL;
using System.Data;

namespace Tests
{
    [TestClass]
    public class BuisnessTest
    {
        private BlRequests bl;
        int bIDLahit;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                bl.InsertManager("balul12", "balul", "12345678");
                bIDLahit = bl.InsertBusiness("Lahit", "meonot 3", "shop for students", "balul12", "33.333", "33.333", "rehovot");            
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertBusinessTest()
        {
            bool after = bl.IsBusinessExist(bIDLahit);
            Assert.AreEqual(after, true, "should be equal");
        }

        [TestMethod]
        public void DeleteBusinessTest()
        {
            bool before = bl.IsBusinessExist(bIDLahit);
            bl.DeleteBusiness(bIDLahit);
            bool after = bl.IsBusinessExist(bIDLahit);

            Assert.AreNotEqual(before, after, "should not be equal");
        }

        [TestMethod]
        public void SelectByNameBusinessTest()
        {
            bl.EditBusiness(bIDLahit, "approve", "true");
            DataRow businessRow = bl.selectBuisnessesByName("Lahit", "").Rows[0];
            Assert.AreEqual("Lahit", businessRow[0], "should be equal");
        }
        [TestMethod]
        public void SelectByCityBusinessTest()
        {
            bl.EditBusiness(bIDLahit, "approve", "true");
            DataRow businessRow = bl.selectBusinessByCity("rehovot", "balul12").Rows[0];
            Assert.AreEqual("rehovot", businessRow[4], "should be equal");
        }
        [TestMethod]
        public void SelectApproveBusinessTest()
        {
            int beforeAppCount = bl.selectBusinessApprove(true).Rows.Count;
            bl.EditBusiness(bIDLahit, "approve", "true");
            int afterAppCount = bl.selectBusinessApprove(true).Rows.Count;
            Assert.AreEqual(beforeAppCount + 1, afterAppCount, "should be equal");
        }
        [TestMethod]
        public void SelectManagerOfBusinessTest()
        {
            String manager = bl.selectManagerOfBusiness(bIDLahit);
            Assert.AreEqual("balul12", manager, "should be equal");
        }

        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteBusiness(bIDLahit);
                bl.DeleteManager("balul12");
                bl.DeleteUser("balul12");
            }
            catch (Exception)
            { }
        }
    }
}