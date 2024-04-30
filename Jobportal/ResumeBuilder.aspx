<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="ResumeBuilder.aspx.cs" Inherits="Jobportal.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            width: 691px;
        }
        .auto-style3 {
            height: 37px;
            width: 238px;
        }
        .auto-style4 {
            width: 780px;
            height: 37px;
        }
        .auto-style5 {
            width: 780px;
        }
        .auto-style6 {
            width: 238px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <table widt="100%" border="1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td>&quot;Name:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtName" runat="server" CssClass="txtbox" Width="268px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtName" ErrorMessage="Name Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address:</td>
            <td class="auto-style2">
                <asp:TextBox runat="server" Height="94px" TextMode="MultiLine" Width="268px" ID="txtAddress" CssClass="txtbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&quot;Contact Number:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtContactNo" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtContactNo" ErrorMessage="Contact Number Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&quot;Mail Id:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtMailId" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMailId" ErrorMessage="Mail Id Requried" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        </table>

    <table border="0">
        <tr>
            <td class="auto-style6" >&nbsp;</td>
            <td class="auto-style5">QUALIFICATION INFORMATION</td>
        </tr>
        <tr>
            <td class="auto-style6">10th:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtQualification" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox>
                (You mention like:percentage or cgpa)</td>
        </tr>
        <tr>
            <td class="auto-style6">11th:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtQualification0" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox>
                (You mention like:percentage or cgpa)</td>
        </tr>
        <tr>
            <td class="auto-style3">12th:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtQualification1" runat="server" Width="266px" CssClass="txtbox"></asp:TextBox>
                (You mention like:percentage or cgpa)</td>
        </tr>
        <tr>
            <td class="auto-style6">Graduation:</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtQualification2" runat="server" Width="267px" CssClass="txtbox"></asp:TextBox>
                (You mention like degree and,percentage or cgpa)</td>
        </tr>
        <tr>
            <td class="auto-style6">Select your Resume file</td>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUploadResume" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUploadResume" ErrorMessage="please upload a resume" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblfileError" runat="server" ForeColor="Red" Text="Please select a .doc/docx/.pdf/.txt file only."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="txtbox" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>




</asp:Content>
