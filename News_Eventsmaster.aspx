<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="News_Eventsmaster.aspx.cs" Inherits="News_Eventsmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
<asp:Label ID="Label1" runat="server" Text="INFORMATION" Font-Bold="True" 
        Font-Italic="False" Font-Size="Larger" ForeColor="Red" style="color: #000000" 
       ></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Type" DataSourceID="SqlDataSource1" Height="334px" 
        Width="357px" style="margin-top: 57px" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="NId" HeaderText="NId" ReadOnly="True" 
            SortExpression="NId" InsertVisible="False" />
        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" 
            ReadOnly="True" />
        <asp:BoundField DataField="Description" HeaderText="Description" 
            SortExpression="Description" />
        <asp:BoundField DataField="DateOfNews" HeaderText="DateOfNews" 
            SortExpression="DateOfNews" />
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
            SelectCommand="SELECT * FROM [NewsTable]"></asp:SqlDataSource>

</div>
        </asp:Content>

