using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Coupon_Web.DAL;
using System.Data.SqlClient;
using System.Data;

namespace Coupon_Web.BL
{
    public class BlRequests
    {
        private Queries _query;


        public BlRequests()
        {
            _query = new Queries();
        }

        /// <the next functions are related to various Insert's functions.>
        /// 
        /// </summary>
        public void InsertBusiness(String name, String address, String description, String managerUserName, string latitude, string longitude, string city)
        {
            String id = (_query.SelectMaxID("Buisness") + 1).ToString();
            String[] values = new String[] { id, name, address, description, managerUserName, "false", latitude, longitude, city};
            _query.Insert("Buisness", values);
        }
        public Boolean ExistUserForLogin(string userName, string password)
        {
            String[] pkNames = { "UserName", "Password" };
            String[] pkValues = new String[] { userName, password };
            return _query.isExist("Users", pkNames, pkValues);
        }
        public Boolean LoginAsCustomer(string userName, string password)
        {
            return ExistUserForLogin(userName, password) && IsCustomerExist(userName);
        }
        public Boolean LoginAsManager(string userName, string password)
        {
            return ExistUserForLogin(userName, password) && IsManagerExist(userName);
        }
        public Boolean LoginAsSystemManager(string userName, string password)
        {
            return ExistUserForLogin(userName, password) && IsSystemManagerExist(userName);
        }


