<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterpage.Master" AutoEventWireup="true" CodeBehind="Dataset.aspx.cs" Inherits="medicalProject.Member.Dataset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server">
    <br />
       <br />
       <br />
       <br />
    <div class="header_02">Upload Dataset!</div>
      
  <br />


  <br />

            <table style="width: 60%;">
         <tr>
             <td>
                 <b>Select Date</b></td>
             <td>
                 <asp:TextBox ID="txtDate" runat="server" Width="200px"></asp:TextBox>
             </td>
             <td>
                 &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                     ControlToValidate="txtDate" CssClass="validation" ErrorMessage="*" 
                     ToolTip="Enter Date" ValidationGroup="a">Enter Date</asp:RequiredFieldValidator>
&nbsp;</td>
         </tr>
         <tr>
             <td>
                 <b>Enter Data</b></td>
             <td>
                 <asp:TextBox ID="txtData" runat="server" Width="250px" Height="150px" 
                     TextMode="MultiLine"></asp:TextBox>
             </td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="txtData" CssClass="validation" ErrorMessage="*" 
                     ToolTip="Enter Data" ValidationGroup="a">Enter Data</asp:RequiredFieldValidator>
             </td>
         </tr>
       
         <tr>
             <td>
                 &nbsp;</td>
             <td>
                 <span>
                 <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                     Text="Upload" ValidationGroup="a" />
                 </span>
             </td>
             <td>
                 &nbsp;</td>
         </tr>
     </table>
     <br />
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
