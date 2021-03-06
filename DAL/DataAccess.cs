﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using Microsoft.Win32;



namespace DAL
{
    public abstract class DataAccess
    {
        private SqlConnection dbCon = new SqlConnection();
        private string DataBaseName = "";
        private string UserName = "";
        private string Password = "";
        private int mConnectionTimeOut = 0;
        private string dataSource = "";
        public string ConnStr = "";


        private SqlTransaction dbTran;



        public DataAccess()
        {
            try
            {
                if (null != ConfigurationSettings.AppSettings.Get("ServerName").ToString())
                {
                    dataSource = ConfigurationSettings.AppSettings.Get("ServerName").ToString();
                }
                else
                {
                    dataSource = "MAINSERVER";
                }

                if (null != ConfigurationSettings.AppSettings.Get("DBName"))
                {
                    DataBaseName = ConfigurationSettings.AppSettings.Get("DBName").ToString();
                }
                else
                {
                    DataBaseName = "DFDB";
                }

                if (null != ConfigurationSettings.AppSettings.Get("UserName"))
                {
                    UserName = ConfigurationSettings.AppSettings.Get("UserName").ToString();
                }
                else
                {
                    UserName = "DFDB";
                }

                if (null != ConfigurationSettings.AppSettings.Get("Password"))
                {
                    Password = ConfigurationSettings.AppSettings.Get("Password").ToString();
                }
                else
                {
                    Password = "DFDB";
                }

            }
            catch (NullReferenceException e)
            {
                dataSource = "ishan-lap";

                DataBaseName = "OrderDB";
                UserName = "sa";
                Password = "123";
            }

            ConnStr = "User ID=" + UserName + ";Password=" + Password + ";Initial Catalog=" + DataBaseName + ";Data Source=" + dataSource + ";Persist Security Info= true;MultipleActiveResultSets=True;";
            openConn();
        }




        /// <summary>
        ///create and open the SQL Conection
        /// </summary>
        public void openConn()
        {
            try
            {

                //dbCon 
                if (dbCon.State == ConnectionState.Closed)
                {
                    dbCon.ConnectionString = ConnStr;

                    //dbCon.
                    dbCon.Open();
                }
            }
            catch (Exception e)
            {
                string s = e.Message;
            }
        }


        public void closeConn()
        {
            dbCon.Close();
            dbCon.Dispose();
        }
        public SqlConnection DBConn
        {
            get { return dbCon; }
        }
        public SqlTransaction Transobj
        {
            get { return dbTran; }
        }

        /*	This will Return a dataset
         *	Sql String Should Provide	
         */
    
        public DataSet getDataset(string StrSQL)
        {
            DataSet Results = new DataSet();
            try
            {
                SqlDataAdapter sda = new SqlDataAdapter(newCommand(StrSQL, CommandType.Text));
                sda.Fill(Results);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return Results;
        }



        public int GetNumberOfRecords(string StrSQL)
        {
            int count = -1;
            DataSet Reults = new DataSet();
            try
            {

                SqlDataAdapter sda = new SqlDataAdapter(newCommand(StrSQL, CommandType.Text));
                sda.Fill(Reults, "Table");
                count = Reults.Tables["Table"].Rows.Count;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return count;
        }




        private SqlCommand newCommand(string SQLstring, CommandType cmdType)
        {
            if (dbTran == null)
            {
                SqlCommand cmd = new SqlCommand(SQLstring, dbCon);
                cmd.CommandTimeout = mConnectionTimeOut;
                cmd.CommandType = cmdType;
                return cmd;
            }
            else
            {
                SqlCommand cmd = new SqlCommand(SQLstring, dbTran.Connection);
                cmd.Transaction = dbTran;
                cmd.CommandTimeout = mConnectionTimeOut;
                cmd.CommandType = cmdType;
                return cmd;

            }

        }


        protected void fillDataset(string sqlSelet, DataSet myDataSet)
        {
            string tblName = "OBalane";
            try
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(newCommand(sqlSelet, CommandType.Text));
                dataAdapter.TableMappings.Add("table", tblName);
                dataAdapter.Fill(myDataSet);
            }
            catch (Exception Ex)
            {
                throw Ex;
            }
        }


        protected void fillDataset(string sqlSelet, DataSet myDataSet, string tblName)
        {
            try
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(newCommand(sqlSelet, CommandType.Text));
                dataAdapter.TableMappings.Add("table", tblName);
                dataAdapter.Fill(myDataSet);
            }

            catch (Exception Ex)
            {
                throw Ex;
            }
        }


        protected void fillDataset(string sqlSelet, DataSet myDataSet, string[] tblNames)
        {
            try
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(newCommand(sqlSelet, CommandType.Text));

                if (tblNames != null && tblNames.Length > 0)
                {

                    for (int index = 0; index < tblNames.Length; index++)
                    {
                        if (tblNames[index] == null || tblNames[index].Length == 0) throw new ArgumentException("The tableNames parameter must contain a list of tables, a value was provided as null or empty string.", "tableNames");
                        dataAdapter.TableMappings.Add("table" + index, tblNames[index]);

                    }
                }

                // Fill the DataSet using default values for DataTable names, etc
                dataAdapter.Fill(myDataSet);


            }

            catch (Exception Ex)
            {

                throw Ex;

            }

        }

        public void callSp(string spName, SqlParameter[] paraList)
        {
            try
            {
               

                SqlCommand cmd = newCommand(spName, CommandType.StoredProcedure);
                foreach (SqlParameter sqlpara in paraList)
                {
                    cmd.Parameters.Add(sqlpara.ParameterName, sqlpara.Value);
                }
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


       
        public int exeNonQury(string sqlString)
        {
            try
            {

                SqlCommand cmd = newCommand(sqlString, CommandType.Text);
                return cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

       
        protected SqlDataReader getDataReader(string strSelect)
        {
            SqlDataReader mDataReader;

            try
            {
                SqlCommand sqlcmd = newCommand(strSelect, CommandType.Text);
                mDataReader = sqlcmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return mDataReader;
        }


       
        public void BeginTran()
        {
            dbTran = dbCon.BeginTransaction(IsolationLevel.ReadCommitted);
        }



        public void CommitTran()
        {
            dbTran.Commit();
            dbTran.Dispose();
            dbTran = null;
        }


        public void RollbackTran()
        {
            dbTran.Rollback();
            dbTran = null;

        }





    }
}
