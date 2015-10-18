<%@ Page Title="" Language="C#" MasterPageFile="~/student_page.master" AutoEventWireup="true" CodeFile="DownloadResource.aspx.cs" Inherits="DownloadResource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style3
        {
            height: 93px;
        }
        .style4
    {
        font-size: 15pt;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >

    
              <p class="center">&nbsp;&nbsp; <span class="style4">Download Files
              </span>
              </p>
            <p>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="SrNo" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="SrNo" HeaderText="SrNo" ReadOnly="True" 
                            SortExpression="SrNo" />
                        <asp:BoundField DataField="FileName" HeaderText="FileName" 
                            SortExpression="FileName" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                    SelectCommand="SELECT * FROM [UploadResource]"></asp:SqlDataSource>
              </p> 
    </div>

</asp:Content>

