<%@ Page Title="" Language="C#" MasterPageFile="~/student_page.master" AutoEventWireup="true" CodeFile="StudentInformation.aspx.cs" Inherits="StudentInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 88px;
        }
        .style6
        {
            width: 93px;
        }
        .style9
        {
            width: 278px;
        }
        .style10
        {
            width: 298px;
            color: #333333;
        }
        .style11
        {
            color: #333333;
        }
        .style12
        {
            width: 278px;
            color: #333333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> <div>
    <div>
    <p align="center" style="text-align: left"> 
        <asp:Label ID="Label1" runat="server" 
            Text="STUDENT INFORMATION" Font-Bold="True" Font-Size="Larger" 
            ForeColor="Black"></asp:Label></p>
    </div>
    
    <asp:Panel ID="Panel1" runat="server"  BorderStyle="Groove">
    <table >
        <tr>
            <td class="style10">
                RegNo:</td>
            <td class="style5">
                <asp:Label ID="Label24" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                Image of Student:</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="99px" Width="114px" />
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style10">
                RegDate:</td>
            <td class="style5">
                <asp:Label ID="Label25" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Underline="True" 
                    ForeColor="#0066FF" Text="Upload Image" Width="97px" 
                    onclick="Button1_Click" Height="21px" />
                <asp:Label ID="Label34" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Course Applied:</td>
            <td class="style5">
                <asp:Label ID="Label26" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                Course Session:</td>
            <td>
                <asp:Label ID="Label21" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Student Name:</td>
            <td class="style5">
                <asp:Label ID="Label27" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                Father Name:</td>
            <td>
                <asp:Label ID="Label22" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Mother Name:</td>
            <td class="style5">
                <asp:Label ID="Label28" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                D.O.B:</td>
            <td>
                <asp:Label ID="Label23" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Address:</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style12">
                Current Address:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Country:</td>
            <td class="style5">
                <asp:Label ID="Label29" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                State:</td>
            <td>
                <asp:Label ID="Label19" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                City:</td>
            <td class="style5">
                <asp:Label ID="Label30" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                PinCode:</td>
            <td>
                <asp:Label ID="Label20" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Current Qualification:</td>
            <td class="style6">
                <asp:Label ID="Label31" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                Stream:</td>
            <td class="style2">
                <asp:Label ID="Label18" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Uni/Board:</td>
            <td class="style5">
                <asp:Label ID="Label32" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style12">
                College:</td>
            <td>
                <asp:Label ID="Label17" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Email id:</td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style12">
                Alternate Email id:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                Phone No:</td>
            <td class="style5">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="style12">
                Mobile No:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td align="right" class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label33" runat="server"></asp:Label>
                &nbsp;&nbsp;&nbsp;
            </td>
            <td class="style9">
                <span class="style11">&nbsp;&nbsp;&nbsp;&nbsp;</span><asp:Button ID="Button5" 
                    runat="server" Text="Edit" 
                    onclick="Button5_Click" Width="77px" CssClass="style11" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" Text="Update" onclick="Button4_Click" />
            </td>
            <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
    </asp:Panel>
    </div>
</asp:Content>

