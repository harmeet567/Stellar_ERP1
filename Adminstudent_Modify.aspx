<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Adminstudent_Modify.aspx.cs" Inherits="Adminstudent_Modify" %>

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
    MODIFY STUDENT DETAIL
</p>
<p >
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="SId" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="SId" HeaderText="SId" 
                ReadOnly="True" SortExpression="SId" />
            <asp:BoundField DataField="RegDate" HeaderText="RegDate" 
                SortExpression="RegDate" />
            <asp:BoundField DataField="CourseApp" HeaderText="CourseApp" 
                SortExpression="CourseApp" />
            <asp:BoundField DataField="CourseSess" HeaderText="CourseSess" 
                SortExpression="CourseSess" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" 
                SortExpression="StudentName" />
            <asp:BoundField DataField="FatherName" HeaderText="FatherName" 
                SortExpression="FatherName" />
            <asp:BoundField DataField="MotherName" HeaderText="MotherName" 
                SortExpression="MotherName" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="CurrntAddrss" HeaderText="CurrntAddrss" 
                SortExpression="CurrntAddrss" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="PinCode" HeaderText="PinCode" 
                SortExpression="PinCode" />
            <asp:BoundField DataField="CurrntQuilification" HeaderText="CurrntQuilification" 
                SortExpression="CurrntQuilification" />
            <asp:BoundField DataField="Stream" HeaderText="Stream" 
                SortExpression="Stream" />
            <asp:BoundField DataField="UniBoard" HeaderText="UniBoard" 
                SortExpression="UniBoard" />
            <asp:BoundField DataField="College" HeaderText="College" 
                SortExpression="College" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="AltrEmail" HeaderText="AltrEmail" 
                SortExpression="AltrEmail" />
            <asp:BoundField DataField="PhNo" HeaderText="PhNo" SortExpression="PhNo" />
            <asp:BoundField DataField="MobNo" HeaderText="MobNo" SortExpression="MobNo" />
            <asp:BoundField DataField="EnquiryId" HeaderText="EnquiryId" 
                SortExpression="EnquiryId" />
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
        DeleteCommand="DELETE FROM [Registration] WHERE [SId] = @SId" 
        InsertCommand="INSERT INTO [Registration] ([SId], [RegDate], [CourseApp], [CourseSess], [StudentName], [FatherName], [MotherName], [DOB], [Address], [CurrntAddrss], [Country], [State], [City], [PinCode], [CurrntQuilification], [Stream], [UniBoard], [College], [Email], [AltrEmail], [PhNo], [MobNo], [EnquiryId], [Image]) VALUES (@SId, @RegDate, @CourseApp, @CourseSess, @StudentName, @FatherName, @MotherName, @DOB, @Address, @CurrntAddrss, @Country, @State, @City, @PinCode, @CurrntQuilification, @Stream, @UniBoard, @College, @Email, @AltrEmail, @PhNo, @MobNo, @EnquiryId, @Image)" 
        SelectCommand="SELECT * FROM [Registration]" 
        UpdateCommand="UPDATE [Registration] SET [RegDate] = @RegDate, [CourseApp] = @CourseApp, [CourseSess] = @CourseSess, [StudentName] = @StudentName, [FatherName] = @FatherName, [MotherName] = @MotherName, [DOB] = @DOB, [Address] = @Address, [CurrntAddrss] = @CurrntAddrss, [Country] = @Country, [State] = @State, [City] = @City, [PinCode] = @PinCode, [CurrntQuilification] = @CurrntQuilification, [Stream] = @Stream, [UniBoard] = @UniBoard, [College] = @College, [Email] = @Email, [AltrEmail] = @AltrEmail, [PhNo] = @PhNo, [MobNo] = @MobNo, [EnquiryId] = @EnquiryId, [Image] = @Image WHERE [SId] = @SId">
        <DeleteParameters>
            <asp:Parameter Name="SId" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SId" Type="String" />
            <asp:Parameter Name="RegDate" Type="DateTime" />
            <asp:Parameter Name="CourseApp" Type="String" />
            <asp:Parameter Name="CourseSess" Type="String" />
            <asp:Parameter Name="StudentName" Type="String" />
            <asp:Parameter Name="FatherName" Type="String" />
            <asp:Parameter Name="MotherName" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="CurrntAddrss" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="PinCode" Type="Int32" />
            <asp:Parameter Name="CurrntQuilification" Type="String" />
            <asp:Parameter Name="Stream" Type="String" />
            <asp:Parameter Name="UniBoard" Type="String" />
            <asp:Parameter Name="College" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="AltrEmail" Type="String" />
            <asp:Parameter Name="PhNo" Type="String" />
            <asp:Parameter Name="MobNo" Type="String" />
            <asp:Parameter Name="EnquiryId" Type="Int32" />
            <asp:Parameter Name="Image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="RegDate" Type="DateTime" />
            <asp:Parameter Name="CourseApp" Type="String" />
            <asp:Parameter Name="CourseSess" Type="String" />
            <asp:Parameter Name="StudentName" Type="String" />
            <asp:Parameter Name="FatherName" Type="String" />
            <asp:Parameter Name="MotherName" Type="String" />
            <asp:Parameter Name="DOB" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="CurrntAddrss" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="PinCode" Type="Int32" />
            <asp:Parameter Name="CurrntQuilification" Type="String" />
            <asp:Parameter Name="Stream" Type="String" />
            <asp:Parameter Name="UniBoard" Type="String" />
            <asp:Parameter Name="College" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="AltrEmail" Type="String" />
            <asp:Parameter Name="PhNo" Type="String" />
            <asp:Parameter Name="MobNo" Type="String" />
            <asp:Parameter Name="EnquiryId" Type="Int32" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="SId" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    <p >
        &nbsp;</p>
    <p >
        &nbsp;</p>
    <p >
        &nbsp;</p>
    <p >
        &nbsp;</p>
    <p >
        &nbsp;</p>
    <p >
        &nbsp;</p>
    <p >
        &nbsp;</p>
    <p >
        &nbsp;</p>
</asp:Content>

