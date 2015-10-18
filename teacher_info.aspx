<%@ Page Title="" Language="C#" MasterPageFile="~/teacher_Page.master" AutoEventWireup="true" CodeFile="teacher_info.aspx.cs" Inherits="teacher_info_" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 232px;
        }
        .style10
        {
            color: #333333;
        }
        .style12
        {
            width: 97px;
        }
        .style13
        {
            width: 91px;
        }
        .style16
        {
            width: 85px;
        }
        .style17
        {
            width: 146px;
        }
        .style18
        {
            width: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div >

       <table >
           <tr>
               <td align="center">
                   <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" 
                       Font-Underline="False" ForeColor="Black" Text="TEACHER INFORMATION"></asp:Label>
               </td>
           </tr>
       </table>
                       <asp:Label ID="Label19" runat="server" Font-Size="Large" 
            ForeColor="Red"></asp:Label>
       <br />
       <br />
       <asp:Panel ID="Panel1" runat="server"  BorderStyle="Groove">
           <table >
               <tr>
                   <td class="style17">
                       <asp:Label ID="Label3" runat="server" Text="Teacher id" style="color: #333333"></asp:Label>
                   </td>
                   <td class="style12">
                       <asp:Label ID="Label11" runat="server" Text="--"></asp:Label>
                   </td>
                   <td class="style18">
                       <asp:Label ID="Label20" runat="server" Text="Image" CssClass="style10"></asp:Label>
                   </td>
                   <td class="style4" style="margin-left: 40px">
                       <asp:Image ID="Image1" runat="server" Height="77px" Width="101px" />
                       <asp:FileUpload ID="FileUpload1" runat="server" />
                   </td>
               </tr>
               <tr>
                   <td class="style17">
                       <asp:Label ID="Label7" runat="server" Text="Teacher Name" CssClass="style10"></asp:Label>
                   </td>
                   <td class="style12">
                       <asp:Label ID="Label15" runat="server" Text="--"></asp:Label>
                   </td>
                   <td class="style18" style="margin-left: 40px">
                       &nbsp;</td>
                   <td class="style4" style="margin-left: 40px">
                       <asp:Button ID="Button1" runat="server" Font-Underline="True" 
                           ForeColor="#0066FF" onclick="Button1_Click" Text="Upload image" 
                           Height="30px" Width="96px" />
                       <asp:Label ID="Label21" runat="server"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="style17">
                       <asp:Label ID="Label4" runat="server" Text="Email id" CssClass="style10"></asp:Label>
                   </td>
                   <td class="style12">
                       <asp:Label ID="Label12" runat="server" Text="--"></asp:Label>
                   </td>
                   <td class="style18">
                       <asp:Label ID="Label8" runat="server" Text="Mobile No." CssClass="style10"></asp:Label>
                   </td>
                   <td >
                       <asp:Label ID="Label16" runat="server" Text="--"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="style17">
                       <asp:Label ID="Label5" runat="server" Text="Belong to" CssClass="style10"></asp:Label>
                   </td>
                   <td class="style12">
                       <asp:Label ID="Label13" runat="server" Text="--"></asp:Label>
                   </td>
                   <td class="style18">
                       <asp:Label ID="Label9" runat="server" Text="Teacher Specialization" 
                           CssClass="style10" Width="186%"></asp:Label>
                   </td>
                   <td >
                       <asp:Label ID="Label17" runat="server" Text="--"></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td class="style17">
                       <asp:Label ID="Label6" runat="server" Text="Teacher Qualification" 
                           CssClass="style10" Width="186%"></asp:Label>
                   </td>
                   <td class="style12">
                       <asp:Label ID="Label14" runat="server" Text="--"></asp:Label>
                   </td>
                   <td class="style18">
                       <asp:Label ID="Label10" runat="server" Text="Teacher Experience" 
                           CssClass="style10" Width="186%"></asp:Label>
                   </td>
                   <td >
                       <asp:Label ID="Label18" runat="server" Text="--"></asp:Label>
                   </td>
               </tr>
           </table>
       </asp:Panel>
     
       <div>
           <br />
           <br />
           &nbsp;<br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
           <br />
       </div>
   </div>
</asp:Content>

