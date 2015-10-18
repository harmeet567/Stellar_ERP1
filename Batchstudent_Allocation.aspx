<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Batchstudent_Allocation.aspx.cs" Inherits="Batchstudent_Allocation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 25px;
        }
    .style7
    {
        }
        .style8
        {
            font-size: 15pt;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style8" style="text-align: center" >
       BATCH STUDENT ALLOCATION
    </p>
    <p>
        <table class="style3">
            <tr>
                <td class="style7" colspan="2">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label4" runat="server" Text="Batch ID"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataTextField="BatchId" DataValueField="BatchId" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        DataSourceID="SqlDataSource1" Width="150px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                        SelectCommand="SELECT [BatchId] FROM [BatchAllocationTable]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <asp:Label ID="Label5" runat="server" Text="Student ID"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        DataTextField="SId" DataValueField="SId" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                        DataSourceID="SqlDataSource2" Width="150px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                        SelectCommand="SELECT [SId] FROM [Registration]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Student Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Fill First" ForeColor="Red" 
                        ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>

            </tr>
            <tr>
            <td class="style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" 
                    ValidationGroup="g1" />
                    <br />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
                </td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

