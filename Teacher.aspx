<%@ Page Title="Teacher" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher.aspx.cs" Inherits="CW_19031004.Teacher" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This page contains teacher details.</h3>
<p>
    <asp:Label ID="Label5" runat="server" Text="Teacher ID"></asp:Label>
    <asp:TextBox ID="Tea_ID" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label6" runat="server" Text="Teacher Name"></asp:Label>
    <asp:TextBox ID="Tea_name" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label7" runat="server" Text="Department ID"></asp:Label>
    <asp:TextBox ID="Tea_d_id" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label8" runat="server" Text="Address 1"></asp:Label>
    <asp:TextBox ID="Tea_a1" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label9" runat="server" Text="Address 2"></asp:Label>
    <asp:TextBox ID="Tea_a2" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label10" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="Tea_email" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Save_tea" runat="server" Text="Save" OnClick="Save_tea_Click" />
</p>
<p>
    <asp:GridView ID="Tea_view" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
            <asp:BoundField DataField="TEACHER_NAME" HeaderText="TEACHER_NAME" SortExpression="TEACHER_NAME" />
            <asp:BoundField DataField="DEPARTMENT_ID" HeaderText="DEPARTMENT_ID" SortExpression="DEPARTMENT_ID" />
            <asp:BoundField DataField="ADDRESS_ID_1" HeaderText="ADDRESS_ID_1" SortExpression="ADDRESS_ID_1" />
            <asp:BoundField DataField="ADDRESS_ID_2" HeaderText="ADDRESS_ID_2" SortExpression="ADDRESS_ID_2" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;TEACHER&quot; WHERE &quot;TEACHER_ID&quot; = :original_TEACHER_ID AND &quot;TEACHER_NAME&quot; = :original_TEACHER_NAME AND &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND &quot;ADDRESS_ID_1&quot; = :original_ADDRESS_ID_1 AND ((&quot;ADDRESS_ID_2&quot; = :original_ADDRESS_ID_2) OR (&quot;ADDRESS_ID_2&quot; IS NULL AND :original_ADDRESS_ID_2 IS NULL)) AND ((&quot;EMAIL&quot; = :original_EMAIL) OR (&quot;EMAIL&quot; IS NULL AND :original_EMAIL IS NULL))" InsertCommand="INSERT INTO &quot;TEACHER&quot; (&quot;TEACHER_ID&quot;, &quot;TEACHER_NAME&quot;, &quot;DEPARTMENT_ID&quot;, &quot;ADDRESS_ID_1&quot;, &quot;ADDRESS_ID_2&quot;, &quot;EMAIL&quot;) VALUES (:TEACHER_ID, :TEACHER_NAME, :DEPARTMENT_ID, :ADDRESS_ID_1, :ADDRESS_ID_2, :EMAIL)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;" UpdateCommand="UPDATE &quot;TEACHER&quot; SET &quot;TEACHER_NAME&quot; = :TEACHER_NAME, &quot;DEPARTMENT_ID&quot; = :DEPARTMENT_ID, &quot;ADDRESS_ID_1&quot; = :ADDRESS_ID_1, &quot;ADDRESS_ID_2&quot; = :ADDRESS_ID_2, &quot;EMAIL&quot; = :EMAIL WHERE &quot;TEACHER_ID&quot; = :original_TEACHER_ID AND &quot;TEACHER_NAME&quot; = :original_TEACHER_NAME AND &quot;DEPARTMENT_ID&quot; = :original_DEPARTMENT_ID AND &quot;ADDRESS_ID_1&quot; = :original_ADDRESS_ID_1 AND ((&quot;ADDRESS_ID_2&quot; = :original_ADDRESS_ID_2) OR (&quot;ADDRESS_ID_2&quot; IS NULL AND :original_ADDRESS_ID_2 IS NULL)) AND ((&quot;EMAIL&quot; = :original_EMAIL) OR (&quot;EMAIL&quot; IS NULL AND :original_EMAIL IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_TEACHER_ID" Type="String" />
            <asp:Parameter Name="original_TEACHER_NAME" Type="String" />
            <asp:Parameter Name="original_DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="original_ADDRESS_ID_1" Type="String" />
            <asp:Parameter Name="original_ADDRESS_ID_2" Type="String" />
            <asp:Parameter Name="original_EMAIL" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TEACHER_ID" Type="String" />
            <asp:Parameter Name="TEACHER_NAME" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="ADDRESS_ID_1" Type="String" />
            <asp:Parameter Name="ADDRESS_ID_2" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TEACHER_NAME" Type="String" />
            <asp:Parameter Name="DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="ADDRESS_ID_1" Type="String" />
            <asp:Parameter Name="ADDRESS_ID_2" Type="String" />
            <asp:Parameter Name="EMAIL" Type="String" />
            <asp:Parameter Name="original_TEACHER_ID" Type="String" />
            <asp:Parameter Name="original_TEACHER_NAME" Type="String" />
            <asp:Parameter Name="original_DEPARTMENT_ID" Type="String" />
            <asp:Parameter Name="original_ADDRESS_ID_1" Type="String" />
            <asp:Parameter Name="original_ADDRESS_ID_2" Type="String" />
            <asp:Parameter Name="original_EMAIL" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
