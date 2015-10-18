<%@ Page Title="" Language="C#" MasterPageFile="~/teacher_Page.master" AutoEventWireup="true" CodeFile="TeacherTime_table.aspx.cs" Inherits="TeacherTime_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p >
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" 
            ForeColor="Black" Text="TIME TABLE"></asp:Label>
        <br />
    </p>
    <p >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="BatchId" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Width="515px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
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
            SelectCommand="SELECT * FROM [BatchAllocationTable]"></asp:SqlDataSource>
    </p>
    <br />
    <br />
    <br />
</asp:Content>

