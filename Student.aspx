<%@ Page Title="Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="CW_19031004.Student" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This page contains Student details.</h3>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Student ID"></asp:Label>
        <asp:TextBox ID="St_ID" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
        <asp:TextBox ID="St_Name" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Address 1"></asp:Label>
        <asp:TextBox ID="St_a1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Address 2"></asp:Label>
        <asp:TextBox ID="St_a2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="save_st" runat="server" OnClick="save_st_Click" Text="save" />
    </p>
    <p>
        <asp:GridView ID="st_view" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="STUDENT_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" ReadOnly="True" SortExpression="STUDENT_ID" />
                <asp:BoundField DataField="STUDENT_NAME" HeaderText="STUDENT_NAME" SortExpression="STUDENT_NAME" />
                <asp:BoundField DataField="ADDRESS_ID_1" HeaderText="ADDRESS_ID_1" SortExpression="ADDRESS_ID_1" />
                <asp:BoundField DataField="ADDRESS_ID_2" HeaderText="ADDRESS_ID_2" SortExpression="ADDRESS_ID_2" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STUDENT&quot; WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;STUDENT_NAME&quot; = :original_STUDENT_NAME AND &quot;ADDRESS_ID_1&quot; = :original_ADDRESS_ID_1 AND ((&quot;ADDRESS_ID_2&quot; = :original_ADDRESS_ID_2) OR (&quot;ADDRESS_ID_2&quot; IS NULL AND :original_ADDRESS_ID_2 IS NULL))" InsertCommand="INSERT INTO &quot;STUDENT&quot; (&quot;STUDENT_ID&quot;, &quot;STUDENT_NAME&quot;, &quot;ADDRESS_ID_1&quot;, &quot;ADDRESS_ID_2&quot;) VALUES (:STUDENT_ID, :STUDENT_NAME, :ADDRESS_ID_1, :ADDRESS_ID_2)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;" UpdateCommand="UPDATE &quot;STUDENT&quot; SET &quot;STUDENT_NAME&quot; = :STUDENT_NAME, &quot;ADDRESS_ID_1&quot; = :ADDRESS_ID_1, &quot;ADDRESS_ID_2&quot; = :ADDRESS_ID_2 WHERE &quot;STUDENT_ID&quot; = :original_STUDENT_ID AND &quot;STUDENT_NAME&quot; = :original_STUDENT_NAME AND &quot;ADDRESS_ID_1&quot; = :original_ADDRESS_ID_1 AND ((&quot;ADDRESS_ID_2&quot; = :original_ADDRESS_ID_2) OR (&quot;ADDRESS_ID_2&quot; IS NULL AND :original_ADDRESS_ID_2 IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_STUDENT_ID" Type="String" />
                <asp:Parameter Name="original_STUDENT_NAME" Type="String" />
                <asp:Parameter Name="original_ADDRESS_ID_1" Type="String" />
                <asp:Parameter Name="original_ADDRESS_ID_2" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="STUDENT_ID" Type="String" />
                <asp:Parameter Name="STUDENT_NAME" Type="String" />
                <asp:Parameter Name="ADDRESS_ID_1" Type="String" />
                <asp:Parameter Name="ADDRESS_ID_2" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="STUDENT_NAME" Type="String" />
                <asp:Parameter Name="ADDRESS_ID_1" Type="String" />
                <asp:Parameter Name="ADDRESS_ID_2" Type="String" />
                <asp:Parameter Name="original_STUDENT_ID" Type="String" />
                <asp:Parameter Name="original_STUDENT_NAME" Type="String" />
                <asp:Parameter Name="original_ADDRESS_ID_1" Type="String" />
                <asp:Parameter Name="original_ADDRESS_ID_2" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
