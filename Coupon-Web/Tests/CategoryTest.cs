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
    public class CategoryTest
    {
        private BlRequests bl;
        int ID, bID2;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
                ID =  bl.InsertCategory("abab", "i dont care");
            }
            catch (Exception ee)
            { throw ee; }
        }


        [TestMethod]
        public void InsertCategoryTest()
        {
            bool after = bl.IsCategoryExist(ID);
            Assert.AreEqual(after, true, "should be equal");
        }
        [TestMethod]
        public void DeleteCategoryTest()
        {
            bool before = bl.IsCategoryExist(ID);
            bl.DeleteCategory(ID);
            bool after = bl.IsCategoryExist(ID);

            Assert.AreNotEqual(before, after, "should not be equal");
        }


        [TestCleanup]
        public void TearDown()
        {
            try
            {
                bl.DeleteCategory(ID);
            }
            catch (Exception)
            { }
        }
    }
}