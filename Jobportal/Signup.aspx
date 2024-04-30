<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Jobportal.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 691px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table widt="100%" border="1">

        <tr><td>&nbsp;</td><td class="auto-style2">
            <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td></tr>

        <tr><td>&quot;Login Id:</td><td class="auto-style2"><asp:TextBox ID="txtLogin" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLogin" ErrorMessage="Login Id Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>&quot;Password:</td><td class="auto-style2"><asp:TextBox ID="txtPassword" runat="server" Width="268px" CssClass="txtbox" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>&quot;Re-type password:</td><td class="auto-style2"><asp:TextBox ID="txtRePassword" runat="server" Width="263px" CssClass="txtbox" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRePassword" ErrorMessage="Re-type Password Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" ErrorMessage="Password And Re-type Password Must Be Same" ForeColor="Red"></asp:CompareValidator>
            </td></tr>
        <tr><td>&quot;Name:</td><td class="auto-style2"><asp:TextBox ID="txtName" runat="server" CssClass="txtbox" Width="268px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="Name Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>Address:</td><td class="auto-style2"><asp:TextBox runat="server" Height="94px" TextMode="MultiLine" Width="268px" ID="txtAddress" CssClass="txtbox"></asp:TextBox></td></tr>
        <tr><td>&quot;Contact Number:</td><td class="auto-style2"><asp:TextBox ID="txtContactNo" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Contact Number Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>&quot;Mail Id:</td><td class="auto-style2"><asp:TextBox ID="txtMailId" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMailId" ErrorMessage="Mail Id Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>Qualification:</td><td class="auto-style2"><asp:TextBox ID="txtQualification" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox></td></tr>
        <tr><td>Country:</td><td class="auto-style2"><asp:DropDownList ID="ddlCountry" runat="server" CssClass="txtbox">
            <asp:ListItem>INDIA</asp:ListItem>
            <asp:ListItem>USA</asp:ListItem>
            <asp:ListItem>BRAZIL</asp:ListItem>
            <asp:ListItem>NEWSLAND</asp:ListItem>
            </asp:DropDownList></td></tr>
        <tr><td><asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="txtbox" OnClick="btnSubmit_Click" /></td></tr>
       

    </table>


</asp:Content>
