<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminAddnewjobs.aspx.cs" Inherits="Jobportal.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 728px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <p>
        &nbsp;</p>
    <table cellpadding="5" cellspacing="5" border="1" class="auto-style1">
        <tr>
            <td align="right" class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Iblerror" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:Label ID="Label2" runat="server" ForeColor="#CC3300" Text="Add New Job"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style2">Job Id:</td>
            <td>
                <asp:TextBox ID="txtJobid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtJobid"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style2">Job Title:</td>
            <td>
                <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtJobTitle"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style2">No Of Post:</td>
            <td>
                <asp:TextBox ID="txtNoofpost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtNoofpost"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style2">Skills:</td>
            <td>
                <asp:TextBox ID="txtskills" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtskills"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style2">Qualification Requried:</td>
            <td>
                <asp:TextBox ID="txtQualificationRequried" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtQualificationRequried"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style2">Experience Requried:</td>
            <td>
                <asp:TextBox ID="txtExpRequried" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtExpRequried"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style2">Last Date For Apply:</td>
            <td>
                <asp:TextBox ID="txtLAstdate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtLAstdate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="211px" OnClick="btnSubmit_Click" />
            </td>
        </tr>
        </table>




</asp:Content>
