using Coupon_Web.BL;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tests
{
    [TestClass]
    public class CouponTest
    {
        private BlRequests bl;
        int ID, bIDLahit;

        [TestInitialize]
        public void SetUp()
        {
            int catId;
            bl = new BlRequests();
            try
            {
                bl.InsertManager("balul12", "balul", "12345678");
                bIDLahit = bl.InsertBusiness("Lahit", "meonot 3", "shop for students", "balul12", "33.333", "33.333", "rehovot");
                catId = bl.InsertCategory("cat for test", "no description");
                ID = bl.InsertCoupon("masor", 1000, 100, "10-10-2010", 2, bIDLahit, catId);

            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertCouponTest()
        {
            bool after = bl.IsCouponExist(ID);
            Assert.AreEqual(after, true, "should be equal");
        }

        [TestMethod]
        public void DeleteCouponTest()
        {
            bool before = bl.IsCouponExist(ID);
            bl.DeleteCoupon(ID);
            bool after = bl.IsCouponExist(ID);

            Assert.AreNotEqual(before, after, "should not be equal");
        }

        [TestMethod]
        public void SelectManagerOfCouponTest()
        {
            String manCou = bl.selectManagerOfCoupon(ID);
            Assert.AreEqual(manCou, "balul12", "should be equal");
        }

        [TestMethod]
        public void SelectCouponApproveTest()
        {
            bl.EditBusiness(bIDLahit, "approve", true);
            bl.EditCoupon(ID, "approve", true);
            String name = (bl.selectCouponsName("masor").Rows[0])[1].ToString();
            Assert.AreEqual(name, "masor", "should be equal");
        }

        [TestMethod]
        public void EditCouponApproveTest()
        {
            bl.EditBusiness(bIDLahit, "approve", "true");
            
            int beforeAppCount = bl.selectCouponApprove().Rows.Count;
            bl.EditCoupon(ID, "approve", true);
            int afterAppCount = bl.selectCouponApprove().Rows.Count;
            Assert.AreEqual(beforeAppCount - 1, afterAppCount, "should be equal");
        }

        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteCoupon(ID);
                bl.DeleteBusiness(bIDLahit);
                bl.DeleteManager("balul12");
                bl.DeleteUser("balul12");
            }
            catch (Exception)
            { }
        }
    }
}
