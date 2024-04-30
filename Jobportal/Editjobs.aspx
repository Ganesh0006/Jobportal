<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Editjobs.aspx.cs" Inherits="Jobportal.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 770px;
        }
        .auto-style4 {
            width: 559px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <p>
        Edit Jobs</p>
    <p>
        &nbsp;</p>
    <table cellpadding="5" cellspacing="5" border="1" class="auto-style1">
        <tr>
            <td align="right" class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Iblerror" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style4">Jobid:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtJobid" runat="server" ></asp:TextBox> <%--OnTextChanged="txtJobid_TextChanged"--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtJobid"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style4">Job Title:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtJobTitle" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtJobTitle"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style4">No Of Post:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtNoofpost" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtNoofpost"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style4">Skills:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtskills" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtskills"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style4">Qualification Requried:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtQualificationRequries" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtQualificationRequries"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style4">Experience Requried:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtExpRequried" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtExpRequried"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style4">Last Date For Apply:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtLAstdate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtLAstdate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style4">&nbsp;</td>
            <td class="auto-style3">
                <asp:Button ID="btnupdate" runat="server" Text="Update" Width="211px" OnClick="btnSubmit_Click" />
            </td>
        </tr>
        </table>




</asp:Content>
