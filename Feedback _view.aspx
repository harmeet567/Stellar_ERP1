<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Feedback _view.aspx.cs" Inherits="Feedback__view" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
    {
        width: 100%;
            margin-top: 111px;
        }
    .style5
    {
        width: 517px;
    }
    .style6
    {
            width: 255px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
    <tr>
        <td class="style6">
            <asp:Label ID="Label2" runat="server" Text="FEEDBACK DETAIL" Font-Bold="True" 
                Font-Size="Larger" ForeColor="Black"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="EmailId" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="EmailId" HeaderText="EmailId" ReadOnly="True" 
                        SortExpression="EmailId" />
                    <asp:BoundField DataField="Comment" HeaderText="Comment" 
                        SortExpression="Comment" />
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
                DeleteCommand="DELETE FROM [FeedbackTable] WHERE [EmailId] = @EmailId" 
                InsertCommand="INSERT INTO [FeedbackTable] ([Name], [EmailId], [Comment]) VALUES (@Name, @EmailId, @Comment)" 
                SelectCommand="SELECT * FROM [FeedbackTable]" 
                UpdateCommand="UPDATE [FeedbackTable] SET [Name] = @Name, [Comment] = @Comment WHERE [EmailId] = @EmailId">
                <DeleteParameters>
                    <asp:Parameter Name="EmailId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                    <asp:Parameter Name="Comment" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Comment" Type="String" />
                    <asp:Parameter Name="EmailId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
        </td>
        <td>
            &nbsp;</td>
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
    <p>
</p>
    <p>
</p>
    <p>
</p>
</asp:Content>

