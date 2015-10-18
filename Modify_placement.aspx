<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Modify_placement.aspx.cs" Inherits="Modify_placement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 930px;
            margin-left: 185px;
        }
        .style4
        {
            width: 239px;
        }
        .style5
        {
            width: 185px;
        }
        .style6
        {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" 
    style="height: 46px; width: 1266px; margin-left: 1px; margin-top: 105px">
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" 
        ForeColor="Black" Text="MODIFY PLACEMENT TABLE"></asp:Label>
</p>
    <table >
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="PId" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None" Width="16px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="PId" HeaderText="PId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="PId" />
                        <asp:BoundField DataField="SId" HeaderText="SId" SortExpression="SId" />
                        <asp:BoundField DataField="Studentname" HeaderText="Studentname" 
                            SortExpression="Studentname" />
                        <asp:BoundField DataField="Course" HeaderText="Course" 
                            SortExpression="Course" />
                        <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                            SortExpression="CompanyName" />
                        <asp:BoundField DataField="Package" HeaderText="Package" 
                            SortExpression="Package" />
                        <asp:BoundField DataField="DateOfPlacement" HeaderText="DateOfPlacement" 
                            SortExpression="DateOfPlacement" />
                        <asp:BoundField DataField="Description" HeaderText="Description" 
                            SortExpression="Description" />
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
                    DeleteCommand="DELETE FROM [PlacementTable] WHERE [PId] = @PId" 
                    InsertCommand="INSERT INTO [PlacementTable] ([SId], [Studentname], [Course], [CompanyName], [Package], [DateOfPlacement], [Description]) VALUES (@SId, @Studentname, @Course, @CompanyName, @Package, @DateOfPlacement, @Description)" 
                    SelectCommand="SELECT * FROM [PlacementTable]" 
                    UpdateCommand="UPDATE [PlacementTable] SET [SId] = @SId, [Studentname] = @Studentname, [Course] = @Course, [CompanyName] = @CompanyName, [Package] = @Package, [DateOfPlacement] = @DateOfPlacement, [Description] = @Description WHERE [PId] = @PId">
                    <DeleteParameters>
                        <asp:Parameter Name="PId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SId" Type="String" />
                        <asp:Parameter Name="Studentname" Type="String" />
                        <asp:Parameter Name="Course" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="Package" Type="String" />
                        <asp:Parameter Name="DateOfPlacement" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SId" Type="String" />
                        <asp:Parameter Name="Studentname" Type="String" />
                        <asp:Parameter Name="Course" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="Package" Type="String" />
                        <asp:Parameter Name="DateOfPlacement" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="PId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style6">
                &nbsp;</td>
            <td>
            </td>
        </tr>
    </table>
<br />
</asp:Content>

