﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="medicalProject.Visitor.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
    <br />
       <br />
       <br />
       <br />
    <div class="header_02">User Login (Enter Your Credentials)!</div>

    <br />
    
     <table style="width: 50%;">
         <tr>
             <td>
                 <b>User Type</b></td>
             <td>
                 &nbsp;
             <span>
                 <asp:DropDownList ID="dropdownlistType" runat="server" Height="25px" 
                     Width="60%">
                     <asp:ListItem>Select</asp:ListItem>
                     <asp:ListItem>Administrator</asp:ListItem>
                     <asp:ListItem>Hospital</asp:ListItem>
                 </asp:DropDownList>
                 </span>
             </td>
             <td>
                 &nbsp;
             <span>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
                     ControlToValidate="dropdownlistType" CssClass="validation" 
                     ErrorMessage="Select UserType" Operator="NotEqual" ToolTip="Select UserType" 
                     ValidationGroup="login" ValueToCompare="Select"></asp:CompareValidator>
                 </span>
             </td>
         </tr>
         <tr>
             <td>
               <b>Login Id</b></td>
             <td>
                 &nbsp;
             <span>
                 <asp:TextBox ID="txtLoginId" runat="server" Height="25px" Width="90%"></asp:TextBox>
                 </span>
             </td>
             <td>
                 &nbsp;
             <span>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txtLoginId" CssClass="validation" 
                     ErrorMessage="Enter LoginId" ToolTip="Enter LoginId" ValidationGroup="login"></asp:RequiredFieldValidator>
                 </span>
             </td>
         </tr>
         <tr>
             <td>
               <b> Password </b></td>
             <td>
                 &nbsp;
             <span>
                 <asp:TextBox ID="txtPassword" runat="server" Height="25px" TextMode="Password" 
                     Width="90%"></asp:TextBox>
                 </span>
             </td>
             <td>
                 &nbsp;
             <span>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="txtPassword" CssClass="validation" 
                     ErrorMessage="Enter Password" ToolTip="Enter Password" ValidationGroup="login"></asp:RequiredFieldValidator>
                 </span>
             </td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
             <td>
                 &nbsp;</td>
         </tr>
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 <span>
                 <asp:Button ID="btnLogin" runat="server" Text="Submit" 
                     ValidationGroup="login" onclick="btnLogin_Click" />
                 </span>
             </td>
             <td>
                 &nbsp;</td>
         </tr>
     </table>

        

        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/login.jpg" />
        <br />

        

    <br />
    </asp:Panel>
</asp:Content>
