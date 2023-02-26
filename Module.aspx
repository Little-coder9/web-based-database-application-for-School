<%@ Page Title="Module" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Module.aspx.cs" Inherits="CW_19031004.Module" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This page contains Module details.</h3>
<p>
    <asp:Label ID="Label5" runat="server" Text="Module ID"></asp:Label>
    <asp:TextBox ID="Mo_ID" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label6" runat="server" Text="Module Name"></asp:Label>
    <asp:TextBox ID="Mo_Name" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label7" runat="server" Text="Credit hour"></asp:Label>
    <asp:TextBox ID="Mo_cr" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label8" runat="server" Text="Assignment 1"></asp:Label>
    <asp:TextBox ID="Mo_asi1" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label9" runat="server" Text="Assignment 2"></asp:Label>
    <asp:TextBox ID="Mo_asi2" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Label ID="Label10" runat="server" Text="Assignment 3"></asp:Label>
    <asp:TextBox ID="Mo_asi3" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="mo_save" runat="server" Text="save" OnClick="mo_save_Click" />
</p>
<p>
    <asp:GridView ID="Mo_view" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MODULE_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" ReadOnly="True" SortExpression="MODULE_ID" />
            <asp:BoundField DataField="MODULE_NAME" HeaderText="MODULE_NAME" SortExpression="MODULE_NAME" />
            <asp:BoundField DataField="CREDIT_HOUR" HeaderText="CREDIT_HOUR" SortExpression="CREDIT_HOUR" />
            <asp:BoundField DataField="ASSIGNMENT_ID_1" HeaderText="ASSIGNMENT_ID_1" SortExpression="ASSIGNMENT_ID_1" />
            <asp:BoundField DataField="ASSIGNMENT_ID_2" HeaderText="ASSIGNMENT_ID_2" SortExpression="ASSIGNMENT_ID_2" />
            <asp:BoundField DataField="ASSIGNMENT_ID_3" HeaderText="ASSIGNMENT_ID_3" SortExpression="ASSIGNMENT_ID_3" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;MODULE&quot; WHERE &quot;MODULE_ID&quot; = :original_MODULE_ID AND &quot;MODULE_NAME&quot; = :original_MODULE_NAME AND &quot;CREDIT_HOUR&quot; = :original_CREDIT_HOUR AND &quot;ASSIGNMENT_ID_1&quot; = :original_ASSIGNMENT_ID_1 AND &quot;ASSIGNMENT_ID_2&quot; = :original_ASSIGNMENT_ID_2 AND &quot;ASSIGNMENT_ID_3&quot; = :original_ASSIGNMENT_ID_3" InsertCommand="INSERT INTO &quot;MODULE&quot; (&quot;MODULE_ID&quot;, &quot;MODULE_NAME&quot;, &quot;CREDIT_HOUR&quot;, &quot;ASSIGNMENT_ID_1&quot;, &quot;ASSIGNMENT_ID_2&quot;, &quot;ASSIGNMENT_ID_3&quot;) VALUES (:MODULE_ID, :MODULE_NAME, :CREDIT_HOUR, :ASSIGNMENT_ID_1, :ASSIGNMENT_ID_2, :ASSIGNMENT_ID_3)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;MODULE&quot;" UpdateCommand="UPDATE &quot;MODULE&quot; SET &quot;MODULE_NAME&quot; = :MODULE_NAME, &quot;CREDIT_HOUR&quot; = :CREDIT_HOUR, &quot;ASSIGNMENT_ID_1&quot; = :ASSIGNMENT_ID_1, &quot;ASSIGNMENT_ID_2&quot; = :ASSIGNMENT_ID_2, &quot;ASSIGNMENT_ID_3&quot; = :ASSIGNMENT_ID_3 WHERE &quot;MODULE_ID&quot; = :original_MODULE_ID AND &quot;MODULE_NAME&quot; = :original_MODULE_NAME AND &quot;CREDIT_HOUR&quot; = :original_CREDIT_HOUR AND &quot;ASSIGNMENT_ID_1&quot; = :original_ASSIGNMENT_ID_1 AND &quot;ASSIGNMENT_ID_2&quot; = :original_ASSIGNMENT_ID_2 AND &quot;ASSIGNMENT_ID_3&quot; = :original_ASSIGNMENT_ID_3">
        <DeleteParameters>
            <asp:Parameter Name="original_MODULE_ID" Type="String" />
            <asp:Parameter Name="original_MODULE_NAME" Type="String" />
            <asp:Parameter Name="original_CREDIT_HOUR" Type="Decimal" />
            <asp:Parameter Name="original_ASSIGNMENT_ID_1" Type="String" />
            <asp:Parameter Name="original_ASSIGNMENT_ID_2" Type="String" />
            <asp:Parameter Name="original_ASSIGNMENT_ID_3" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MODULE_ID" Type="String" />
            <asp:Parameter Name="MODULE_NAME" Type="String" />
            <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
            <asp:Parameter Name="ASSIGNMENT_ID_1" Type="String" />
            <asp:Parameter Name="ASSIGNMENT_ID_2" Type="String" />
            <asp:Parameter Name="ASSIGNMENT_ID_3" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MODULE_NAME" Type="String" />
            <asp:Parameter Name="CREDIT_HOUR" Type="Decimal" />
            <asp:Parameter Name="ASSIGNMENT_ID_1" Type="String" />
            <asp:Parameter Name="ASSIGNMENT_ID_2" Type="String" />
            <asp:Parameter Name="ASSIGNMENT_ID_3" Type="String" />
            <asp:Parameter Name="original_MODULE_ID" Type="String" />
            <asp:Parameter Name="original_MODULE_NAME" Type="String" />
            <asp:Parameter Name="original_CREDIT_HOUR" Type="Decimal" />
            <asp:Parameter Name="original_ASSIGNMENT_ID_1" Type="String" />
            <asp:Parameter Name="original_ASSIGNMENT_ID_2" Type="String" />
            <asp:Parameter Name="original_ASSIGNMENT_ID_3" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>
    </asp:Content>
