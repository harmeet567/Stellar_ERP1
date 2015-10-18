<%@ Page Title="" Language="C#" MasterPageFile="~/teacher_Page.master" AutoEventWireup="true" CodeFile="Teacheruploadresource.aspx.cs" Inherits="Teacheruploadresource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 258px;
        }
        .style4
        {
            width: 235px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
    <table >
    <tr><td>
        &nbsp;<td>&nbsp;</td></td></tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Text="Upload Resource" style="font-size: large"></asp:Label>
            </td>
            <td >
    <asp:FileUpload ID="FileUpload1" runat="server" BackColor="#BBBB18" 
                     />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                    onclick="Button1_Click" Text="UPLOAD" 
                     />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
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
</div>
</asp:Content>

