<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogIn_page.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            font-size: 20pt;
            text-align: center;
            color: #000000;
        }
        .style8
    {
        color: #333333;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<div>

    <p>
        <span class="style7">Account Information</span><span class="style4"> </span>
    </p>

<p>
        <span class="style8">User Type:</span>
        <br />
        
        <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" 
           >
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Teacher</asp:ListItem>
            <asp:ListItem>Student</asp:ListItem>
        </asp:DropDownList>
     </p>
     <p>
    
         <span class="style8">User Id:
     </span>
     <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
      &nbsp;</p>
      <p>
          <span class="style8">Password</span><br />
    
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
     </p>

        
     <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Log In " Width="60px" 
            onclick="Button2_Click" Height="30px" />


            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="Red" style="color: #FF0000"></asp:Label>
     </p>
</div>
</asp:Content>