        public void InsertCategory(String name, String description)
        {
            String id = (_query.SelectMaxID("Category") + 1).ToString();
            String[] values = new String[] { id, name, description };
            _query.Insert("Category", values);
        }
        public void InsertCoupon(String name, double originalMoney, double discountPrice, DateTime expiredDate,int rating, int businessId)
        {
            String id = (_query.SelectMaxID("Coupon") + 1).ToString();
            String[] values = new String[] { id, name, originalMoney.ToString(), discountPrice.ToString(), expiredDate.Date.ToString(), rating.ToString(), businessId.ToString(), "False", DateTime.Today.Date.ToString() };
            _query.Insert("Coupon", values);
        }
        public void InsertCouponCategory(int couponId, int categoryId)
        {
            String[] values = new String[] { couponId.ToString(), categoryId.ToString() };
            _query.Insert("CouponCategories", values);
        }
        public void InsertCustomer(String userName, String email, String phone , String name, String password)
        {
            InsertUser(userName, name, password);
            String[] values = new String[] { userName, email, phone };
            _query.Insert("Customer", values);
        }
        public void InsertCustomerPreference(String CustomerUserName, int categoryId)
        {
            String[] values = new String[] { CustomerUserName, categoryId.ToString() };
            _query.Insert("CustomerPerferences", values);
        }
        public void InsertDeal(int status, String serialKey, int couponId, String customerUserName, String paymentMethod)
        {
            String id = (_query.SelectMaxID("Deal") + 1).ToString();
            String[] values = new String[] { id, status.ToString(), serialKey, couponId.ToString(), customerUserName, paymentMethod };
            _query.Insert("Deal", values);
        }
        public void InsertFriend(String userName, String friendUserName)
        {
            String[] values = new String[] { userName, friendUserName };
            _query.Insert("Friends", values);
        }
        public void InsertManager(String userName,String name,String password)
        {
            InsertUser(userName, name, password);
            String[] values = new String[] { userName };
            _query.Insert("Manager", values);
        }
        public void InsertRates(String userName, int couponId, int rateNumber, String description)
        {
            String[] values = new String[] { userName, couponId.ToString(), rateNumber.ToString(), description };
            _query.Insert("Rates", values);
        }
        public void InsertSecurePayment(String method, int securedLevel)
        {
            String[] values = new String[] { method, securedLevel.ToString() };
            _query.Insert("SecurePayment", values);
        }
        public void InsertSystemManager(String userName)
        {
            String[] values = new String[] { userName };
            _query.Insert("SystemManager", values);
        }
        public void InsertUser(String userName, String name, String password)
        {
            String[] values = new String[] { userName, name, password };
            _query.Insert("Users", values);
        }
        /// <the next functions are related to various Delete's functions.>
        /// 
        /// </summary>
        public void DeleteBusiness(int id)
        {
            String[] pkNames = new String[] { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            _query.Delete("Buisness", pkNames, pkValues);
        }

        public void DeleteCategory(int id)
        {
            String[] pkNames = new String[] { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            _query.Delete("Category", pkNames, pkValues);
        }

        public void DeleteCoupon(int couponId)
        {
            String[] pkNames = new String[] { "Id" };
            String[] pkValues = new String[] { couponId.ToString() };
            _query.Delete("Coupon", pkNames, pkValues);
        }

        public void DeleteCouponCategory(int couponId, int categoryId)
        {
            String[] pkNames = new String[] { "CouponId", "CategoryId" };
            String[] pkValues = new String[] { couponId.ToString(), categoryId.ToString() };
            _query.Delete("CouponCategories", pkNames, pkValues);
        }

        public void DeleteCustomer(String userName)
        {
            String[] pkNames = new String[] { "UserName" };
            String[] pkValues = new String[] { userName };
            _query.Delete("Customer", pkNames, pkValues);
        }

        public void DeleteCustomerPreferences(String userName, int categoryId)
        {
            String[] pkNames = new String[] { "CustomerUserName", "CategoryId" };
            String[] pkValues = new String[] { userName, categoryId.ToString() };
            _query.Delete("CustomerPerferences", pkNames, pkValues);
        }

        public void DeleteDeal(int id)
        {
            String[] pkNames = new String[] { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            _query.Delete("Deal", pkNames, pkValues);
        }

        public void DeleteFriend(String userName, String friendUserName)
        {
            String[] pkNames = new String[] { "UserName", "FriendUserName" };
            String[] pkValues = new String[] { userName, friendUserName };
            _query.Delete("Friends", pkNames, pkValues);
        }

        public void DeleteManager(String userName)
        {
            String[] pkNames = new String[] { "UserName" };
            String[] pkValues = new String[] { userName };
            _query.Delete("Manager", pkNames, pkValues);
        }

        public void DeleteRates(String userName, int couponId)
        {
            String[] pkNames = new String[] { "CustomerUserName", "CouponId" };
            String[] pkValues = new String[] { userName, couponId.ToString() };
            _query.Delete("Rates", pkNames, pkValues);
        }

        public void DeleteSecurePayments(String method)
        {
            String[] pkNames = new String[] { "Method" };
            String[] pkValues = new String[] { method };
            _query.Delete("SecurePayment", pkNames, pkValues);
        }

        public void DeleteSystemManager(String userName)
        {
            String[] pkNames = new String[] { "UserName" };
            String[] pkValues = new String[] { userName };
            _query.Delete("SystemManager", pkNames, pkValues);
        }

        public void DeleteUser(String userName)
        {
            String[] pkNames = new String[] { "UserName" };
            String[] pkValues = new String[] { userName };
            _query.Delete("Users", pkNames, pkValues);
        }

        /// <the next functions are related to various Edit's functions.>
        /// 
        /// </summary>

        public void EditBusiness(int id, String fieldToEdit, Object value)
        {
            String[] pkNames = new String[] { "[Buisness].Id" };
            String[] pkValues = new String[] { id.ToString() };
            _query.EditField("Buisness", pkNames, pkValues, fieldToEdit, value.ToString());
        }
        public void EditCategory(int id, String fieldToEdit, Object value)
        {
            String[] pkNames = { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            _query.EditField("Category", pkNames, pkValues, fieldToEdit, value.ToString());
        }
        public void EditCoupon(int id, String fieldToEdit, Object value)
        {
            String[] pkNames = { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            _query.EditField("Coupon", pkNames, pkValues, fieldToEdit, value.ToString());
        }
        public void EditCustomer(String userName, String fieldToEdit, Object value)
        {
            String[] pkNames = { "UserName" };
            String[] pkValues = new String[] { userName };
            _query.EditField("Cutomer", pkNames, pkValues, fieldToEdit, value.ToString());
        }

        public void EditDeal(int id, String fieldToEdit, Object value)
        {
            String[] pkNames = { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            _query.EditField("Deal", pkNames, pkValues, fieldToEdit, value.ToString());
        }
        public void EditRates(String customerUserName, int couponId, String fieldToEdit, Object value)
        {
            String[] pkNames = { "CustomerUserName", "CouponId" };
            String[] pkValues = new String[] { customerUserName, couponId.ToString() };
            _query.EditField("Rates", pkNames, pkValues, fieldToEdit, value.ToString());
        }
        public void EditSecurePayment(String method, String fieldToEdit, Object value)
        {
            String[] pkNames = { "Method" };
            String[] pkValues = new String[] { method };
            _query.EditField("SecurePayment", pkNames, pkValues, fieldToEdit, value.ToString());
        }
        public void EditUser(String userName, String fieldToEdit, Object value)
        {
            String[] pkNames = { "UserName" };
            String[] pkValues = new String[] { userName };
            _query.EditField("Users", pkNames, pkValues, fieldToEdit, value.ToString());
        }
        /// <the next functions are related to various Edit's functions.>
        /// 
        /// </summary>

        public bool IsBusinessExist(int id)
        {
            String[] pkNames = { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            return _query.isExist("Buisness", pkNames, pkValues);
        }

        public bool IsCategoryExist(int id)
        {
            String[] pkNames = { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            return _query.isExist("Category", pkNames, pkValues);
        }

        public bool IsCouponExist(int id)
        {
            String[] pkNames = { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            return _query.isExist("Coupon", pkNames, pkValues);
        }

        public bool IsCouponCategoryExist(int couponId, int categrotyId)
        {
            String[] pkNames = { "CouponId", "CategoryId" };
            String[] pkValues = new String[] { couponId.ToString(), categrotyId.ToString() };
            return _query.isExist("CouponCategories", pkNames, pkValues);
        }

        public bool IsCustomerExist(String userName)
        {
            String[] pkNames = { "UserName" };
            String[] pkValues = new String[] { userName };
            return _query.isExist("Customer", pkNames, pkValues);
        }

        public bool IsCustomerPreferenceExist(String userName, int categoryId)
        {
            String[] pkNames = { "CustomerUserName", "CategoryId" };
            String[] pkValues = new String[] { userName, categoryId.ToString() };
            return _query.isExist("CustomerPerferences", pkNames, pkValues);
        }

        public bool IsDealExist(int id)
        {
            String[] pkNames = { "Id" };
            String[] pkValues = new String[] { id.ToString() };
            return _query.isExist("Deal", pkNames, pkValues);
        }

        public bool IsFriendExist(String userName, String friendUserName)
        {
            String[] pkNames = { "UserName", "FriendUserName" };
            String[] pkValues1 = new String[] { userName, friendUserName };
            String[] pkValues2 = new String[] { friendUserName, userName };
            return (_query.isExist("Friends", pkNames, pkValues1)
                || _query.isExist("Friends", pkNames, pkValues2));
        }

        public bool IsManagerExist(String userName)
        {
            String[] pkNames = { "UserName" };
            String[] pkValues = new String[] { userName };
            return _query.isExist("Manager", pkNames, pkValues);
        }

        public bool IsRateExist(String customerUserName, int couponId)
        {
            String[] pkNames = { "customerUserName", "CouponId" };
            String[] pkValues = new String[] { customerUserName, couponId.ToString() };
            return _query.isExist("Rates", pkNames, pkValues);
        }

        public bool IsSecurePaymentExist(String method)
        {
            String[] pkNames = { "Method" };
            String[] pkValues = new String[] { method };
            return _query.isExist("SecurePayment", pkNames, pkValues);
        }

        public bool IsSystemManagerExist(String userName)
        {
            String[] pkNames = { "UserName" };
            String[] pkValues = new String[] { userName };
            return _query.isExist("SystemManager", pkNames, pkValues);
        }

        public bool IsUserExist(String userName)
        {
            String[] pkNames = { "UserName" };
            String[] pkValues = new String[] { userName };
            return _query.isExist("Users", pkNames, pkValues);
        }

        public DataTable selectCouponsName(String couponName)
        {
            String[] colums = { "[Coupon].Id", "[Coupon].Name", "DiscountPrice as 'Price'", "[Buisness].Name as 'Business'", "ExpiredDate" };
            String[] pkNames = { "[Coupon].Name" ,"[Coupon].approve","[Buisness].approve"};
            String[] pkValues = { couponName, "True", "True" };
            String[] tableNames = { "Coupon", "Buisness" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[1];
            intersect[0] = new Tuple<string, string>("[Coupon].BuisnessId", "[Buisness].Id");
            return _query.select(tableNames, pkNames, pkValues, colums,intersect);
        }

        public DataTable selectCouponsDetails()
        {
            String[] colums = { "[Coupon].Id","[Coupon].Name", "DiscountPrice as 'Price'", "[Buisness].Name as 'Business'", "ExpiredDate" };
            String[] pkNames = {"[Coupon].approve","[Buisness].approve"};
            String[] pkValues = {"True","True"};
            String[] tableNames = { "Coupon","Buisness" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[1];
            intersect[0] = new Tuple<string, string>("[Coupon].BuisnessId", "[Buisness].Id");
            return _query.select(tableNames, pkNames, pkValues, colums, intersect);
        }

        public DataTable selectCouponDetailsWithCategory(String categoryName)
        {
            String[] colums = { "[Coupon].Id", "[Coupon].Name", "DiscountPrice as 'Price'", "BuisnessId as 'Business'", "ExpiredDate", "[Category].Name as 'Category'" };
            String[] pkNames = { "[Category].Name","[Coupon].approve" };
            String[] pkValues = { categoryName, "True" };
            String[] tableNames = { "Coupon","Category","CouponCategories" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[2];
            intersect[0] = new Tuple<string, string>("[Category].Id", "[CouponCategories].CategoryId");
            intersect[1] = new Tuple<string, string>("[Coupon].Id", "[CouponCategories].CouponId");
            return _query.select(tableNames, pkNames, pkValues, colums, intersect);
        }

        public DataTable selectBusinessByCity(String cityName,String managerUserName)
        {
            String[] colums = { "[Buisness].Id", "[Buisness].Name", "[Buisness].Address", "[Buisness].Description", "[Buisness].City" };
            String[] tableNames = { "Buisness" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[0];
            if (managerUserName.Length != 0)
            {
                String[] pkValues = { cityName, managerUserName,"True" };
                String[] pkNames = { "[Buisness].City", "[Buisness].ManagerUserName","[Buisness].approve" };
                return _query.select(tableNames, pkNames, pkValues, colums, intersect);
            }
            else
            {
                String[] pkValues = { cityName,"True" };
                String[] pkNames = { "[Buisness].City","[Buiseness].approve" };
                return _query.select(tableNames, pkNames, pkValues, colums, intersect);
            }
            
        }


        public DataTable selectBuisnesses(String managerName)
        {
            String[] colums = { "[Buisness].Name as 'title'", "[Buisness].Latitude as 'lat'", "[Buisness].Longitude as 'lng'", "[Buisness].Name as 'description'" };
            String[] tableNames = { "Buisness" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[0];
            if (managerName.Length != 0)
            {
                String[] pkValues = { managerName ,"True"};
                String[] pkNames = { "[Buisness].ManagerUserName","[Buisness].approve"};
                return _query.select(tableNames, pkNames, pkValues, colums, intersect);
            }
            else
            {
                String[] pkValues = {"True" };
                String[] pkNames = {"[Buisness].approve" };
                return _query.select(tableNames, pkNames, pkValues, colums, intersect);
            }
            
        }

        public DataTable selectBuisnessesByName(String businessName, String managerName)
        {
            String[] colums = { "[Buisness].Name", "[Buisness].Address", "[Buisness].Description", "[Buisness].City" };
            String[] tableNames = { "Buisness" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[0];
            if (managerName.Length != 0)
            {
                String[] pkValues = { managerName, businessName ,"True" };
                String[] pkNames = { "[Buisness].ManagerUserName" , "[Buisness].Name" ,"[Buisness].approve"};
                return _query.select(tableNames, pkNames, pkValues, colums, intersect);
            }
            else
            {
                String[] pkValues = { businessName ,"True" };
                String[] pkNames = { "[Buisness].Name","[Buisness].approve" };
                return _query.select(tableNames, pkNames, pkValues, colums, intersect);
            }

        }

        public DataTable getUserPersonalName(String userName)
        {
            String[] colums = { "[Users].Name" };
            String[] pkNames = { "[Users].UserName" };
            String[] pkValues = { userName };
            String[] tableNames = { "Users" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[0];
            return _query.select(tableNames, pkNames, pkValues, colums, intersect);
        }

        public DataTable selectCoupons()
        {
            String[] colums = { "[Coupon].Name as 'title'", "[Buisness].Latitude as 'lat'", "[Buisness].Longitude as 'lng'", "[Coupon].Name as 'description'" };
            String[] pkNames = {"[Coupon].approve","[Buisness].approve" };
            String[] pkValues = {"True","True" };
            String[] tableNames = { "Buisness","Coupon" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[0];
            return _query.select(tableNames, pkNames, pkValues, colums, intersect);
        }

        public DataTable selectCouponApprove()
        {
            String[] colums = { "[Coupon].Id", "[Coupon].Name","[Buisness].Name as 'Business Name'","[Coupon].addedDate as 'Added Date'" };
            String[] pkNames = { "[Coupon].approve", "[Buisness].approve" };
            String[] pkValues = { "False", "True" };
            String[] tableNames = { "Buisness", "Coupon" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[1];
            intersect[0] = new Tuple<string, string>("[Coupon].BuisnessId", "[Buisness].Id");
            return _query.select(tableNames, pkNames, pkValues, colums, intersect);
        }

        public DataTable selectBusinessApprove()
        {
            String[] colums = { "[Buisness].Id", "[Buisness].Name", "[Buisness].Address", "[Buisness].Description", "[Buisness].City" };
            String[] pkNames = {"[Buisness].approve" };
            String[] pkValues = { "False" };
            String[] tableNames = { "Buisness" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[0];
            return _query.select(tableNames, pkNames, pkValues, colums, intersect);
        }

        public DataTable selectCustomerHistory(String userName)
        {
            String[] colums = { "[Coupon].Name", "[Deal].PaymentMethod", "[Deal].SerialKey" };
            String[] pkNames = { "[Deal].CustomerUserName" };
            String[] pkValues = { userName };
            String[] tableNames = { "Deal","Coupon" };
            Tuple<String, String>[] intersect = new Tuple<string, string>[1];
            intersect[0] = new Tuple<string, string>("[Deal].CouponId", "[Coupon].Id");
            return _query.select(tableNames, pkNames, pkValues, colums, intersect);
        }


        
    }
    
}