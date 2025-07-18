<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="_Dataset.aspx.cs" Inherits="medicalProject.Admin._Dataset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server">
    <br />
       <br />
       <br />
       <br />
    <div class="header_02">Dataset!</div>
      
  
                            <div>
						   		  <h2><span>View</span> Dataset!!!</h2>
                                  <br />
						  </div>

                            <div>
						   		<span>
                                       <asp:Table ID="tableDataset" runat="server">
                                       </asp:Table>  </span>
						  </div>

  				<div class="clear"> </div>		





    <br />
    </asp:Panel>
</asp:Content>
