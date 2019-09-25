<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_WebForm_Server_Controls.aspx.cs" Inherits="Assingment1a_HTTP5101.index_WebForm_Server_Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h1>Harpreet's Skydiving!</h1>
    <form id="form1" runat="server">
        <div>
             <div>
                 <asp:Label runat="server">First Name:</asp:Label>
                 <asp:TextBox runat="server" ID="client_first_name"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter a First name!" ForeColor="Red" ControlToValidate="client_first_name" ></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label runat="server">Last Name:</asp:Label>
                <asp:TextBox runat="server" ID="client_last_name"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter a Last name!" ForeColor="Red" ControlToValidate="client_last_name" ></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label runat="server">Email:</asp:Label>
                <asp:TextBox runat="server" ID="client_email"></asp:TextBox>
                <!-- Expression taken from visual studios -->
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true"  ErrorMessage="Please enter a valid Email!" ForeColor="Red" ControlToValidate="client_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div>
                <asp:Label runat="server">Phone Number:</asp:Label>
                <asp:TextBox runat="server" ID="client_phone_number"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true"  ErrorMessage="Please enter a valid phone number!" ForeColor="Red" ControlToValidate="client_phone_number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </div>
            
            <div>
                <asp:Label runat="server">Date Of Birth:</asp:Label>
                <asp:TextBox runat="server" ID="client_date_of_birth_month" style="width:10%"></asp:TextBox>
                <!-- Adding type=integer due to some unforseen problems with the month not being valid from 2-9 for some odd reason. This was taken from a friend of mine. -->
                <asp:RangeValidator runat="server" ControlToValidate="client_date_of_birth_month" Text="Please enter a valid month" MaximumValue="12" MinimumValue="1" EnableClientScript="true" Type="Integer"></asp:RangeValidator>
                <asp:TextBox runat="server" ID="client_date_of_birth_day" style="width:10%"></asp:TextBox>
                <asp:RangeValidator runat="server" EnableClientScript="true"  ErrorMessage="Please enter a valid day" ForeColor="Red" ControlToValidate="client_date_of_birth_day" MaximumValue="31" MinimumValue="1"></asp:RangeValidator>
                <asp:TextBox runat="server" ID="client_date_of_birth_year" style="width:10%"></asp:TextBox>
                <asp:RangeValidator runat="server" EnableClientScript="true"  ErrorMessage="Please enter a valid year (Must be 16 years of age)" ForeColor="Red" ControlToValidate="client_date_of_birth_year" MaximumValue="2013" MinimumValue="1869"></asp:RangeValidator>
            </div>
            <div>
                <asp:Label runat="server">Experience:</asp:Label>
                <asp:RadioButtonList runat="server" ID="client_experience">
                    <asp:ListItem Text="None" Value="None"></asp:ListItem>
                    <asp:ListItem Text="Some Experience" Value="Some Experience"></asp:ListItem>
                    <asp:ListItem Text="Veteran at Skydiving" Value="Veteran"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <asp:Label runat="server">Jump Type:</asp:Label>
                <asp:RadioButtonList runat="server" ID="client_jump_type">
                    <asp:ListItem Text="10,500 feet (40 seconds of freefall)" Value="275"></asp:ListItem>
                    <asp:ListItem Text="14,000 feet (60 seconds of freefall)" Value="299"></asp:ListItem>
                </asp:RadioButtonList>
            </div>
           <div>
               <asp:Label runat="server">Number of jumpers:</asp:Label>
              <asp:DropDownList runat="server" ID="client_jumpers">
                  <asp:ListItem Text="1" Value="1"></asp:ListItem>
                  <asp:ListItem Text="2" Value="2"></asp:ListItem>
                  <asp:ListItem Text="3" Value="3"></asp:ListItem>
                  <asp:ListItem Text="4" Value="4"></asp:ListItem>
                  <asp:ListItem Text="5" Value="5"></asp:ListItem>
                  <asp:ListItem Text="6(Max)" Value="6"></asp:ListItem>
              </asp:DropDownList>
           </div>
            <div>
                <asp:CheckBoxList runat="server" ID="client_record_me">
                    <asp:ListItem Text="I would like for my jump to be recored!" Value="Yes_Record"></asp:ListItem>
                </asp:CheckBoxList>
                <asp:CheckBoxList runat="server" ID="client_mailing">
                    <asp:ListItem Text="Add me to the mailing list for promotions!" Value="Yes_Mailing"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <div id="confirmbox" runat="server">

            </div>
            <asp:Button runat="server" Text="Submit"/>
        </div>
    </form>
</body>
</html>
