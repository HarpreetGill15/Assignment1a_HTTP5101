using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assingment1a_HTTP5101
{
    public partial class index_WebForm_Server_Controls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    string client_Fname = client_first_name.ToString();
                    string client_Lname = client_last_name.ToString();
                    string client_Email = client_email.ToString();
                    string client_Phone = client_phone_number.ToString();
                    string client_DOB = client_date_of_birth_day.ToString() + client_date_of_birth_month.ToString() + client_date_of_birth_year.ToString();
                    string client_Experience = client_experience.SelectedValue;
                    int client_Jumpers = Convert.ToInt32(client_jumpers.SelectedValue);
                    string client_Video = client_record_me.SelectedValue;
                    string client_Mailing = client_mailing.SelectedValue;

                    confirmbox.InnerHtml = "Thank you for booking your jump!";

                    confirmbox.InnerHtml += "First Name: " + client_Fname + "";
                    confirmbox.InnerHtml += "Last Name: " + client_Lname + "";
                    confirmbox.InnerHtml += "Email: " + client_Email + "";
                    confirmbox.InnerHtml += "Phone Number: " + client_Phone + "";
                    confirmbox.InnerHtml += "First Name: " + client_Fname + "";
                    confirmbox.InnerHtml += "Date of Birth: " + client_DOB + "";
                    confirmbox.InnerHtml += "Number of jumpers: " + client_Jumpers + "";

                    confirmbox.InnerHtml += "Estimated price calculated is: ";
                    switch (client_Jumpers)
                    {
                        case 1:
                            confirmbox.InnerHtml += ""
                    }


                }
            }
        }
    }
}