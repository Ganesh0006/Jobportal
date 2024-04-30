<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Jobportal.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <p>
    please enter your Login id we will mail you your account information (password)at your Mail Id
</p>
<p>
    <asp:Label ID="Iblerror" runat="server" ForeColor="Red"></asp:Label>
</p>
<p>
    Enter your Login id:<asp:TextBox ID="txtmailid" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmailid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="submit" />
</p>




</asp:Content>
