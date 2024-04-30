<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="adminViewjobs.aspx.cs" Inherits="Jobportal.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <p>
        <center><asp:Label ID="Label3" runat="server" ForeColor="Red" Text="View Job"></asp:Label></center>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource2" Width="1202px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Jobid" HeaderText="Job Id" SortExpression="Jobid" />
            <asp:BoundField DataField="JobTitle" HeaderText="JobTitle" SortExpression="JobTitle" />
            <asp:BoundField DataField="Noofpost" HeaderText="No Of Post" SortExpression="Noofpost" />
            <asp:BoundField DataField="Skills" HeaderText="Skills" SortExpression="Skills" />
            <asp:BoundField DataField="QualificationRequries" HeaderText="Qualification Requried" SortExpression="QualificationRequries" />
            <asp:BoundField DataField="ExperienceRequried" HeaderText="Experience Requried" SortExpression="ExperienceRequried" />
            <asp:BoundField DataField="Lastdate" HeaderText="Last Date For Apply" SortExpression="Lastdate" />
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1"  runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.Jobid","adminViewjobs.aspx?del={0}") %>'>Delete</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>


           


            <asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.Jobid","Editjobs.aspx?edit={0}") %>'>Edit</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>


           


        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:portalConnectionString10 %>" SelectCommand="SELECT * FROM [tbljob]"></asp:SqlDataSource>


</asp:Content>
