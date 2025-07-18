<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterpage.Master" AutoEventWireup="true" CodeBehind="AddCities.aspx.cs" Inherits="medicalProject.Admin.AddCities" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:Panel ID="Panel1" runat="server">
    <br />
       <br />
       <br />
       <br />
    <div class="header_02">Add Cities!</div>

   
   <br />

   <marquee scrolldelay="150" behavior="alternate">
          <img src="../images/5.jpg" width="160" height="100" alt="" /> &nbsp
          <img src="../images/3.jpg" width="160" height="100" alt="" /> &nbsp
         <img src="../images/4.jpg" width="160" height="100" alt="" /> &nbsp
          <img src="../images/1.jpg" width="160" height="100" alt="" /></marquee>
           <br />
          

             <table style="width:46%;">
              <tr>
                  <td class="style1">
                      <table style="width: 100%;">
                         
                          <tr>
                              <td>
                                  &nbsp;
                              </td>
                              <td>
                                  <fieldset>
                                      <legend>Cities</legend>
                                      <table align="center" style="width: 100%;">
                                          <tr>
                                              <td class="style6">
                                                  &nbsp;</td>
                                              <td>
                                                  &nbsp;</td>
                                              <td>
                                                  &nbsp;</td>
                                          </tr>
                                          <tr>
                                              <td class="style6">
                                                  <strong>Enter City</strong></td>
                                              <td>
                                                  <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                                              </td>
                                              <td>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                      ControlToValidate="txtCity" CssClass="validation" ErrorMessage="*" 
                                                      ToolTip="Enter City" ValidationGroup="a">Enter City</asp:RequiredFieldValidator>
                                              </td>
                                          </tr>
                                          <tr>
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
                                              <td>
                                                  <asp:Button ID="btnCity" runat="server" onclick="btnCity_Click" Text="Add" 
                                                      ValidationGroup="a" Width="75px" />
                                              </td>
                                              <td>
                                                  &nbsp;</td>
                                          </tr>
                                          <tr>
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
                          <tr>
                              <td>
                                  &nbsp;
                              </td>
                              <td>
                              </td>
                              <td>
                                  &nbsp;
                              </td>
                          </tr>
                      </table>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
              <tr>
                  <td class="style1">
                      <table style="width: 100%;">
                          <tr>
                              <td class="style9">
                                   <h2 class="title"><span>View Existing Cities</span></h2></td>
                          </tr>
                          <tr>
                              <td align="center">
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <div style="height:400px; width:auto; overflow:auto">
                                      <asp:Table ID="tblCities" runat="server">
                                      </asp:Table>
                                  </div>
                              </td>
                          </tr>
                          <tr>
                              <td>
                                  &nbsp;</td>
                          </tr>
                      </table>
                  </td>
                  <td>
                      &nbsp;</td>
              </tr>
          </table>
                                        <br />

    <br />
    </asp:Panel>

</asp:Content>
