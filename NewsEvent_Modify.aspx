<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="NewsEvent_Modify.aspx.cs" Inherits="NewsEvent_Modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 102%;
        }
        .style6
        {
            font-size: 15pt;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center" >
    &nbsp;<span class="style6">MODIFY NEWS AND EVENTS
</span>
</p>

    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Type" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" style="margin-left: 0px" Width="585px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                    DeleteCommand="DELETE FROM [NewsTable] WHERE [Type] = @Type" 
                    InsertCommand="INSERT INTO [NewsTable] ([Type], [Description], [DateOfNews]) VALUES (@Type, @Description, @DateOfNews)" 
                    SelectCommand="SELECT * FROM [NewsTable]" 
                    UpdateCommand="UPDATE [NewsTable] SET [NId] = @NId, [Description] = @Description, [DateOfNews] = @DateOfNews WHERE [Type] = @Type">
                    <DeleteParameters>
                        <asp:Parameter Name="Type" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="DateOfNews" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NId" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="DateOfNews" Type="DateTime" />
                        <asp:Parameter Name="Type" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
           

</asp:Content>

