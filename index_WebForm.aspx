<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_WebForm.aspx.cs" Inherits="Assingment1a_HTTP5101.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Harpreet's SkyDiving!</h1>
    <form method="post" action="http://sandbox.bittsdevelopment.com/humber/httpdebug/acceptdata.php">
        <div>
            <div>
                <label>First Name:</label>
                <input type="text" id="client_first_name" name="client_first_name" /> 
            </div>
            <div>
                <label>Last Name:</label>
                <input type="text" id="client_last_name" name="client_last_name" />
            </div>
            <div>
                <label>Email:</label>
                <input type="text" id="client_email" name="client_email" />
            </div>
            <div>
                <label>Phone Number:</label>
                <input type="text" id="client_phone_number" name="client_phone_number" />
            </div>
            <div>
                <label>Date Of Birth:</label>
                <input type="text" id="client_date_of_birth" name="client_date_of_birth" />
            </div>
            <div>
                <label>Experience:</label>
                <input type="radio" id="client_experience_1" name="client_experience" value="None" /> <label for="client_experience_1">None</label>
                <input type="radio" id="client_experience_2" name="client_experience" value="Some Experience" /> <label for="client_experience_2">Some Experience</label>
                <input type="radio" id="client_experience_3" name="client_experience" value="Veteran" /> <label for="client_experience_3">Veteran at Skydiving</label>
            </div>
           <div>
               <label>Number of jumpers:</label>
                <select id="client_jumpers" name="client_jumpers">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6(Max)</option>
                </select>
           </div>
            <div>
                 <input type="checkbox" id="client_videography" name="client_videography"/><label>I would like for my dive to be recorded!</label>
                 <input type="checkbox" id="client_mailing_list" name="client_mailing_list"/><label>Add me to the mailing list for promotions!</label>
            </div>
            <input type="submit" id="btn_submit" value="Submit"/>
        </div>
    </form>
</body>
</html>
