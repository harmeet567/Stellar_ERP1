<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MasterNews_Events.aspx.cs" Inherits="News_Eventsmaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="z-index: 1; left: 446px; top: 383px; position: absolute; height: 430px; width: 695px">
<asp:Label ID="Label1" runat="server" Text="Information" Font-Bold="True" 
        Font-Italic="True" Font-Size="Larger" ForeColor="Black" 
        style="z-index: 1; top: 17px; position: absolute; left: 136px"></asp:Label>
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
    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
    <SortedAscendingCellStyle BackColor="#FDF5AC" />
    <SortedAscendingHeaderStyle BackColor="#4D0000" />
    <SortedDescendingCellStyle BackColor="#FCF6C0" />
    <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
            SelectCommand="SELECT * FROM [NewsTable]"></asp:SqlDataSource>

</div>
        </asp:Content>

