<%@ Page Title="" Language="C#" MasterPageFile="~/teacher_Page.master" AutoEventWireup="true" CodeFile="Tstudentinfo.aspx.cs" Inherits="Tstudentinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 999px;
        }
        .style9
        {
            width: 343px;
        }
        .style12
        {
            width: 630px;
        }
        .style13
        {
            width: 793px;
            color: #333333;
        }
        .style14
        {
            text-align: left;
        }
        .style15
        {
            color: #333333;
        }
        .style16
        {
            width: 630px;
            color: #333333;
        }
        .style21
        {
            width: 630px;
            color: #333333;
            height: 30px;
        }
        .style22
        {
            width: 343px;
            height: 30px;
        }
        .style23
        {
            width: 793px;
            color: #333333;
            height: 30px;
        }
        .style24
        {
            width: 999px;
            height: 30px;
        }
        .style25
        {
            width: 630px;
            color: #333333;
            height: 31px;
        }
        .style26
        {
            width: 343px;
            height: 31px;
        }
        .style27
        {
            width: 793px;
            color: #333333;
            height: 31px;
        }
        .style28
        {
            width: 999px;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
    <div>
        <p class="style14"> 
            &nbsp;<asp:Label ID="Label1" runat="server" 
            Text="STUDENT INFORMATION" Font-Bold="True" Font-Size="Larger" 
            ForeColor="Black" style="text-align: left"></asp:Label></p>
    </div>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Groove" Width="692px">
       
    <table>
        <tr>
            <td class="style16" align="left">
                RegNo:</td>
            <td class="style9" align="left">
                <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="SId" DataValueField="SId" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True" DataSourceID="SqlDataSource1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                    SelectCommand="SELECT [SId] FROM [Registration]"></asp:SqlDataSource>
            </td>
            <td class="style13" align="left">
                Image of Student:</td>
            <td class="style6" align="left">
                <asp:Image ID="Image1" runat="server" Height="89px" style="margin-left: 0px" 
                    Width="120px" />
            </td>
        </tr>
        <tr>
            <td class="style21" align="left">
                RegDate:</td>
            <td class="style22" align="left">
                <asp:Label ID="Label25" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style23" align="left">
                </td>
            <td class="style24" align="left">
                </td>
        </tr>
        <tr>
            <td class="style21" align="left">
                Course Applied:</td>
            <td class="style22" align="left">
                <asp:Label ID="Label26" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style23" align="left">
                Course Session:</td>
            <td class="style24" align="left">
                <asp:Label ID="Label21" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style21" align="left">
                Student Name:</td>
            <td class="style22" align="left">
                <asp:Label ID="Label37" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style23" align="left">
                Father Name:</td>
            <td class="style24" align="left">
                <asp:Label ID="Label22" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16" align="left">
                Current Qualification:</td>
            <td class="style9" align="left">
                <asp:Label ID="Label31" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style13" align="left">
                Stream:</td>
            <td class="style6" align="left">
                <asp:Label ID="Label18" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style25" align="left">
                Uni/Board:</td>
            <td class="style26" align="left">
                <asp:Label ID="Label32" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style27" align="left">
                College:</td>
            <td class="style28" align="left">
                <asp:Label ID="Label17" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style25" align="left">
                Email id:</td>
            <td class="style26" align="left">
                <asp:Label ID="Label33" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style27" align="left">
                Alternate Email id:</td>
            <td class="style28" align="left">
                <asp:Label ID="Label36" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style21" align="left">
                Phone No:</td>
            <td class="style22" align="left">
                <asp:Label ID="Label34" runat="server" Text="--"></asp:Label>
            </td>
            <td class="style23" align="left">
                Mobile No:</td>
            <td class="style24" align="left">
                <asp:Label ID="Label35" runat="server" Text="--"></asp:Label>
            </td>
        </tr>
        <tr>
        <td align="left" class="style12">
                <asp:Label ID="Label38" runat="server" Font-Size="Large" ForeColor="Red" 
                    CssClass="style15"></asp:Label>
        </td>
        </tr>
        </table>
         </asp:Panel>
         <p>
         
         </p>
        <p>
         
         </p>
    </div>
</asp:Content>

