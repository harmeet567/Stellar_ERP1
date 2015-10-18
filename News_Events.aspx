<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="News_Events.aspx.cs" Inherits="News_Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        
        .style120
        {
            font-size: 15pt;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div >
    <p class="style120" style="text-align: center">
    ADD INFORMATION
    </p>
    <table class="style100"align="center">
        <tr>
            <td class="style5" style=" width:200px">
                <asp:Label ID="Label3" runat="server" Text="Type"></asp:Label>
            </td>
            <td class="style117" align="left"  style=" width:200px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="42px" Width="145px">
                    <asp:ListItem>--select--</asp:ListItem>
                    <asp:ListItem>Event</asp:ListItem>
                    <asp:ListItem>News</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
            <td class="style118">
                </td>
            <td class="style119">
                </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label4" runat="server" Text="AddNewsOrEvent"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="75px" 
                    Width="274px" ForeColor="Red"></asp:TextBox>
            </td>
            <td class="style114">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="First Fill" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td class="style112">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label5" runat="server" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" 
                    Height="26px" ValidationGroup="g1" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
            </td>
            <td class="style114">
                &nbsp;</td>
            <td class="style112">
                &nbsp;</td>
        </tr>
    </table>
  
    </div>

</asp:Content>

