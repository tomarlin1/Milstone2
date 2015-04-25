using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using Coupon_Web.DAL;


namespace Coupon_Web.DAL
{
    public class Queries
    {
        private static Connection _conn = Connection.getInstanceConn();

        public Queries(){}

        //
        public void Insert(String tableName, String[] values)
        {
            try
            {
                String query = "INSERT INTO [" + tableName + "] values ";
                int size = values.Length;

                //creating place holders in format: @0,@1,@2 etc...
                String sqlParam = "(";
                for (int i = 0; i < size; i++)
                {
                    sqlParam += "@" + i;
                    if (i < size - 1)
                        sqlParam += ",";
                    else
                        sqlParam += ")";
                }
                query += sqlParam; //append parameters into query.

                //create sqlcommand.
                SqlCommand cmdSql = new SqlCommand(query, _conn.getSqlCon());

                //replace the given values into placeholders.
                for (int i = 0; i < size; i++)
                {
                    cmdSql.Parameters.AddWithValue("@" + i, values[i]);
                }
                //execute.
                _conn.open();
                cmdSql.ExecuteNonQuery();
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                _conn.close();
            }
        }

        //
        public void EditField(String tableName, String[] pKeyNames, String[] pKeyValues, String fieldName, String newValue)
        {
            try
            {
                int pkSize = pKeyNames.Length;
                String query = "UPDATE [" + tableName + "] " +
                               "SET " + fieldName + "=" + "@newVal " +
                               "WHERE ";
                String pkCond = "";

                //creating place holders in format: @0,@1,@2 etc...
                for (int i = 0; i < pkSize; i++)
                {
                    pkCond += pKeyNames[i] + "=@" + i;
                    if (i < pkSize - 1)
                        pkCond += " AND ";
                }
                query += pkCond;

                //create sqlcommand.
                SqlCommand cmdSql = new SqlCommand(query, _conn.getSqlCon());

                //replace the given values into placeholders.
                for (int i = 0; i < pkSize; i++)
                {
                    cmdSql.Parameters.AddWithValue("@" + i, pKeyValues[i]);
                }
                cmdSql.Parameters.AddWithValue("@newVal", newValue);

                _conn.open();
                //execute.
                cmdSql.ExecuteNonQuery();
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                _conn.close();
            }
           
        }

        //
        public void Delete(String tableName, String[] pKeyNames, String[] pKeyValues)
        {
            try
            {
                int pkSize = pKeyNames.Length;
                String query = "DELETE FROM [" + tableName + "] " +
                               "WHERE ";
                String pkCond = "";

                //creating place holders in format: @0,@1,@2 etc...
                for (int i = 0; i < pkSize; i++)
                {
                    pkCond += pKeyNames[i] + "=@" + i;
                    if (i < pkSize - 1)
                        pkCond += " AND ";
                }
                query += pkCond;

                //create sqlcommand.
                SqlCommand cmdSql = new SqlCommand(query, _conn.getSqlCon());

                //replace the given values into placeholders.
                for (int i = 0; i < pkSize; i++)
                {
                    cmdSql.Parameters.AddWithValue("@" + i, pKeyValues[i]);
                }

                _conn.open();
                //execute.
                cmdSql.ExecuteNonQuery();
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                _conn.close();
            }

        }

        //find row with PK pKeyName in tableName
        //in success return the line, else return NULL.
        public bool isExist(String tableName, String[] pKeyNames, String[] pKeyValues)
        {
            try
            {
                int pkSize = pKeyNames.Length;
                String query = "SELECT * FROM [" + tableName + "] " +
                               "WHERE ";
                String pkCond = "";

                //creating place holders in format: @0,@1,@2 etc...
                for (int i = 0; i < pkSize; i++)
                {
                    pkCond += pKeyNames[i] + "=@" + i;
                    if (i < pkSize - 1)
                        pkCond += " AND ";
                }
                query += pkCond;

                //create sqlcommand.
                SqlCommand cmdSql = new SqlCommand(query, _conn.getSqlCon());

                //replace the given values into placeholders.
                for (int i = 0; i < pkSize; i++)
                {
                    cmdSql.Parameters.AddWithValue("@" + i, pKeyValues[i]);
                }
                //execute.
                _conn.open();
                SqlDataReader reader = cmdSql.ExecuteReader();

                bool tmp = reader.HasRows;
                reader.Close();
                return tmp;
            }
            catch(Exception e)
            {
                throw e;
            }
            finally
            {
                _conn.close();
            }   
        }
    }
}