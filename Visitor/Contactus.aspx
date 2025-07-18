<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterpage.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="medicalProject.Visitor.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <asp:Panel ID="Panel1" runat="server">
    <br />
       <br />
       <br />
       <br />
    <div class="header_02">Contactus!</div>

    <p>Name: Ajay Kumar A K
    </p>
    

    <p>
    Mobile: 9985748574
    </p>

    <p>Email Id: Ajay@gmail.com</p>

    <p>Address: #43, 4th Main, Vijaynagar, Bengaluru.</p>

    <p>Website: www.Mortality.com</p>

    <br />
     <asp:Image ID="Image1" runat="server" ImageUrl="~/images/ContactUs.jpg" />
    </asp:Panel>
</asp:Content>
