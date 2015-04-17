using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Coupon_Web.DAL;
using System.Data.SqlClient;

namespace Coupon_Web.BL
{
    public class BlRequests
    {
        private Queries _query;
        public BlRequests(SqlConnection conn)
        {
            _query = new Queries(conn);
        }

        public void InsertBusiness(int id, String name,String address, String description, String managerUserName)
        {
            String[] values = new String[] { id.ToString(), name, address, description, managerUserName};
            _query.Insert("Buisness", values);
        }

        public void InsertCategory(int id, String name, String description)
        {
            String[] values = new String[] { id.ToString(), name, description};
            _query.Insert("Category", values);
        }

        public void InsertUser(String userName, String name, String password)
        {
            String[] values = new String[] { userName, name, password};
            _query.Insert("Users", values);
        }

        public void InsertCoupon(int id, String name, double originalMoney,double discountPrice,DateTime expiredDate, int rating, int businessId)
        {
            String[] values = new String[] { id.ToString(), name, originalMoney.ToString(), discountPrice.ToString(), expiredDate.ToString(), rating.ToString(), businessId.ToString() };
            _query.Insert("Coupon", values);
        }

        public void InsertCouponCategory(int couponId, int categoryId)
        {
            String[] values = new String[] { couponId.ToString(), categoryId.ToString() };
            _query.Insert("CouponCategories", values);
        }

        public void InsertCustomer(String userName, String email, String phone)
        {
            String[] values = new String[] { userName, email, phone };
            _query.Insert("Customer", values);
        }

        public void InsertCustomerPreference(String CustomerUserName, int categoryId)
        {
            String[] values = new String[] { CustomerUserName, categoryId.ToString() };
            _query.Insert("CustomerPreference", values);
        }

        public void InsertDeal(int id, int status, String serialKey, int couponId,String customerUserName)
        {
            String[] values = new String[] { id.ToString(), status.ToString(), serialKey, couponId.ToString(), customerUserName };
            _query.Insert("Deal", values);
        }

        public void InsertManager( String userName)
        {
            String[] values = new String[] { userName };
            _query.Insert("Manager", values);
        }

        public void InsertPaidBy(int dealId,  String securedPayment)
        {
            String[] values = new String[] { dealId.ToString(), securedPayment };
            _query.Insert("PaidBy", values);
        }

        public void InsertRates(String userName, int couponId, int rateNumber, String description)
        {
            String[] values = new String[] { userName, couponId.ToString(), rateNumber.ToString(), description };
            _query.Insert("Rates", values);
        }

        public void InsertSecuredPayment(String method, int securedLevel)
        {
            String[] values = new String[] { method, securedLevel.ToString() };
            _query.Insert("SecuredPayment", values);
        }


        




        //insert etc...

        public void DeleteBusiness(int id)
        {
            _query.Delete("Buisness", "Id", id.ToString());
        }

        public void DeleteUser(String userName)
        {
            _query.Delete("Users", "UserName", userName);
        }

        //delete etc.

        public void EditBusiness(String pKeyValue, String fieldToEdit, Object value)
        {
            _query.EditField("Buisness", fieldToEdit, value.ToString(), "Id",pKeyValue);
        }

        //etc... etc... edit

        public void IsBusinessExist(String pKeyVal)
        {
            _query.isExist("", "", pKeyVal);
        }
    }
}