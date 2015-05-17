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
    public class DealTest
    {
        private BlRequests bl;
        int cID, dID;
        int bIDLahit, catId;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                bl.InsertManager("balul123", "balul", "12345678");
                bIDLahit = bl.InsertBusiness("Lahit", "meonot 3", "shop for students", "balul123", "33.333", "33.333", "rehovot");
                catId = bl.InsertCategory("cat for test", "no description");
                cID = bl.InsertCoupon("masora", 1000, 100, "10-10-2010", 2, bIDLahit, catId);
                bl.EditBusiness(bIDLahit, "approve", true);
                bl.EditCoupon(cID, "approve", true);

                bl.InsertSecurePayment("cashh", 9);
                bl.InsertCustomer("bobobi12", "aaaa@gmail.com", "089338888", "bobobi", "123");
                dID = bl.InsertDeal(0, "ABC!@#$%1", cID, "bobobi12", "cashh");
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestMethod]
        public void InsertDealTest()
        {
            bool after = bl.IsDealExist(dID);
            Assert.AreEqual(after, true, "should be equal");
        }

        [TestMethod]
        public void DeleteDealTest()
        {
            bool before = bl.IsDealExist(dID);
            bl.DeleteDeal(dID);
            bool after = bl.IsDealExist(dID);

            Assert.AreNotEqual(before, after, "should not be equal");
        }
        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteDeal(dID);
                bl.DeleteCustomer("bobobi12");
                bl.DeleteUser("bobobi12");
                bl.DeleteSecurePayments("cashh");

                bl.DeleteCoupon(cID);
                bl.DeleteBusiness(bIDLahit);
                bl.DeleteManager("balul123");
                bl.DeleteUser("balul123");
            
            }
            catch (Exception)
            { }
        }
    }
}