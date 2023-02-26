<%@ Page Title="Department" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Department.aspx.cs" Inherits="CW_19031004.Department" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>This page contains department details.</h3>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Department ID"></asp:Label>
        <asp:TextBox ID="Dept_ID" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label2" runat="server" Text="Department Name"></asp:Label>
    <asp:TextBox ID="Dept_Name" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Save_Dept" runat="server" OnClick="Save_Dept_Click" Text="Save" />
</p>
<p>
    <asp:GridView ID="Department_details_view" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPARTMENT_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" ReadOnly="True" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="DEPARTMENT_NAME" HeaderText="DEPARTMENT_NAME" SortExpression="DEPARTMENT_NAME" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;DEPARTMENT&quot; WHERE &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND &quot;DEPARTMENT_NAME&quot; = :original_DEPARTMENT_NAME" InsertCommand="INSERT INTO &quot;DEPARTMENT&quot; (&quot;DEPARTMENT_ID&quot;, &quot;DEPARTMENT_NAME&quot;) VALUES (:DEPARTMENT_ID, :DEPARTMENT_NAME)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPARTMENT&quot;" UpdateCommand="UPDATE &quot;DEPARTMENT&quot; SET &quot;DEPARTMENT_NAME&quot; = :DEPARTMENT_NAME WHERE &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND &quot;DEPARTMENT_NAME&quot; = :original_DEPARTMENT_NAME">
        <DeleteParameters>
            <asp:Parameter Name="original_DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="original_DEPARTMENT_NAME" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DEPARTMENT_NAME" Type="String" />
            <asp:Parameter Name="original_DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="original_DEPARTMENT_NAME" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
