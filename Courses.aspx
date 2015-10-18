<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Courses.aspx.cs" Inherits="Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 451px;
        }
        .style4
        {
            width: 391px;
        }
        .style5
        {
        }
        .style9
        {
            width: 444px;
        }
        .style10
        {
            width: 104px;
        }
        .style11
        {
            color: #000000;
        }
        .style12
        {
            font-size: medium;
            height: 39px;
        }
        .style13
        {
            width: 444px;
            height: 39px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p >
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" 
            ForeColor="Black"  Text="COURSES" CssClass="style11"></asp:Label>
        <br class="style11" />
    </p>
    <br />
    <table>
        <tr>
            <td class="style5" colspan="2" style=" width:100px">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td rowspan="3" class="style10">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="CourseName" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="CourseName" HeaderText="CourseName" ReadOnly="True" 
                    SortExpression="CourseName" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                    SelectCommand="SELECT * FROM [Courses]"></asp:SqlDataSource>
            </td>
            <td rowspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label4" runat="server">Course Name</asp:Label>
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" 
                    ValidationGroup="g1" />
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
                <br />
                <br />
                <br />
                
                    <asp:Button ID="Button2" runat="server" 
    onclick="Button2_Click" Text="VIEW COURSE TABLE" Height="30px" Width="142px" />
                
            </td>
        </tr>
        <tr>
            <td class="style5">
                <br />
                <br />
                <br />
            </td>
            <td class="style9">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            
        </tr>
    </table>
        
</asp:Content>

