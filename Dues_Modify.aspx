<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Dues_Modify.aspx.cs" Inherits="Dues_Modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: 18pt;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style6" style="text-align: center">
    MODIFY DUES 
   </p>
   
    
    <p>
    
        &nbsp;&nbsp;
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="SId" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" 
            style="margin-top: 4px; margin-left:0px; text-align: left;" Width="598px" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="SId" HeaderText="SId" ReadOnly="True" 
                    SortExpression="SId" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                    SortExpression="StudentName" />
                <asp:BoundField DataField="Course" HeaderText="Course" 
                    SortExpression="Course" />
                <asp:BoundField DataField="TotalAmt" HeaderText="TotalAmt" 
                    SortExpression="TotalAmt" />
                <asp:BoundField DataField="PaidAmt" HeaderText="PaidAmt" 
                    SortExpression="PaidAmt" />
                <asp:BoundField DataField="RemainingAmt" HeaderText="RemainingAmt" 
                    SortExpression="RemainingAmt" />
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
            DeleteCommand="DELETE FROM [Dues] WHERE [SId] = @SId" 
            InsertCommand="INSERT INTO [Dues] ([SId], [StudentName], [Course], [TotalAmt], [PaidAmt], [RemainingAmt]) VALUES (@SId, @StudentName, @Course, @TotalAmt, @PaidAmt, @RemainingAmt)" 
            SelectCommand="SELECT * FROM [Dues]" 
            UpdateCommand="UPDATE [Dues] SET [StudentName] = @StudentName, [Course] = @Course, [TotalAmt] = @TotalAmt, [PaidAmt] = @PaidAmt, [RemainingAmt] = @RemainingAmt WHERE [SId] = @SId">
            <DeleteParameters>
                <asp:Parameter Name="SId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="SId" Type="String" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Course" Type="String" />
                <asp:Parameter Name="TotalAmt" Type="Int32" />
                <asp:Parameter Name="PaidAmt" Type="Int32" />
                <asp:Parameter Name="RemainingAmt" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Course" Type="String" />
                <asp:Parameter Name="TotalAmt" Type="Int32" />
                <asp:Parameter Name="PaidAmt" Type="Int32" />
                <asp:Parameter Name="RemainingAmt" Type="Int32" />
                <asp:Parameter Name="SId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
<p>
    
        &nbsp;</p>
<p>
    
        &nbsp;</p>
<p>
    
        &nbsp;</p>
<p>
    
        &nbsp;</p>
    <p>
    
        &nbsp;</p>
    <p>
    
        &nbsp;</p>
<p>
    
        <br />
    </p>
     
</asp:Content>

