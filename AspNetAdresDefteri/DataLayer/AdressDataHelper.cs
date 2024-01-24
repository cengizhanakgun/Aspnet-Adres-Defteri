using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Web;
using AspNetAdresDefteri.Model;

namespace AspNetAdresDefteri.DataLayer
{
    
    public class AdressDataHelper
    {


                                  //  @AD
                                  //, @SOYAD
                                  //, @TAKMAD
                                  //, @DOGUMTARİHİ
                                  //, @CİNSİYET
                                  //, @TELEFONS
                                  //, @TELEFONM
                                  //, @FAKS
                                  //, @EPOSTA
                                  //, @ADRES
                                  //, @NOT)";

        public List<Address> GetAddresses()
        {
            var retVal = new List<Address>();   
            var conn = GetConnection();
            var command = new SqlCommand("Select * from Kisiler", conn);
            conn.Open();
            var reader =   command.ExecuteReader();
  
     
            while (reader.Read())
            {
                retVal.Add(new Address {
                 
                    Id = Convert.ToInt32(reader["ID"]), 
                    Name = reader["AD"].ToString(), 
                    SurName = reader["SOYAD"].ToString(),
                    NickName = reader["TAKMAD"].ToString(),
                    BirthDate = Convert.ToDateTime(reader["DOGUMTARİHİ"]),
                    Gender = reader["CİNSİYET"].ToString()=="1",
                    MobilePhoneNumber = reader["TELEFONS"].ToString() , 
                    HomeNumber = reader["TELEFONM"].ToString(),
                    Fax = reader["FAKS"].ToString(),
                    UserAdress = reader["ADRES"].ToString(),
                    Email = reader["EPOSTA"].ToString(),
                    Note = reader["NOT"].ToString(),


            });
                


            }
            conn.Close();   
            conn.Dispose();
            return retVal;  

        }
    
        public int AddAddress(Address address)
        {

            var conn = GetConnection();

            var command = new SqlCommand();
            command.Connection = conn;

            command.CommandText = @"INSERT INTO Kisiler
                                   ([AD]
                                   ,[SOYAD]
                                   ,[TAKMAD]
                                   ,[DOGUMTARİHİ]
                                   ,[CİNSİYET]
                                   ,[TELEFONS]
                                   ,[TELEFONM]
                                   ,[FAKS]
                                   ,[EPOSTA]
                                   ,[ADRES]
                                   ,[NOT])
                             VALUES
                                   (@AD
                                   ,@SOYAD
                                   ,@TAKMAD
                                   ,@DOGUMTARİHİ
                                   ,@CİNSİYET
                                   ,@TELEFONS
                                   ,@TELEFONM
                                   ,@FAKS
                                   ,@EPOSTA
                                   ,@ADRES
                                   ,@NOT)";

            command.Parameters.Add(new SqlParameter("@AD",address.Name));
            command.Parameters.Add(new SqlParameter("@SOYAD", address.SurName));
            command.Parameters.Add(new SqlParameter("@TAKMAD", address.NickName));
            command.Parameters.Add(new SqlParameter("@DOGUMTARİHİ", address.BirthDate));
            command.Parameters.Add(new SqlParameter("@CİNSİYET", address.Gender));
            command.Parameters.Add(new SqlParameter("@TELEFONS", address.MobilePhoneNumber));
            command.Parameters.Add(new SqlParameter("@TELEFONM", address.HomeNumber));
            command.Parameters.Add(new SqlParameter("@FAKS", address.Fax));
            command.Parameters.Add(new SqlParameter("@EPOSTA", address.Email));
            command.Parameters.Add(new SqlParameter("@ADRES", address.UserAdress));
            command.Parameters.Add(new SqlParameter("@NOT", address.Note));
            conn.Open();
            var retVal = command.ExecuteNonQuery();
            conn.Close();
            conn.Dispose(); 
            return retVal;
        }

        private SqlConnection GetConnection()
        {
            var connectionString = ConfigurationManager.ConnectionStrings["AdresDefteriDB"].ConnectionString;
            var con = new SqlConnection(connectionString);
            return con;

        }

        public Address GetAddress(int id)
        {
            var retVal = new Address();
            var conn = GetConnection();
            var command = new SqlCommand("Select * from Kisiler where ID= @ID", conn);
            command.Parameters.Add(new SqlParameter("@ID", id));
            conn.Open();
            var reader = command.ExecuteReader();


            while (reader.Read())
            {
                retVal =new Address
                {

                    Id = Convert.ToInt32(reader["ID"]),
                    Name = reader["AD"].ToString(),
                    SurName = reader["SOYAD"].ToString(),
                    NickName = reader["TAKMAD"].ToString(),
                    BirthDate = Convert.ToDateTime(reader["DOGUMTARİHİ"]),
                    Gender = reader["CİNSİYET"].ToString() == "1",
                    MobilePhoneNumber = reader["TELEFONS"].ToString(),
                    HomeNumber = reader["TELEFONM"].ToString(),
                    Fax = reader["FAKS"].ToString(),
                    UserAdress = reader["ADRES"].ToString(),
                    Email = reader["EPOSTA"].ToString(),
                    Note = reader["NOT"].ToString(),


                };



            }
            conn.Close();
            conn.Dispose();
            return retVal;

        }
    }
}