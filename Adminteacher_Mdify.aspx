<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Adminteacher_Mdify.aspx.cs" Inherits="Adminteacher_Mdify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center" >
        <asp:Label ID="Label2" runat="server" Font-Size="Larger" ForeColor="Black" 
            Text="MODIFY TEACHER DETAIL" Font-Bold="True"></asp:Label>
    </p>
    <p align="center">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="TId" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TId" HeaderText="TId" 
                    ReadOnly="True" SortExpression="TId" />
                <asp:BoundField DataField="TName" HeaderText="TName" SortExpression="TName" />
                <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" 
                    SortExpression="ContactNo" />
                <asp:BoundField DataField="BelongTo" HeaderText="BelongTo" 
                    SortExpression="BelongTo" />
                <asp:BoundField DataField="TSpecialization" HeaderText="TSpecialization" 
                    SortExpression="TSpecialization" />
                <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                    SortExpression="Qualification" />
                <asp:BoundField DataField="Experience" HeaderText="Experience" 
                    SortExpression="Experience" />
                <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                    SortExpression="EmailId" />
                <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
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
            DeleteCommand="DELETE FROM [TeacherInfoTable] WHERE [TId] = @TId" 
            InsertCommand="INSERT INTO [TeacherInfoTable] ([TId], [TName], [ContactNo], [BelongTo], [TSpecialization], [Qualification], [Experience], [EmailId], [Image]) VALUES (@TId, @TName, @ContactNo, @BelongTo, @TSpecialization, @Qualification, @Experience, @EmailId, @Image)" 
            SelectCommand="SELECT * FROM [TeacherInfoTable]" 
            UpdateCommand="UPDATE [TeacherInfoTable] SET [TName] = @TName, [ContactNo] = @ContactNo, [BelongTo] = @BelongTo, [TSpecialization] = @TSpecialization, [Qualification] = @Qualification, [Experience] = @Experience, [EmailId] = @EmailId, [Image] = @Image WHERE [TId] = @TId">
            <DeleteParameters>
                <asp:Parameter Name="TId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TId" Type="String" />
                <asp:Parameter Name="TName" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="BelongTo" Type="String" />
                <asp:Parameter Name="TSpecialization" Type="String" />
                <asp:Parameter Name="Qualification" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TName" Type="String" />
                <asp:Parameter Name="ContactNo" Type="String" />
                <asp:Parameter Name="BelongTo" Type="String" />
                <asp:Parameter Name="TSpecialization" Type="String" />
                <asp:Parameter Name="Qualification" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="TId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
</asp:Content>

