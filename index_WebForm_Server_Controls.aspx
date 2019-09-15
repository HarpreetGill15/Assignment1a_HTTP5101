<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index_WebForm_Server_Controls.aspx.cs" Inherits="Assingment1a_HTTP5101.index_WebForm_Server_Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" action="http://sandbox.bittsdevelopment.com/humber/httpdebug/acceptdata.php">
        <div>
             <div>
                 <asp:Label runat="server">First Name:</asp:Label>
                 <asp:TextBox runat="server" ID="client_first_name"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">Last Name:</asp:Label>
                <asp:TextBox runat="server" ID="client_last_name"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">Email:</asp:Label>
                <asp:TextBox runat="server" ID="client_email"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">Phone Number:</asp:Label>
                <asp:TextBox runat="server" ID="client_phone_number"></asp:TextBox>
            </div>
            <div>
                <asp:Label runat="server">Date Of Birth:</asp:Label>
                <asp:TextBox runat="server" ID="client_date_of_birth"></asp:TextBox>
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
                <asp:CheckBoxList runat="server">
                    <asp:ListItem Text="I would like for my five to be recored!" Value="Yes_Record"></asp:ListItem>
                </asp:CheckBoxList>
                <asp:CheckBoxList runat="server">
                    <asp:ListItem Text="Add me to the mailing list for promotions!" Value="Yes_Mailing"></asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <asp:Button runat="server" Text="Submit"/>
        </div>
    </form>
</body>
</html>
