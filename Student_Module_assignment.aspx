<%@ Page Title="Student_Module_assignment" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student_Module_assignment.aspx.cs" Inherits="CW_19031004.Student_Module_assignment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This page contains the result of students in all modules.</h3>
<p>
    <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
    <asp:DropDownList ID="St_drop_name" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="STUDENT_NAME" DataValueField="STUDENT_ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
</p>
<p>&nbsp;</p>
<p>
    <asp:GridView ID="St_asi_view" runat="server" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID,MODULE_ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
            <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" ReadOnly="True" SortExpression="MODULE_ID" />
            <asp:BoundField DataField="ASSIGNMENT_1_GRADE" HeaderText="ASSIGNMENT_1_GRADE" SortExpression="ASSIGNMENT_1_GRADE" />
            <asp:BoundField DataField="ASSIGNMENT_2_GRADE" HeaderText="ASSIGNMENT_2_GRADE" SortExpression="ASSIGNMENT_2_GRADE" />
            <asp:BoundField DataField="ASSIGNMENT_3_GRADE" HeaderText="ASSIGNMENT_3_GRADE" SortExpression="ASSIGNMENT_3_GRADE" />
            <asp:BoundField DataField="MODULE_TOTALGRADE" HeaderText="MODULE_TOTALGRADE" SortExpression="MODULE_TOTALGRADE" />
            <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT_MODULEASSIGNMENT&quot; WHERE (&quot;STUDENT_ID&quot; = :STUDENT_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="St_drop_name" Name="STUDENT_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
    </asp:Content>
