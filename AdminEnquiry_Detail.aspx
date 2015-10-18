<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminEnquiry_Detail.aspx.cs" Inherits="AdminEnquiry_Detail" %>

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
    <p align="center" class="style6" >
 
        ENQUIRY DETAIL
         </p>
         <p align="center">
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                 DataKeyNames="EnquiryId" DataSourceID="SqlDataSource1" AllowPaging="True" 
                 CellPadding="4" ForeColor="#333333" GridLines="None">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                     <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                     <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
                         SortExpression="EmailId" />
                     <asp:BoundField DataField="Qualification" HeaderText="Qualification" 
                         SortExpression="Qualification" />
                     <asp:BoundField DataField="Branch" HeaderText="Branch" 
                         SortExpression="Branch" />
                     <asp:BoundField DataField="Address" HeaderText="Address" 
                         SortExpression="Address" />
                     <asp:BoundField DataField="MobNo" HeaderText="MobNo" 
                         SortExpression="MobNo" />
                     <asp:BoundField DataField="Session" HeaderText="Session" 
                         SortExpression="Session" />
                     <asp:BoundField DataField="College" HeaderText="College" 
                         SortExpression="College" />
                     <asp:BoundField DataField="Courses" HeaderText="Courses" 
                         SortExpression="Courses" />
                     <asp:BoundField DataField="EnquiryId" HeaderText="EnquiryId" 
                         SortExpression="EnquiryId" InsertVisible="False" ReadOnly="True" />
                     <asp:BoundField DataField="InfoSource" HeaderText="InfoSource" 
                         SortExpression="InfoSource" />
                     <asp:BoundField DataField="EnquiryDate" HeaderText="EnquiryDate" 
                         SortExpression="EnquiryDate" />
                     <asp:BoundField DataField="NameNewspaper" HeaderText="NameNewspaper" 
                         SortExpression="NameNewspaper" />
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
                 DeleteCommand="DELETE FROM [EnquiryTable] WHERE [EnquiryId] = @EnquiryId" 
                 InsertCommand="INSERT INTO [EnquiryTable] ([Name], [EmailId], [Qualification], [Branch], [Address], [MobNo], [Session], [College], [Courses], [InfoSource], [EnquiryDate], [NameNewspaper]) VALUES (@Name, @EmailId, @Qualification, @Branch, @Address, @MobNo, @Session, @College, @Courses, @InfoSource, @EnquiryDate, @NameNewspaper)" 
                 SelectCommand="SELECT * FROM [EnquiryTable]" 
                 UpdateCommand="UPDATE [EnquiryTable] SET [Name] = @Name, [EmailId] = @EmailId, [Qualification] = @Qualification, [Branch] = @Branch, [Address] = @Address, [MobNo] = @MobNo, [Session] = @Session, [College] = @College, [Courses] = @Courses, [InfoSource] = @InfoSource, [EnquiryDate] = @EnquiryDate, [NameNewspaper] = @NameNewspaper WHERE [EnquiryId] = @EnquiryId">
                 <DeleteParameters>
                     <asp:Parameter Name="EnquiryId" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="Name" Type="String" />
                     <asp:Parameter Name="EmailId" Type="String" />
                     <asp:Parameter Name="Qualification" Type="String" />
                     <asp:Parameter Name="Branch" Type="String" />
                     <asp:Parameter Name="Address" Type="String" />
                     <asp:Parameter Name="MobNo" Type="String" />
                     <asp:Parameter Name="Session" Type="String" />
                     <asp:Parameter Name="College" Type="String" />
                     <asp:Parameter Name="Courses" Type="String" />
                     <asp:Parameter Name="InfoSource" Type="String" />
                     <asp:Parameter Name="EnquiryDate" Type="DateTime" />
                     <asp:Parameter Name="NameNewspaper" Type="String" />
                 </InsertParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="Name" Type="String" />
                     <asp:Parameter Name="EmailId" Type="String" />
                     <asp:Parameter Name="Qualification" Type="String" />
                     <asp:Parameter Name="Branch" Type="String" />
                     <asp:Parameter Name="Address" Type="String" />
                     <asp:Parameter Name="MobNo" Type="String" />
                     <asp:Parameter Name="Session" Type="String" />
                     <asp:Parameter Name="College" Type="String" />
                     <asp:Parameter Name="Courses" Type="String" />
                     <asp:Parameter Name="InfoSource" Type="String" />
                     <asp:Parameter Name="EnquiryDate" Type="DateTime" />
                     <asp:Parameter Name="NameNewspaper" Type="String" />
                     <asp:Parameter Name="EnquiryId" Type="Int32" />
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
        <br />
    
</asp:Content>
