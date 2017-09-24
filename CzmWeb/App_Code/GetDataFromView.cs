using System;
using System.Data;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using CzmWeb;
namespace CzmWeb.App_Code
{
    public class GetDataFromView:PublicGetDataFromDB
    {
        private String[] viewNameList = { "vwCreateProjrctItem", "vwInvestProject", "vwproductInfo", "vwProvinceList", "vwRegionInfo", "vwUserInfo", "vwVideoList" };
        public  String[] ViewNameList
        {
            get { return viewNameList; }
        }
        /// <summary>
        /// 返回视图vwCreateProjrctItem里面所有的数据
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwCreateProjrctItem()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwCreateProjrctItem";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwCreateProjrctItem里面加上where条件的所有数据
        /// </summary>
        /// <param name="Where"></param>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwCreateProjrctItem(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwCreateProjrctItem Where " + Where;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwInvestProject里面所有的数据
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwInvestProject()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwInvestProject";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwInvestProject里面加上where条件的所有数据
        /// </summary>
        /// <param name="Where"></param>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwInvestProject(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwInvestProject Where " + Where;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwproductInfo里面所有的数据
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwproductInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwproductInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwproductInfo里面加上where条件的所有数据
        /// </summary>
        /// <param name="Where"></param>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwproductInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwproductInfo Where " + Where;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwProvinceList里面所有的数据
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwProvinceList()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwProvinceList";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwProvinceList里面加上where条件的所有数据
        /// </summary>
        /// <param name="Where"></param>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwProvinceList(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwProvinceList Where " + Where;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwRegionInfo里面所有的数据
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwRegionInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwRegionInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwRegionInfo里面加上where条件的所有数据
        /// </summary>
        /// <param name="Where"></param>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwRegionInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwRegionInfo Where " + Where;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwUserInfo里面所有的数据
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwUserInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwUserInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwUserInfo里面加上where条件的所有数据
        /// </summary>
        /// <param name="Where"></param>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwUserInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwUserInfo Where " + Where;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwVideoList里面所有的数据
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwVideoList()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwUserInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回视图vwVideoList里面加上where条件的所有数据
        /// </summary>
        /// <param name="Where"></param>
        /// <returns></returns>
        public DataTable GetAllDataFrom_vwVideoList(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM vwVideoList Where " + Where;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
    }
}