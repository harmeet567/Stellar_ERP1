<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="BatchTime.aspx.cs" Inherits="BatchTime" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: 15pt;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p style="text-align: center">
&nbsp;<span class="style6">BATCH TIMING<br />
    </span>
</p>
&nbsp;<div align="center">  <asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" DataKeyNames="BatchId" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Course" HeaderText="Course" 
            SortExpression="Course" />
        <asp:BoundField DataField="BatchId" HeaderText="BatchId" ReadOnly="True" 
            SortExpression="BatchId" />
        <asp:BoundField DataField="TId" HeaderText="TId" SortExpression="TId" />
        <asp:BoundField DataField="TName" HeaderText="TName" SortExpression="TName" />
        <asp:BoundField DataField="BatchTime" HeaderText="BatchTime" 
            SortExpression="BatchTime" />
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
        DeleteCommand="DELETE FROM [BatchAllocationTable] WHERE [BatchId] = @BatchId" 
        InsertCommand="INSERT INTO [BatchAllocationTable] ([Course], [BatchId], [TId], [TName], [BatchTime]) VALUES (@Course, @BatchId, @TId, @TName, @BatchTime)" 
        SelectCommand="SELECT * FROM [BatchAllocationTable]" 
        UpdateCommand="UPDATE [BatchAllocationTable] SET [Course] = @Course, [TId] = @TId, [TName] = @TName, [BatchTime] = @BatchTime WHERE [BatchId] = @BatchId">
        <DeleteParameters>
            <asp:Parameter Name="BatchId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="BatchId" Type="String" />
            <asp:Parameter Name="TId" Type="String" />
            <asp:Parameter Name="TName" Type="String" />
            <asp:Parameter Name="BatchTime" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Course" Type="String" />
            <asp:Parameter Name="TId" Type="String" />
            <asp:Parameter Name="TName" Type="String" />
            <asp:Parameter Name="BatchTime" Type="String" />
            <asp:Parameter Name="BatchId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
   </div>
   
  

</asp:Content>

