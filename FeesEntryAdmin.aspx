<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="FeesEntryAdmin.aspx.cs" Inherits="FeesEntryAdmin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style6
        {
            height: 20px;
        }
        .style7
        {
            width: 221px;
        }
        .style8
        {
            height: 20px;
            width: 221px;
        }
        .style9
        {
            color: #000000;
        }
        .style10
        {
            color: #333333;
        }
    .style11
    {
        text-align: left;
    }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style11" >
        <br />
        <span class="style9"><font size="5" style="text-align: left">NEW FEES ENTRY
    </font></span>
    </p>
    <table  style=" border:0px">
        <tr>
            
            <td class="style7" >
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:Label ID="Label3" runat="server" CssClass="style10"></asp:Label>
            </td>
           
        </tr>

        <tr>
            
            <td class="style8">
                <asp:Label ID="Label4" runat="server" Text="Student Id" CssClass="style10"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataTextField="SId" DataValueField="SId" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    DataSourceID="SqlDataSource1">
                </asp:DropDownList>
                
            </td>
            <td class="style6" >
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                    SelectCommand="SELECT [SId] FROM [Registration]"></asp:SqlDataSource>
            </td>
           
        </tr>
        <tr>
            
            <td class="style7"  >
                <asp:Label ID="Label5" runat="server" Text="Student Name" CssClass="style10"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" ></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Fill First" Font-Bold="True" 
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            <td class="style7" >
                <asp:Label ID="Label6" runat="server" Text="Course" CssClass="style10"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Fill First" Font-Bold="True" 
                    ForeColor="Red" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label7" runat="server" Text="Total Amount" CssClass="style10"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:FilteredTextBoxExtender
                    ID="FilteredTextBoxExtender1" runat="server" TargetControlID="TextBox3" 
                    ValidChars="0123456789">
                </asp:FilteredTextBoxExtender>

            </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" >
                <asp:Label ID="Label8" runat="server" Text="Paid Amount" CssClass="style10"></asp:Label>
            </td>
            <td class="style12" >
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:FilteredTextBoxExtender
                    ID="FilteredTextBoxExtender2" runat="server" TargetControlID="TextBox4" 
                    ValidChars="0123456789">
                </asp:FilteredTextBoxExtender>
            </td>
            <td >
                &nbsp;</td>
            
        </tr>
        <tr>
            
            <td class="style7" >
                <asp:Label ID="Label9" runat="server" Text="Remaining Amount" 
                    CssClass="style10"></asp:Label>
            </td>
            <td class="style12" >
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:FilteredTextBoxExtender
                    ID="FilteredTextBoxExtender3" runat="server" TargetControlID="TextBox5" 
                    ValidChars="0123456789">
                </asp:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            
            <td class="style7" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" 
                    ValidationGroup="g1" />
            </td>
            <td class="style12" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
                <br />
            </td>
            <
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

