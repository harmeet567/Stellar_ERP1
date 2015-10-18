<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feeddback_page.aspx.cs" Inherits="Feeddback_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style30
        {
            width: 100%;
            height: 312px;
             border-bottom-style:hidden;
             border-style:hidden;
        }
        .style33
        {
            width: 477px;
        }
        .style47
    {
        width: 214px;
            height: 69px;
        }
    .style48
    {
        width: 60px;
            height: 20px;
        }
    .style49
    {
        width: 62px;
    }
        .style51
        {
            font-size: 24pt;
        }
        .style52
        {
            width: 62px;
            height: 119px;
        }
        .style53
        {
            width: 477px;
            height: 119px;
        }
        .style54
        {
            width: 62px;
            height: 69px;
        }
        .style55
        {
            font-size: 20pt;
        }
        .style56
        {
            color: #000000;
            font-size: 20pt;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <span class="style51">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        </span>
        <span class="style56">FEEDBACK FORM</span><span class="style4">
    

        <br class="style55" />
        <span class="style55">&nbsp;
    

    </span>
    

    </span>
    

    <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove"  Height="310px">
    
    <table class="style30">
        <tr>
            <td class="style49" align="left">
                <asp:Label ID="Label4" runat="server" Text="Name" style="font-size: medium"></asp:Label>
            </td>
            <td class="style33" align="left" colspan="2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="First Fill Your Name" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Larger" 
                    style="font-size: medium"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style49" align="left">
                <asp:Label ID="Label5" runat="server" Text="EmailId" style="font-size: medium"></asp:Label>
            </td>
            <td class="style33" align="left" colspan="2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="First Fill Ur mail ID" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="use correct format" ForeColor="Red" 
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style52" align="left">
                <asp:Label ID="Label6" runat="server" Text="Comment" style="font-size: medium"></asp:Label>
            </td>
            <td class="style53" align="left" colspan="2">
                <asp:TextBox ID="TextBox3" runat="server" Height="95px" TextMode="MultiLine" 
                    Width="342px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Fill Your Comment" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr style=" height:20px">
            <td class="style54"style=" height:20px" >
                <br />
                <br />
            </td>
            <td class="style48" align="right" style=" height:20px">
               
                <asp:Button ID="Button1" runat="server" Height="27px" onclick="Button1_Click" 
                    Text="Submit" ValidationGroup="g1" />
                &nbsp;&nbsp; &nbsp;
                <br />
                <br />
                </td>
            <td align="left" class="style47" style=" height:20px">
                <asp:Button ID="Button2" runat="server" Height="26px" onclick="Button2_Click" 
                    style="margin-top: 0px" Text="Cancel" />
            </td>
        </tr>
    </table>
    </asp:Panel>
        <br />
    </div>
      
</asp:Content>

