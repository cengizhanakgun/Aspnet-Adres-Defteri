using System;

namespace AspNetAdresDefteri.Model
{
    public class Address
    {

        public int Id { get; set; }
        public string Name { get; set; }

        public string SurName { get; set; }
        public string NickName { get; set; }

        public DateTime BirthDate { get; set; }
        public bool Gender { get; set; }
        public string MobilePhoneNumber { get; set; }
        public string HomeNumber { get; set; }
        public string Fax { get; set; }
        public string Email { get; set; }   
        public string UserAdress { get; set; }
        public string Note { get; set; }


    }
}