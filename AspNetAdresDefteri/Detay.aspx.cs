using AspNetAdresDefteri.DataLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetAdresDefteri
{
    public partial class Detay : System.Web.UI.Page
    {
        private AdressDataHelper _helper;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                int id;

                if (int.TryParse(Request.QueryString["ID"],out id))
                {
                    FormDataBind(id);
                }
            }

        }

        private void FormDataBind(int id)
        {
            var address = _helper.GetAddress(id);
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}