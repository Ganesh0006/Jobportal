<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="JobDetails.aspx.cs" Inherits="Jobportal.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    

    <asp:DetailsView ID="DetailsView1" runat="server" Height="104px" Width="1163px" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Jobid" HeaderText="Job Id" SortExpression="Jobid" />
            <asp:BoundField DataField="JobTitle" HeaderText="Job Title" SortExpression="JobTitle" />
            <asp:BoundField DataField="Noofpost" HeaderText="No Of Post" SortExpression="Noofpost" />
            <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills" />
            <asp:BoundField DataField="QualificationRequries" HeaderText="Qualification Requried" SortExpression="QualificationRequries" />
            <asp:BoundField DataField="ExperienceRequried" HeaderText="Experience Requried" SortExpression="ExperienceRequried" />
            <asp:BoundField DataField="Lastdate" HeaderText="Last Date For Apply" SortExpression="Lastdate" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />


    </asp:DetailsView>
    
    

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:portalConnectionString9 %>" SelectCommand="SELECT * FROM [tbljob] WHERE ([Jobid] = @Jobid)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Jobid" QueryStringField="id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
    <br />
    <asp:Button ID="btnApplyNow" runat="server" OnClick="btnApplyNow_Click" Text="Apply Now" />
    
    

</asp:Content>
