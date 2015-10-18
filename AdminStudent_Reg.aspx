<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminStudent_Reg.aspx.cs" Inherits="Admin_Reg" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <style type="text/css">
        .style48
        {
            text-align:left;
            font-size: 15pt;
            color: #000000;
        }
        .style49
        {
            color: #333333;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style48">
   STUDENT REGISTRATION FORM
   </p>

<p>
    <asp:Label ID="Label3" runat="server" Font-Size="Large" Font-Underline="True" 
        ForeColor="#CC3300" Text="Official Details:" style="color: #333333"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label36" runat="server" Font-Bold="True" 
        ForeColor="Red"></asp:Label>
</p>
    <asp:Panel ID="Panel1" runat="server"  BorderStyle="Groove" >
        <table class="style1" style="width: 100%">
            <tr>
                <td class="style47">
                    <asp:Label ID="Label37" runat="server" Text="Reg No"></asp:Label>
                </td>
                <td class="style46">
                    <asp:TextBox ID="TextBox25" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="style35">
                    &nbsp;</td>
                <td class="style44">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;</td>
            </tr>
            <tr style=" height:30px">
                <td style=" height:30px">
                    <asp:Label ID="Label35" runat="server" Text="Enquiry Id"></asp:Label>
                </td>
                <td style=" height:30px">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataTextField="EnquiryId" 
                        DataValueField="EnquiryId" 
                        onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                        DataSourceID="SqlDataSource1" Width="150px">
                    </asp:DropDownList>
                </td>
                <td style=" height:30px">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                        SelectCommand="SELECT [EnquiryId] FROM [EnquiryTable]"></asp:SqlDataSource>
                </td>
                <td style=" height:30px">
                    <asp:Label ID="Label5" runat="server" Text="Course Session:"></asp:Label>
                </td>
                <td style=" height:30px">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        Height="16px" Width="150px" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>--Select item--</asp:ListItem>
                        <asp:ListItem>Jan-June</asp:ListItem>
                        <asp:ListItem>June-July</asp:ListItem>
                        <asp:ListItem>July-August</asp:ListItem>
                        <asp:ListItem>July-Dec</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style47" style=" width:136px">
                    <asp:Label ID="Label9" runat="server" Text="Course Applied for"></asp:Label>
                </td>
                <td class="style46" style=" width:238px">
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataTextField="CourseName" 
                        DataValueField="CourseName" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                        DataSourceID="SqlDataSource2" Width="150px">
                    </asp:DropDownList>
                    <asp:Label ID="Label38" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </td>
                <td class="style35" style=" width:120px">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:stellarerpConnectionString %>" 
                        SelectCommand="SELECT * FROM [Courses]"></asp:SqlDataSource>
                </td>
                <td class="style44">
                    &nbsp;</td>
                <td class="style10">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
    </asp:Panel> 
    <p>
        <asp:Label ID="Label10" runat="server" Font-Size="Large" Font-Underline="True" 
            ForeColor="#CC0000" Text="Persional Details:" style="color: #333333"></asp:Label>
    </p>
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Groove">
        <table class="style1" >
            <tr>
                <td class="style23">
                    <asp:Label ID="Label11" runat="server" Text="Applicant Name"></asp:Label>
                </td>
                <td class="style21" style="color: #FF0000">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                    <asp:FilteredTextBoxExtender
                        ID="FilteredTextBoxExtender1" runat="server" 
                        InvalidChars="01234567891.,';][=-`" TargetControlID="TextBox1" 
                        ValidChars="ABCDEFGHIJKLMNOPQRSTUVWZYZabcdefghijklmnopqrstuvwxyz">
                    </asp:FilteredTextBoxExtender>
                   
                    </td>
                <td class="style26">
                    <asp:Label ID="Label16" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td >
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                        TargetControlID="TextBox24">
                    </asp:CalendarExtender>
                    <asp:TextBox ID="TextBox24" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Label ID="Label12" runat="server" Text="Father Name"></asp:Label>
                </td>
                <td class="style21" style="color: #FF0000">
                    <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
                <td class="style26">
                    <asp:Label ID="Label17" runat="server" Text="Mother Name"></asp:Label>
                </td>
                <td style="color: #FF0000">
                    <asp:TextBox ID="TextBox6" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Label ID="Label13" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style21" style="color: #FF0000">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
                <td class="style26">
                    <asp:Label ID="Label18" runat="server" Text="Current Address"></asp:Label>
                </td>
                <td style="color: #FF0000">
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23">
                    <asp:Label ID="Label14" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="style21" style="color: #FF0000">
                    <asp:TextBox ID="TextBox21" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox21" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
                <td class="style26">
                    <asp:Label ID="Label19" runat="server" Text="State"></asp:Label>
                </td>
                <td style="color: #FF0000">
                    <asp:TextBox ID="TextBox23" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="TextBox23" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style23" style=" width:132px">
                    <asp:Label ID="Label15" runat="server" Text="City"></asp:Label>
                </td>
                <td class="style21" style="color: #FF0000; width:238px" >
                    <asp:TextBox ID="TextBox22" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                        ControlToValidate="TextBox22" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
                <td class="style26">
                    <asp:Label ID="Label20" runat="server" Text="PinCode"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <p>
        <asp:Label ID="Label21" runat="server" Font-Size="Large" Font-Underline="True" 
             Text="Qualification Details:" CssClass="style49"></asp:Label>
    </p>
    <asp:Panel ID="Panel3" runat="server" BorderStyle="Groove" >
    <table class="style1">
        <tr>
            <td class="style7">
                    <asp:Label ID="Label22" runat="server" Text="Current Qualification"></asp:Label>
                </td>
            <td class="style8" style="color: #FF0000">
                    <asp:TextBox ID="TextBox10" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox10" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                    <asp:Label ID="Label34" runat="server" Text="Stream"></asp:Label>
                </td>
            <td style="color: #FF0000">
                    <asp:TextBox ID="TextBox20" runat="server" style="margin-left: 0px" 
                        Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="TextBox20" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                    <asp:Label ID="Label23" runat="server" Text="University/Board"></asp:Label>
                </td>
            <td class="style8" style="color: #FF0000">
                    <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 0px" 
                        Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                    <asp:Label ID="Label33" runat="server" Text="Percentage"></asp:Label>
                </td>
            <td style="color: #FF0000">
                    <asp:TextBox ID="TextBox13" runat="server" style="margin-left: 0px" 
                        Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="TextBox13" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7" style=" width:136px">
                    <asp:Label ID="Label24" runat="server" Text="College Address"></asp:Label>
                </td>
            <td class="style8" style="color: #FF0000; width:236px">
                    <asp:TextBox ID="TextBox12" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox12" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
            <td class="style9" style=" width:120px">
                <asp:Label ID="Label32" runat="server" Text="College"></asp:Label>
            </td>
            <td style="color: #FF0000">
                <asp:TextBox ID="TextBox19" runat="server" style="margin-left: 0px" 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="TextBox19" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    </asp:Panel>
    <p style="height: 19px">
                    <asp:Label ID="Label27" runat="server" Text="Contact Details:" 
            Font-Size="Large" Font-Underline="True"  CssClass="style49"></asp:Label>
    </p>
    <asp:Panel ID="Panel4" runat="server" BorderStyle="Groove" >
        <table class="style1">
            <tr>
                <td class="style41">
                    <asp:Label ID="Label28" runat="server" Text="Email id"></asp:Label>
                </td>
                <td class="style41" style="color: #FF0000">
                    <asp:TextBox ID="TextBox15" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                        ControlToValidate="TextBox15" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
                <td class="style19">
                    <asp:Label ID="Label30" runat="server" Text="Alternate Email id"></asp:Label>
                </td>
                <td style="color: #FF0000" class="style32">
                    <asp:TextBox ID="TextBox17" runat="server" style="margin-left: 0px" 
                        Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style41" style=" width:135px">
                    <asp:Label ID="Label29" runat="server" Text="Phone Number"></asp:Label>
                </td>
                <td class="style41" style="color: #FF0000; width:236px">
                    <asp:TextBox ID="TextBox16" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td class="style19" style=" width:120px">
                    <asp:Label ID="Label31" runat="server" Text="Mobile Number"></asp:Label>
                </td>
                <td style="color: #FF0000" class="style32">
                    <asp:TextBox ID="TextBox18" runat="server" Width="150px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                        ControlToValidate="TextBox18" ErrorMessage="*" ValidationGroup="g1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
        </table>
    </asp:Panel>
    <p>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                        ValidationGroup="g1" />
                
                    
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    
                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" 
                            Width="55px" />
                   
            </p>
    
</asp:Content>

