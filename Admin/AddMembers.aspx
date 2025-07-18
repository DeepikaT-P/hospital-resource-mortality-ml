<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="AddMembers.aspx.cs" Inherits="medicalProject.Admin.AddMembers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:Panel ID="Panel1" runat="server">
    <br />
           
    <div class="header_02">Add Hospitals!</div>

   <br />
    <marquee scrolldelay="150" behavior="alternate">
          
          <img src="../images/hospital2.png" width="160" height="100" alt="" /> &nbsp
         <img src="../images/hospital3.jpg" width="160" height="100" alt="" /> &nbsp
          <img src="../images/hospital4.jpg" width="160" height="100" alt="" /></marquee>
           <br />
         
    
            <table style="width: 50%;">
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                                <td align="center" class="style9">
                                                   </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;
                                                </td>
                                                <td>
                                                   <fieldset>
                                        <legend>Hospital</legend>
                                        <table align="center" style="width: 100%;">
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    <strong>City</strong></td>
                                                <td>
                                                    <asp:DropDownList ID="DropDownListCity" runat="server" Width="200px">
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                          <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    <strong>ICId</strong></td>
                                                <td>
                                                    <asp:TextBox ID="txtICID" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                        ControlToValidate="txtICID" CssClass="validation" ErrorMessage="*" 
                                                        ToolTip="Enter ICID" ValidationGroup="a">Enter ICID</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    <strong>Hospital</strong></td>
                                                <td>
                                                    <asp:TextBox ID="txtName" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="txtName" CssClass="validation" ErrorMessage="*" 
                                                        ToolTip="Enter Name" ValidationGroup="a">Enter Name</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    <strong>Password</strong></td>
                                                <td>
                                                    <asp:TextBox ID="txtPassword" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="txtPassword" CssClass="validation" ErrorMessage="*" 
                                                        ToolTip="Enter Password" ValidationGroup="a">Enter Password</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                           <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    <strong>Address</strong></td>
                                                <td>
                                                    <asp:TextBox ID="txtAddress" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="txtAddress" CssClass="validation" ErrorMessage="*" 
                                                        ToolTip="Enter Address" ValidationGroup="a">Enter Address</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    <strong>ContactNo</strong></td>
                                                <td>
                                                    <asp:TextBox ID="txtContactNo" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                        ControlToValidate="txtContactNo" CssClass="validation" ErrorMessage="*" 
                                                        ToolTip="Enter ContactNo" ValidationGroup="a">Enter ContactNo</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    <strong>EmailId</strong></td>
                                                <td>
                                                    <asp:TextBox ID="txtEmailId" runat="server" Width="200px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                        ControlToValidate="txtEmailId" CssClass="validation" ErrorMessage="*" 
                                                        ToolTip="Enter EmailId" ValidationGroup="a">Enter EmailId</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Button ID="btnIC" runat="server" onclick="btnIC_Click" Text="Add" 
                                                        ValidationGroup="a" Width="75px" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                        </fieldset>  
                                                </td>
                                                <td>
                                                    &nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                       
                                        <br />
                                        <table style="width: 50%;">
                                            <tr>
                                                <td class="style9">
                                                     <h2 class="title"><span>View Hospitals</span></h2></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div style="height:400px; width:auto; overflow:auto">
                                                    <asp:Table ID="tblICs" runat="server">
                                                    </asp:Table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                        <br />

    <br />
    </asp:Panel>
</asp:Content>
