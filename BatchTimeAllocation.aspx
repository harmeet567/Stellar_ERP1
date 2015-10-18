<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="BatchTimeAllocation.aspx.cs" Inherits="BatchTimeAllocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            height: 293px;
            margin-top: 106px;
        }
        .style5
        {
            width: 106px;
        }
        .style6
        {
        }
        .style7
        {
            width: 308px;
        }
        .style8
        {
            width: 106px;
            font-size: medium;
            height: 32px;
        }
        .style9
        {
            width: 308px;
            height: 32px;
        }
        .style10
        {
            height: 32px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="center" class="style6" colspan="3">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Larger" 
                    ForeColor="#CCCC00" style="color: #000000">BATCH TIME ALLOCATION</asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5" style=" width:160px">
                <asp:Label ID="Label5" runat="server" Text="Course"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="CourseName" 
                    DataValueField="CourseName" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    DataSourceID="SqlDataSource1" Width="150px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                    SelectCommand="SELECT * FROM [Courses]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label6" runat="server" Text="Teacher ID"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataTextField="TId" DataValueField="TId" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged1" 
                    DataSourceID="SqlDataSource2" Width="150px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                    SelectCommand="SELECT [TId] FROM [TeacherInfoTable]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label7" runat="server" Text="TeacherName"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Select teacher ID" 
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label8" runat="server" Text="Batch ID"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Label ID="Label9" runat="server" Text="Batch Time"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" 
                    ValidationGroup="g1" />
            </td>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" 
    onclick="Button3_Click" Text="Reset" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
    <p></p>
</asp:Content>

