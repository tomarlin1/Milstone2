﻿using Coupon_Web.BL;
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
        int ID;

        [TestInitialize]
        public void SetUp()
        {
            bl = new BlRequests();
            try
            {
            }
            catch (Exception ee)
            { throw ee; }
        }

        [TestCleanup]
        public void TearDown()
        {
            try
            {
            }
            catch (Exception)
            { }
        }
    }
}