<%@ Page Title="" Language="C#" MasterPageFile="~/teacher_Page.master" AutoEventWireup="true" CodeFile="ModifyT_Upload.aspx.cs" Inherits="ModifyT_Upload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 458px;
        }
        .style5
        {
            width: 222px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table >
        <tr>
            <td class="style5">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Larger" 
                    ForeColor="#CCCC00" Text="UPLOAD DETAILS" 
                    style="font-size: 15pt; color: #000000"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="SrNo" DataSourceID="SqlDataSource1" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="SrNo" HeaderText="SrNo" 
                            ReadOnly="True" SortExpression="SrNo" />
                        <asp:BoundField DataField="FileName" HeaderText="FileName" 
                            SortExpression="FileName" />
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
                    DeleteCommand="DELETE FROM [UploadResource] WHERE [SrNo] = @SrNo" 
                    InsertCommand="INSERT INTO [UploadResource] ([SrNo], [FileName]) VALUES (@SrNo, @FileName)" 
                    SelectCommand="SELECT * FROM [UploadResource]" 
                    UpdateCommand="UPDATE [UploadResource] SET [FileName] = @FileName WHERE [SrNo] = @SrNo">
                    <DeleteParameters>
                        <asp:Parameter Name="SrNo" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SrNo" Type="String" />
                        <asp:Parameter Name="FileName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FileName" Type="String" />
                        <asp:Parameter Name="SrNo" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

