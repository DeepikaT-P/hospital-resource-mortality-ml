﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Visitor/VisitorMasterpage.Master" AutoEventWireup="true" CodeBehind="Info.aspx.cs" Inherits="medicalProject.Visitor.Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:Panel ID="Panel1" runat="server">
    <br />
       <br />
       <br />
       <br />
    <div class="header_02">Medical Info!</div>

    <p>According to the number of mortality from public health statistics data of the Strategy and Planning Division, the Permanent Secretary Office (1977 - 2014) had been increasing consecutively every year, so health service is the most important task to reduce the mortality rate for the Thai population. The purpose of this paper is to show an association between mortality and health service by using Apriori algorithm and FP-growth algorithm. We found the number of government hospitals with patient beds 13.29-15.90, 1350.44-1540.58 patient beds, 107-216 doctors, 15-30 dentists, 18-46 pharmacists, 271-625 nurses and 321-417 technical nurses per 1 million populations have a relationship to the number of deaths at very low rates and the result of data mining technique found both Apriori algorithm and FP-growth algorithm had similarly result but rule number and discrepancy analyzed.
    </p>
    

    <p>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/age wise.jpg" />
    
    </p>

    <br />
    </asp:Panel>
</asp:Content>
