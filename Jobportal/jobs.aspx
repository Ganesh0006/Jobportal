<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="jobs.aspx.cs" Inherits="Jobportal.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <p>
    
    <CENTER><asp:Label ID="Label2" runat="server" Text="COMPANY" Font-Bold="True" ForeColor="Red"></asp:Label></CENTER>
    </p>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
    <Columns>
        <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
        <asp:BoundField DataField="Noofpost" HeaderText="No Of Post" SortExpression="Noofpost" />
        <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills" />
        <asp:BoundField DataField="QualificationRequries" HeaderText="Qualification Requried" SortExpression="QualificationRequries" />
        <asp:BoundField DataField="ExperienceRequried" HeaderText="ExperienceRequried" SortExpression="ExperienceRequried" />
        <asp:TemplateField HeaderText="Details">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%# DataBinder.Eval(Container,"DataItem.Jobid","JobDetails.aspx?id={0}") %>'>Details</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:portalConnectionString8 %>" SelectCommand="SELECT * FROM [tbljob] ORDER BY [Jobid]"></asp:SqlDataSource>




    
   

</asp:Content>



<%--    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataSourceID="SqlDataSource1" GridLines="None">
        <Columns>
            <asp:BoundField DataField="JobTitle" HeaderText="Job Title" SortExpression="JobTitle" />
            <asp:BoundField DataField="Noofpost" HeaderText="No Of Post" SortExpression="Noofpost" />
            <asp:BoundField DataField="QualificationRequries" HeaderText="Qualification Requried" SortExpression="QualificationRequries" />
            <asp:BoundField DataField="ExperienceRequried" HeaderText="Experience Requried" SortExpression="ExperienceRequried" />
        </Columns>
        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#594B9C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#33276A" />
    </asp:GridView>


<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:portalConnectionString7 %>" SelectCommand="SELECT * FROM [tbljob] ORDER BY [Jobid]"></asp:SqlDataSource>--%>