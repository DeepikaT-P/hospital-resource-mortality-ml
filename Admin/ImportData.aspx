<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="ImportData.aspx.cs" Inherits="medicalProject.Admin.ImportData" %>
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
    <div style="height:550px; width:auto; overflow:auto">
<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#336666" 
            BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">

    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />

</asp:GridView>




            </div>




    <br />
    </asp:Panel>

</asp:Content>
