<%@ Page Title="Teacher_Module" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Teacher_Module.aspx.cs" Inherits="CW_19031004.Teacher_Module" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your Teacher_Module page.</h3>
<p>
    <asp:Label ID="Label1" runat="server" Text="Teacher name"></asp:Label>
    <asp:DropDownList ID="Teacher_drop_name" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TEACHER_NAME" DataValueField="TEACHER_ID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER&quot;"></asp:SqlDataSource>
</p>
<p>&nbsp;</p>
<p>
    <asp:GridView ID="teacher_modul_view" runat="server" AutoGenerateColumns="False" DataKeyNames="TEACHER_ID,MODULE_ID" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="TEACHER_ID" HeaderText="TEACHER_ID" ReadOnly="True" SortExpression="TEACHER_ID" />
            <asp:BoundField DataField="MODULE_ID" HeaderText="MODULE_ID" ReadOnly="True" SortExpression="MODULE_ID" />
            <asp:BoundField DataField="WORKING_HOUR_PER_DAY" HeaderText="WORKING_HOUR_PER_DAY" SortExpression="WORKING_HOUR_PER_DAY" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHER_MODULE&quot; WHERE (&quot;TEACHER_ID&quot; = :TEACHER_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="Teacher_drop_name" Name="TEACHER_ID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</p>
    </asp:Content>
