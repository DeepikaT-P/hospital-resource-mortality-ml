<%@ Page Title="" Language="C#" MasterPageFile="~/Member/MemberMasterpage.Master" AutoEventWireup="true" CodeBehind="Import.aspx.cs" Inherits="medicalProject.Member.Import" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="Panel1" runat="server">
    <br />
       <br />
       <br />
       <br />
    <div class="header_02">Import Excel Sheet Data!</div>
      
  <br />




   <div>
     <table style="width: 50%;">
        <tr>
            <td>
                <b>Browse</b></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Upload Excel" Font-Size="Small" 
                    ForeColor="Red" ToolTip="Upload Excel" ValidationGroup="a">Upload Excel</asp:RequiredFieldValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
            <td>
                <asp:Button ID="btnUpload" runat="server" Text="Upload Data" 
                    ValidationGroup="a" onclick="btnUpload_Click" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    </div>
    <div style="height:250px; width:auto; overflow:auto">
<asp:GridView ID="GridView1" runat="server">

</asp:GridView>




            </div>




    <br />
    </asp:Panel>

</asp:Content>
