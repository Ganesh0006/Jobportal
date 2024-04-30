<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Jobportal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style3">
        <tr>
            <td class="auto-style4">
                <asp:Image ID="Image1" runat="server" Height="500px" ImageUrl="~/Images/3.jpg" Width="343px" /></td>
                <td align="center">JG JOB PORTAL<br />
                        <br />
                        <b>IND HEADQUATERS</b><br />
                        <br />
                        <i>TAMILNADU<br />
                        <br />
                        CHENNIAI,REDHIILS<br />
                        <br />
                        GNT Road Near : SKLS Galaxy Mall 
                        <br />
                        <br />
                        jg@helpdesk.com</i><br />
                        +91 9087654321<br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <b>US BRANCH</b><br />
                        <br />
                        <i>65 Ganesh Post Rd<br />
                        <br />
                        Marlborough, MA 01752</i><br />
                        <br />
                        2-345-678-9012<br />
                        <a href="mailto:jg@portal.com">jg@portal.com</a><br />
                        <br />
                    </td>
                </tr>

        <%--<tr><td><b><asp:Label ID="Label1" runat="server" Text="LETS CHAT"></asp:Label></b></td></tr>

        <tr><td>&nbsp;</td><td>
            <asp:Label ID="lblerror" runat="server" ForeColor="Red" Text="Label"></asp:Label>
            </td></tr>

        <tr><td>Name:</td><td><asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>Contact Number:</td><td><asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtContactNo" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td>Mail Id:</td><td><asp:TextBox ID="TextMailId" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextMailId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextMailId" ErrorMessage="Incorrect Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td></tr>
        <tr><td>Query:</td><td><asp:TextBox ID="txtQuery" runat="server" Height="63px" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtQuery" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td></tr>
        <tr><td><asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" /></td></tr>--%>
    </table>

</asp:Content>
