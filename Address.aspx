<%@ Page Title="Address" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="CW_19031004.Address" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This page contains address details.</h3>
    <address>
        <asp:Label ID="Label1" runat="server" Text="Address ID"></asp:Label>
        <asp:TextBox ID="Addr_ID" runat="server"></asp:TextBox>
    </address>
    <address>
        <asp:Label ID="Label2" runat="server" Text="Country"></asp:Label>
        <asp:TextBox ID="Addr_Country" runat="server"></asp:TextBox>
    </address>
    <address>
        <asp:Label ID="Label3" runat="server" Text="City"></asp:Label>
        <asp:TextBox ID="Addr_City" runat="server"></asp:TextBox>
    </address>
    <address>
        <asp:Label ID="Label4" runat="server" Text="Street"></asp:Label>
        <asp:TextBox ID="Addr_Street" runat="server"></asp:TextBox>
    </address>
    <address>
        <asp:Button ID="Addr_save" runat="server" OnClick="Addr_save_Click" Text="Save" />
    </address>

    <address>
        <asp:GridView ID="Address_details_view" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ADDRESS_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ADDRESS_ID" HeaderText="ADDRESS_ID" ReadOnly="True" SortExpression="ADDRESS_ID" />
                <asp:BoundField DataField="COUNTRY" HeaderText="COUNTRY" SortExpression="COUNTRY" />
                <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
                <asp:BoundField DataField="STREET" HeaderText="STREET" SortExpression="STREET" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ADDRESS&quot; WHERE &quot;ADDRESS_ID&quot; = :original_ADDRESS_ID AND &quot;COUNTRY&quot; = :original_COUNTRY AND &quot;CITY&quot; = :original_CITY AND &quot;STREET&quot; = :original_STREET" InsertCommand="INSERT INTO &quot;ADDRESS&quot; (&quot;ADDRESS_ID&quot;, &quot;COUNTRY&quot;, &quot;CITY&quot;, &quot;STREET&quot;) VALUES (:ADDRESS_ID, :COUNTRY, :CITY, :STREET)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ADDRESS&quot;" UpdateCommand="UPDATE &quot;ADDRESS&quot; SET &quot;COUNTRY&quot; = :COUNTRY, &quot;CITY&quot; = :CITY, &quot;STREET&quot; = :STREET WHERE &quot;ADDRESS_ID&quot; = :original_ADDRESS_ID AND &quot;COUNTRY&quot; = :original_COUNTRY AND &quot;CITY&quot; = :original_CITY AND &quot;STREET&quot; = :original_STREET">
            <DeleteParameters>
                <asp:Parameter Name="original_ADDRESS_ID" Type="String" />
                <asp:Parameter Name="original_COUNTRY" Type="String" />
                <asp:Parameter Name="original_CITY" Type="String" />
                <asp:Parameter Name="original_STREET" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ADDRESS_ID" Type="String" />
                <asp:Parameter Name="COUNTRY" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="COUNTRY" Type="String" />
                <asp:Parameter Name="CITY" Type="String" />
                <asp:Parameter Name="STREET" Type="String" />
                <asp:Parameter Name="original_ADDRESS_ID" Type="String" />
                <asp:Parameter Name="original_COUNTRY" Type="String" />
                <asp:Parameter Name="original_CITY" Type="String" />
                <asp:Parameter Name="original_STREET" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </address>
</asp:Content>
