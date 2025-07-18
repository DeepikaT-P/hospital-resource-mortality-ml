<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="medicalProject.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server">
    <br />
       <br />
       <br />
       <br />
    <div class="header_02">Welcome Admin!</div>

   <p>Add cities</p>

    <p>Add Hospitals</p>

     <p>Set Inchargers</p>

      <p>Set Id and Password</p>

       <p>Update Password</p>

    <br />
     <marquee scrolldelay="150" behavior="alternate">
     <asp:Image ID="Image1" runat="server" Height="250px" 
                    ImageUrl="~/images/admin.jpg" Width="350px" />
                    </marquee>
    </asp:Panel>
</asp:Content>
