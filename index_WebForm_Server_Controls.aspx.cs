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
                    string client_Fname = client_first_name.Text.ToString();
                    string client_Lname = client_last_name.Text.ToString();
                    string client_Email = client_email.Text.ToString();
                    string client_Phone = client_phone_number.Text.ToString();
                    string client_DOB = client_date_of_birth_month.Text.ToString() + "/" + client_date_of_birth_day.Text.ToString() + "/" + client_date_of_birth_year.Text.ToString();
                    int client_Age = 2019 - Convert.ToInt32(client_date_of_birth_year.Text.ToString());
                    string client_Experience = client_experience.SelectedValue.ToString();
                    int client_Jump = Convert.ToInt32(client_jump_type.SelectedValue.ToString());
                    int client_Jumpers = Convert.ToInt32(client_jumpers.SelectedValue.ToString());
                    string client_Video = client_record_me.SelectedValue.ToString();
                    string client_Mailing = client_mailing.SelectedValue.ToString();
                    double price = 0.0;

                    confirmbox.InnerHtml = "Thank you for booking your jump!<br>";

                    confirmbox.InnerHtml += "First Name: " + client_Fname + "<br>";
                    confirmbox.InnerHtml += "Last Name: " + client_Lname + "<br>";
                    confirmbox.InnerHtml += "Email: " + client_Email + "<br>";
                    confirmbox.InnerHtml += "Phone Number: " + client_Phone + "<br>"; 
                    confirmbox.InnerHtml += "Date of Birth: " + client_DOB + "<br>";
                    confirmbox.InnerHtml += "Number of jumpers: " + client_Jumpers + "<br>";

                    confirmbox.InnerHtml += "Estimated price calculated is: <br>";

                    /*If the client is under the age of 18 there is an addtional fee */
                    if (client_Age < 18)
                    {
                        price += 90.00;
                        confirmbox.InnerHtml += "Minor Jumper price: $90.00<br>";

                    }
                    /*If the client wants to record the jump add the fee of recording and editing the movie*/
                    if (client_Video == "Yes_Record")
                    {
                        price += 100.00;
                        confirmbox.InnerHtml += "Videography Fee: $100.00<br>";
                    }
                    /*If the client comes with a group more then or equal to 3 add a fee*/
                    if (client_Jumpers >=3)
                    {
                        price += 50.00;
                        confirmbox.InnerHtml += "Group jump (more then 2 jumpers): $50.00<br>";
                    }
                    if(client_Jump == 275)
                    {
                        price += 275.00;
                        confirmbox.InnerHtml += "Standard jump (10,500 feet, 40 second free fall): $275.00<br>";
                    }
                    else if(client_Jump == 299)
                    {
                        price += 299.00;
                        confirmbox.InnerHtml += "Plus Jump (14,000 feet, 60 second free fall): $299.00<br>";
                    }
                    confirmbox.InnerHtml += "Total price: $"+price;
                }
            }
        }
    }
}