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
    public class Class1
    {
        private BlRequests bl;
        int bIDLahit, bID2;

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