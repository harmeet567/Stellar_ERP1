<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTraining_Placements.aspx.cs" Inherits="AdminTraining_Placements" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
            margin-top: 125px;
        }
        .style6
        {
            width: 128px;
        }
        .style7
        {
            width: 297px;
        }
        .style8
        {
        }
        .style9
        {
            width: 317px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td align="center" class="style8" colspan="4">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" 
                    ForeColor="Black" Text="PLACEMENT INFORMATION"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td class="style7">
                &nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label6" runat="server" Text="Student ID"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataTextField="SId" DataValueField="SId" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged1" 
                    DataSourceID="SqlDataSource1" Width="150px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                    SelectCommand="SELECT [SId] FROM [Registration]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label7" runat="server" Text="Student Name"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Select student id" 
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label8" runat="server" Text="Course"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                    DataSourceID="SqlDataSource2" DataTextField="CourseName" 
                    DataValueField="CourseName" Width="150px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                    SelectCommand="SELECT * FROM [Courses]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label9" runat="server" Text="Company Name"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label10" runat="server" Text="Package"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label11" runat="server" Text="Date of Placement"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td> <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                    TargetControlID="TextBox4">
        </asp:CalendarExtender>
                </td>
        </tr>
       
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                <asp:Label ID="Label12" runat="server" Text="Desciption"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" 
                    ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Upload" onclick="Button1_Click" 
                    ValidationGroup="g1" />
            </td>
            <td class="style7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
            </td>
            <td>
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

