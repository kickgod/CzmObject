using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace CzmWeb.App_Code
{
    public class GetDataFromTable : PublicGetDataFromDB
    {

        private String[] tableNameLIst = { "tblAdministrator", "tblAdviceInfo", "tblDowntownRegionList",
                                             "tblFirstPictureList", "tblFirstPictureList", "tblFirstPictureList", "tblProductInfo",
                                         "tblProductTypeInfo","tblProjectCreate","tblProjectInvestInfo","tblProvinceRegionList","tblUserInfo","tblUserTypeInfo","tblVideoInfo"};
        public String[] TableNameLIst
        {
            get { return tableNameLIst; }
        }
        /// <summary>
        /// 返回表tblAdministrator里面所有的数据
        /// </summary>
        /// <returns></returns>
        public DataTable GetAllDataFromtblAdministrator()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td =new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType=CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblAdministrator";
            SqlDataAdapter adapter =new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblAdministrator里面加上where条件的所有数据
        /// </summary>
        /// <param name="Where"></param>
        /// <returns></returns>
        public DataTable GetAllDataFromtblAdministrator(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where=="")
            {
                cmd.CommandText = "SELECT * FROM tblAdministrator";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblAdministrator Where " + Where;  
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblAdviceInfo所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblAdviceInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblAdviceInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblAdviceInfo里面加上where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblAdviceInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblAdviceInfo";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblAdviceInfo Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblDowntownRegionList所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblDowntownRegionList()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblDowntownRegionList";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblDowntownRegionList加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblDowntownRegionList(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblDowntownRegionList";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblDowntownRegionList Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblFirstPictureList所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblFirstPictureList()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblFirstPictureList";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblFirstPictureList加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblFirstPictureList(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblFirstPictureList";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblFirstPictureList Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProductInfo所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProductInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblProductInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProductInfo加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProductInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblProductInfo";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblProductInfo Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProductTypeInfo所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProductTypeInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblProductTypeInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProductTypeInfo加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProductTypeInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblProductTypeInfo";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblProductTypeInfo Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProjectCreate所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProjectCreate()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblProjectCreate";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProjectCreate加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProjectCreate(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblProjectCreate";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblProjectCreate Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProjectInvestInfo所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProjectInvestInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblProjectInvestInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProjectInvestInfo加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProjectInvestInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblProjectInvestInfo";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblProjectInvestInfo Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProvinceRegionList所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProvinceRegionList()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblProvinceRegionList";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblProvinceRegionList加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblProvinceRegionList(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblProvinceRegionList";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblProvinceRegionList Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblUserInfo所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblUserInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblUserInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblUserInfo加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblUserInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblUserInfo";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblUserInfo Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblUserTypeInfo所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblUserTypeInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblUserTypeInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblUserTypeInfo加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblUserTypeInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblUserTypeInfo";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblUserTypeInfo Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblVideoInfo所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblVideoInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblVideoInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblVideoInfo加上Where条件的所有数据
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblVideoInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblVideoInfo";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblVideoInfo Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblLiveInfo所有数据
        /// 表中信息为直播地址信息 
        /// 修改人：蒋星 2017 /11/3 16:34
        /// </summary>
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblLiveInfo()
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM tblLiveInfo";
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
        /// <summary>
        /// 返回表tblLiveInfo所有数据
        /// 表中信息为直播地址信息 
        /// 修改人：蒋星 2017 /11/3 16:34
        /// <returns>返回数据集DataTable</returns>
        public DataTable GetAllDataFromtblLiveInfo(String Where)
        {
            SqlConnection con = GetSqlConnection();
            DataTable td = new DataTable();
            if (con.State != ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Where == "")
            {
                cmd.CommandText = "SELECT * FROM tblLiveInfo";
            }
            else
            {
                cmd.CommandText = "SELECT * FROM tblLiveInfo Where " + Where;
            }
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(td);
            return td;
        }
    }
}