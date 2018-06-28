using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public class DbLayer
{

    SqlConnection con;
    SqlCommand cmd;

    public DbLayer()
    {
        con = new SqlConnection(GetConnection);
        cmd = new SqlCommand();
        cmd.Connection = con;
    }


    public static string GetConnection
    {
        get
        {
            return ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        }
    }

    public DataSet GetDataSet(string command)
    {
        SqlDataAdapter da = new SqlDataAdapter(command, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }


    public int ExecuteNonQuery(string comm)
    {
        cmd.CommandText = comm;
        con.Open();

        int i = cmd.ExecuteNonQuery();
        con.Close();
        return i;
    }

    public object ExecuteScaler(string comm)
    {
        object o = null;
        cmd.CommandText = comm;
        con.Open();
        o = cmd.ExecuteScalar();
        con.Close();
        return o;

    }
    

    public Boolean ExecuteCheck(string comm)
    {
        bool check = false;
        SqlDataReader dr = null;
        cmd.CommandText = comm;
        con.Open();
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            check = true;
        }
        else
        {
            check = false;
        }
        con.Close();
        return check;


    }

}