using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using Coupon_Web.DAL;
using System.Data;


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
                String query = "INSERT INTO [" + tableName + "] VALUES ";
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
                    switch (values[i])
                    {
                        case "True":
                            bool tr = true;
                            cmdSql.Parameters.AddWithValue("@" + i, tr);
                            break;
                        case "False":
                            bool fl = false;
                            cmdSql.Parameters.AddWithValue("@" + i, fl);
                            break;
                        default:
                            cmdSql.Parameters.AddWithValue("@" + i, values[i]);
                            break;
                    }

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

        //select from table
        public DataTable select(String[] tableNames, String[] pKeyNames, String[] pKeyValues, String[] columns,Tuple<String,String>[] intersect)
        {
            try
            {
                //choose columns to select.Default is select all
                String columnsNames = "";
                if (columns.Length != 0)
                {
                    for (int i = 0; i < columns.Length - 1; i++)
                    {
                        columnsNames += columns[i] + ",";
                    }
                    columnsNames += columns[columns.Length - 1] ;
                }
                else
                    columnsNames = "*";

                //Choose tables 
                String currentTableNames = "";
                for (int i = 0; i < tableNames.Length - 1; i++)
                {
                    currentTableNames += "["+tableNames[i] + "],";
                }
                currentTableNames += "[" + tableNames[tableNames.Length - 1] + "]";


                int pkSize = pKeyNames.Length;
                //build base quary
                String query = "SELECT " + columnsNames + " FROM " + currentTableNames;

                SqlCommand cmdSql;

                //if there are any conditions
                if (pKeyNames.Length != 0 && pKeyValues.Length != 0)
                {
                    String pkCond = "";

                    query += " WHERE ";

                    //creating place holders in format: @0,@1,@2 etc...
                    for (int i = 0; i < pkSize; i++)
                    {
                        pkCond += pKeyNames[i] + "=@" + i;
                        if (i < pkSize - 1 || intersect.Length != 0)
                            pkCond += " AND ";
                    }

                    for (int i = 0; i < intersect.Length  ;i++ )
                    {
                        pkCond += intersect[i].Item1 + "=" + intersect[i].Item2;
                        if (i < intersect.Length - 1)
                            pkCond += " AND ";
                    }


                    query += pkCond;

                    //create sqlcommand.
                    cmdSql = new SqlCommand(query, _conn.getSqlCon());

                    //replace the given values into placeholders.
                    for (int i = 0; i < pkSize; i++)
                    {
                        switch (pKeyValues[i])
                        {
                            case "True":
                                bool tr = true;
                                cmdSql.Parameters.AddWithValue("@" + i, tr);
                                break;
                            case "False":
                                bool fl = false;
                                cmdSql.Parameters.AddWithValue("@" + i, fl);
                                break;
                            default:
                                cmdSql.Parameters.AddWithValue("@" + i, pKeyValues[i]);
                                break;
                        }
                      
                    }
                }
                else
                {
                    
                     if (intersect.Length != 0)
                     {
                         query += " WHERE ";
                         String pkCond = "";
                         for (int i = 0; i < intersect.Length; i++)
                         {
                             pkCond += intersect[i].Item1 + "=" + intersect[i].Item2;
                             if (i < intersect.Length - 1)
                                 pkCond += " AND ";
                         }

                         query += pkCond;
                     }

                     cmdSql = new SqlCommand(query, _conn.getSqlCon());

                }

                //execute.
                _conn.open();
                SqlDataReader reader = cmdSql.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                return dt;
            }
            catch (Exception e)
            {
                throw e;
            }
            finally
            {
                _conn.close();
            }
        }

        public DataTable selectColumnsFrom(String tableName, String[] columns)
        {
            try
            {
                //choose columns to select.Default is select all
                String columnsNames = "";
                if (columns.Length != 0)
                {
                    for (int i = 0; i < columns.Length - 1; i++)
                    {
                        columnsNames += columns[i] + ",";
                    }
                    columnsNames += columns[columns.Length - 1];
                }
                else
                    columnsNames = "*";
                String query = "SELECT " + columnsNames + " FROM " + tableName;

                SqlCommand cmdSql= new SqlCommand(query, _conn.getSqlCon());
                //execute.
                _conn.open();
                SqlDataReader reader = cmdSql.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                return dt;

            }
            catch (Exception e)
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