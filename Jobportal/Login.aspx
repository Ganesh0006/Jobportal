<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Jobportal.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 346px;
        }
        .auto-style3 {
            width: 346px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table width="100%"  border="0">
        
            <tr><td class="auto-style2">&nbsp;</td><td>
                <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#FF3300" Text="JOB SEEKER"></asp:Label>
                <br />
                </td></tr>
        
            <tr><td class="auto-style2">LoginId:</td><td><asp:TextBox ID="txtLogin" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLogin" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td></tr>
            <tr><td class="auto-style2">Password:</td><td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Required" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td></tr>
             <tr><td class="auto-style3"><asp:CheckBox ID="chkRM" runat="server" /></td><td class="auto-style4"><asp:Label ID="Label1" runat="server" Text="Remember me"></asp:Label></td></tr>
              <tr><td class="auto-style2"><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td></tr>
         <tr><td class="auto-style2">&nbsp;</td></tr>
         <tr><td class="auto-style2"><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Signup.aspx">New User</asp:HyperLink></td></tr>
         

    </table>

</asp:Content>
