<%@ Page Title="Student_Fee_Payemnt" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student_Fee_Payment.aspx.cs" Inherits="CW_19031004.Student_Fee_Payemnt" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>This page contains fee information of students.</h3>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Student Name"></asp:Label>
        <asp:DropDownList ID="St_pay_fee_name" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="STUDENT_Name" DataValueField="STUDENT_ID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STUDENT&quot;"></asp:SqlDataSource>
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:GridView ID="St_fee_pay_view" runat="server" AutoGenerateColumns="False" DataKeyNames="PAYMENT_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="PAYMENT_ID" HeaderText="PAYMENT_ID" ReadOnly="True" SortExpression="PAYMENT_ID" />
                <asp:BoundField DataField="BILL_NO" HeaderText="BILL_NO" SortExpression="BILL_NO" />
                <asp:BoundField DataField="STUDENT_ID" HeaderText="STUDENT_ID" SortExpression="STUDENT_ID" />
                <asp:BoundField DataField="PAY_AMOUNT" HeaderText="PAY_AMOUNT" SortExpression="PAY_AMOUNT" />
                <asp:BoundField DataField="PAY_DATE" HeaderText="PAY_DATE" SortExpression="PAY_DATE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PAYMENT&quot; WHERE (&quot;STUDENT_ID&quot; = :STUDENT_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="St_pay_fee_name" Name="STUDENT_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </asp:Content>
