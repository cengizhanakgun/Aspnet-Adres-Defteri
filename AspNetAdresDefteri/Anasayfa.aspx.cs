using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AspNetAdresDefteri.DataLayer;
using AspNetAdresDefteri.Model;

namespace AspNetAdresDefteri
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        AdressDataHelper _helper = new AdressDataHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
        

            if (!Page.IsPostBack)
            {
                var data = _helper.GetAddresses();
                GridViewDataBind(data);
            }
        }

        private void GridViewDataBind(List<Address> data)
        {
            gvAdresses.DataSource = data;
            gvAdresses.DataBind();
        }


        protected void btnSave_Click(object sender, EventArgs e)
        {
            var adress = new Address();
            adress.Name = txtName.Text;
            adress.SurName = txtLastname.Text;  
            adress.NickName = txtNickname.Text;
            adress.BirthDate = calBirth.SelectedDate;
            if(ddGender.SelectedValue != "Seçiniz")
            {
                adress.Gender = ddGender.SelectedValue == "Bay" ? true : false;

            }

            adress.MobilePhoneNumber = txtMobile.Text;
            adress.HomeNumber = txtHome.Text;
            adress.Fax = txtFaks.Text;
            adress.Email = txtEMail.Text;
            adress.Note = txtNot.Text;
            adress.UserAdress = txtAdress.Text;

           var rowCount = _helper.AddAddress(adress);

            if(rowCount > 0)
            {
                ClearAddressForm();
            }



        }

        private void ClearAddressForm()
        {
            txtName.Text = string.Empty;    
            txtLastname.Text = string.Empty;    
            txtNickname.Text = string.Empty;
            calBirth.SelectedDate = DateTime.Now;
            ddGender.SelectedIndex = 0;
            txtMobile.Text = string.Empty;
            txtHome.Text = string.Empty;    
            txtEMail.Text = string.Empty;
            txtAdress.Text = string.Empty;
            txtNot.Text = string.Empty; 
        }

        protected void gvAdresses_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}