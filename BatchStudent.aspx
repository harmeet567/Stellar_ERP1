<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="BatchStudent.aspx.cs" Inherits="BatchStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p style="text-align: center">
        <asp:Label ID="Label1" runat="server" Text="STUDENT BATCH" Font-Bold="True" 
            Font-Size="Large" ForeColor="Black" style="text-align: center"></asp:Label>
   </p> 
    <div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
            AutoGenerateColumns="False" DataKeyNames="SId" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="BatchId" HeaderText="BatchId" 
                    SortExpression="BatchId" />
                <asp:BoundField DataField="SId" HeaderText="SId" SortExpression="SId" 
                    ReadOnly="True" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                    SortExpression="StudentName" />
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
            DeleteCommand="DELETE FROM [BatchStudents] WHERE [SId] = @SId" 
            InsertCommand="INSERT INTO [BatchStudents] ([BatchId], [SId], [StudentName]) VALUES (@BatchId, @SId, @StudentName)" 
            SelectCommand="SELECT * FROM [BatchStudents]" 
            UpdateCommand="UPDATE [BatchStudents] SET [BatchId] = @BatchId, [StudentName] = @StudentName WHERE [SId] = @SId">
            <DeleteParameters>
                <asp:Parameter Name="SId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BatchId" Type="String" />
                <asp:Parameter Name="SId" Type="String" />
                <asp:Parameter Name="StudentName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BatchId" Type="String" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="SId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
    </div>
</asp:Content>

