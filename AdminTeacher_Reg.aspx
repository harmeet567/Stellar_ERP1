<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTeacher_Reg.aspx.cs" Inherits="AdminTeacher_Reg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style6
        {
            font-size: 15pt;
        }
        .style7
        {
            font-size: 15pt;
            color: #000000;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> 
  <div>
    <p class="style7" style="text-align: center">
       TEACHER INFORMATION
       <br />
       </p>
      
       <asp:Panel ID="Panel1" runat="server"  BorderStyle="Groove" >
           <table >
               <tr>
                   
                   <td style=" width:170px" >
                       <asp:Label ID="Label12" runat="server"></asp:Label>
                   </td>
                   
                   <td  style=" width:100px">
                       </td>
               </tr>
               <tr>
                   <td class="style5">
                       <asp:Label ID="Label14" runat="server" Text="Teacher ID"></asp:Label>
                   </td>
                   <td  style=" width:100px">
                       <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True"></asp:TextBox>
                   </td>
                   <td class="style25">
                       </td>
                   <td class="style5">
                       <asp:Label ID="Label7" runat="server" Text="Teacher Name"></asp:Label>
                   </td>
                   <td class="style24">
                       <br />
                       <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                       <br />
                       <br />
                   </td>
                   <td class="style26">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                           ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red" 
                           ValidationGroup="g1"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="style5">
                       <asp:Label ID="Label4" runat="server" Text="Email id"></asp:Label>
                   </td>
                   <td  style=" width:100px">
                       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                   </td>
                   <td class="style9">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                           ControlToValidate="TextBox2" ErrorMessage="Fill first" ForeColor="Red" 
                           ValidationGroup="g1"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                           ControlToValidate="TextBox2" ErrorMessage="enter correct format" 
                           ForeColor="Red" 
                           ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                           ValidationGroup="g1"></asp:RegularExpressionValidator>
                   </td>
                   <td class="style5">
                       <asp:Label ID="Label8" runat="server" Text="Contact Number"></asp:Label>
                   </td>
                   <td class="style8">
                       <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                           ControlToValidate="TextBox6" ErrorMessage="Fill first" ForeColor="Red" 
                           ValidationGroup="g1"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                           ControlToValidate="TextBox6" ErrorMessage="Enter valid number" ForeColor="Red" 
                           ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="g1"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td class="style5">
                       <asp:Label ID="Label5" runat="server" Text="Belong to"></asp:Label>
                   </td>
                   <td style=" width:100px">
                       <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                   </td>
                   <td class="style9">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                           ControlToValidate="TextBox3" ErrorMessage="Fill first" ForeColor="Red" 
                           ValidationGroup="g1"></asp:RequiredFieldValidator>
                   </td>
                   <td style=" width:200px">
                       <asp:Label ID="Label9" runat="server" Text="Teacher Specialization" 
                           style="font-size: medium"></asp:Label>
                   </td>
                   <td class="style8">
                       <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                           ControlToValidate="TextBox7" ErrorMessage="Fill first" ForeColor="Red" 
                           ValidationGroup="g1"></asp:RequiredFieldValidator>
                   </td>
               </tr>
               <tr>
                   <td class="style5">
                       <asp:Label ID="Label6" runat="server" Text="Teacher Qualification"></asp:Label>
                   </td>
                   <td style=" width:100px">
                       <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                   </td>
                   <td class="style9">
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                           ControlToValidate="TextBox4" ErrorMessage="Fill first" ForeColor="Red" 
                           ValidationGroup="g1"></asp:RequiredFieldValidator>
                   </td>
                   <td class="style5">
                       <asp:Label ID="Label10" runat="server" Text="Teacher Experience"></asp:Label>
                   </td>
                   <td class="style8">
                       <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                   </td>
                   <td>
                       &nbsp;</td>
               </tr>
               <tr>
                   <td class="style5" style=" width:170px">
                       &nbsp;</td>
                   <td  style=" width:100px">
                       
                       <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Submit" 
                           ValidationGroup="g1" />
                   </td>
                   <td class="style9">
                       <asp:Button ID="Button2" runat="server" onclick="Button2_Click1" Text="Reset" />
                   </td>
                   <td class="style6">
                       &nbsp;</td>
                   <td class="style8">
                       &nbsp;</td>
                   <td>
                       &nbsp;</td>
               </tr>
           </table>
       </asp:Panel>
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

