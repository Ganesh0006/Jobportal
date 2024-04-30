<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Jobportal.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table>
    <tr><td><asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label></td></tr>




</table>


    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DetailsView ID="DetailsView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" Height="50px" Width="500px" AutoGenerateRows="False" DataSourceID="SqlDataSource2">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <Fields>
                        <asp:BoundField DataField="vName" HeaderText="Name:" SortExpression="vName" />
                        <asp:BoundField DataField="vAddress" HeaderText="Address:" SortExpression="vAddress" />
                        <asp:BoundField DataField="vContactNo" HeaderText="Contact No:" SortExpression="vContactNo" />
                        <asp:BoundField DataField="vMailId" HeaderText="Mail Id:" SortExpression="vMailId" />
                        <asp:BoundField DataField="vQualification" HeaderText="Qualification:" SortExpression="vQualification" />
                        <asp:BoundField DataField="vCountry" HeaderText="Country:" SortExpression="vCountry" />
                    </Fields>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:portalConnectionString %>" SelectCommand="SELECT * FROM [tbluser] WHERE ([vLoginId] = @vLoginId)">
                    <SelectParameters>
                        <asp:SessionParameter Name="vLoginId" SessionField="user" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                
                <br />
                
            </td>
        </tr>
    </table>


</asp:Content>
