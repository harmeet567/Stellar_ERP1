<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Enqiury_form.aspx.cs" Inherits="TeejaNquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style30
        {
            width: 100%;
            
            border:0px;
        }
        .style32
        {
            border-style: none;
            border-color: inherit;
            border-width: 0px;
            width: 130px;
        }
        .style33
        {
            width: 112px;
        }
        .style34
        {
            border-style: none;
            border-color: inherit;
            border-width: 0px;
            width: 112px;
        }
        .style35
        {
            color: #000000;
            font-size: 12pt;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="margin-top: 51px">
    <div>
        
         
                     
                    <div class="center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         
                     
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Red" Text="ENQUIRY FORM" CssClass="style35" 
                        style="color: #000000"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br class="style4" />
                    <br />
                    </div>
                    <asp:Panel ID="Panel4" runat="server" Height="160px" BorderStyle="Groove">
                        <table class="style30" style=" border:0px">
                            <tr>
                               
                                <td>
                                    <asp:Label ID="Label30" runat="server" Text="Enquiry Id"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="Label31" runat="server" Text="--"></asp:Label>
                                </td>
                                <td class="style34">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td class="style33">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td class="style32">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label6" runat="server" Text="Email id"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td class="style33">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ErrorMessage="abc@xyz.mnp" ControlToValidate="TextBox2" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                        ForeColor="Red"></asp:RegularExpressionValidator>
                                </td>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Text="Mobile"></asp:Label>
                                </td>
                                <td class="style32">
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ErrorMessage="*" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ErrorMessage="enter right format" ControlToValidate="TextBox6" 
                                        ValidationExpression="^([7-9]{1})([0-9]{9})$" ForeColor="Red"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text="Qualification"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                                <td class="style33">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Text="Year"></asp:Label>
                                </td>
                                <td class="style32">
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ErrorMessage="*" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Branch"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                                <td class="style33">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Text="College"></asp:Label>
                                </td>
                                <td class="style32">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ErrorMessage="*" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                   
                    <p style="font-size: large" class="style4">
                        You are interested to know about which of the following Program:</p>
                    <asp:Panel ID="Panel5" runat="server" BorderStyle="Groove" Height="132px">
                        <table class="style30" style=" border:0px" >
                            <tr>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Text="OCP 10g(DBA/DEVELOPER)"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="r1"/>
                                </td>
                                <td>
                                    <asp:Label ID="Label18" runat="server" Text="JAVA/J2EE"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton6" runat="server" GroupName="r1" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Text="OCA 10g(DBA/DEVELOPER)"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="r1" />
                                </td>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text="RHCE"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton7" runat="server" GroupName="r1" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Text="SEO"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton3" runat="server" GroupName="r1" />
                                </td>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text="PHP. MY SQL"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton8" runat="server" GroupName="r1" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Text="SQT"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton4" runat="server" GroupName="r1" />
                                </td>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text="EMBEDDED SYSTEMS"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton9" runat="server" GroupName="r1" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Text=".NET"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton5" runat="server" GroupName="r1" />
                                </td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <p style="font-size: large" class="style4">
                        You heared of Stellar Edge through(Tick all that apply):</p>
                   <asp:panel ID="Panel6" runat="server" BorderStyle="Groove" Height="100px">
                        <table class="style30" style=" border:0px">
                            <tr>
                                <td>
                                    <asp:Label ID="Label23" runat="server" Text="Newspaper"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton10" runat="server" AutoPostBack="True" 
                                        GroupName="r2" oncheckedchanged="RadioButton10_CheckedChanged" />
                                </td>
                                <td>
                                    <asp:Label ID="Label27" runat="server" Text="Name of Newspaper"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label24" runat="server" Text="Friends/Relatives"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton11" runat="server" GroupName="r2" />
                                </td>
                                <td>
                                    <asp:Label ID="Label28" runat="server" Text="Banner/Pamphlet"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton13" runat="server" GroupName="r2" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label25" runat="server" Text="Internet"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton12" runat="server" GroupName="r2" />
                                </td>
                                <td>
                                    <asp:Label ID="Label29" runat="server" Text="Workshop/Seminar in your College"></asp:Label>
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton14" runat="server" GroupName="r2" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label33" runat="server" Font-Size="Large"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                   </asp:Panel>
                    <table class="style30"  style="border:0px; border-color:White">
                        <tr>
                            <td>

                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                                <asp:Button ID="Button1" runat="server" Height="29px" Text="Submit" 
                                    Width="76px" onclick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                   
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label32" runat="server" Font-Size="Larger" ForeColor="Red" 
                                        Text="Status"></asp:Label>
                                <br />
                   
                
                    <br />
                   
                
   </div>
   </div>
</asp:Content>

