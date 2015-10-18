<%@ Page Title="" Language="C#" MasterPageFile="~/student_page.master" AutoEventWireup="true" CodeFile="StudentTime_Table.aspx.cs" Inherits="StudentTime_Table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 21px;
        }
        .style12
        {
            width: 162px;
        }
        .style14
        {
            width: 155px;
        }
        .style15
        {
            width: 114px;
        }
        .style17
        {
            width: 29px;
        }
        .style18
        {
            width: 109px;
        }
        .style19
        {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  Runat="Server">

    <p style="text-align: left" >
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" 
            ForeColor="#99CC00" Text="TIME TABLE" 
            style="color: #000000; text-align: center"></asp:Label>
        <br />
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="64px" BorderStyle="Groove" 
         Width="693px">
        <table >
            <tr class="style19">
                <td class="style17">
                    &nbsp;</td>
                <td class="style12">
                    Course</td>
                <td class="style14">
                    <asp:Label ID="Label10" runat="server" Text="Teacher Name"></asp:Label>
                </td>
                <td class="style15">
                    <asp:Label ID="Label8" runat="server" Text="Batch ID"></asp:Label>
                </td>
                <td class="style18">
                    <asp:Label ID="Label5" runat="server" Text="Class Time"></asp:Label>
                </td>
                <td class="style7">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style12">
                    <asp:Label ID="Label12" runat="server" ForeColor="Red" style="color: #333333"></asp:Label>
                </td>
                <td class="style14">
                    <asp:Label ID="Label11" runat="server" ForeColor="Red" style="color: #333333"></asp:Label>
                </td>
                <td class="style15">
                    <asp:Label ID="Label9" runat="server" ForeColor="Red" style="color: #333333"></asp:Label>
                </td>
                <td class="style18">
                    <asp:Label ID="Label3" runat="server" ForeColor="Red" style="color: #333333"></asp:Label>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style14">
                    &nbsp;</td>
                <td class="style15">
                    &nbsp;</td>
                <td class="style18">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
        </table>
</asp:Panel>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
</asp:Content>

