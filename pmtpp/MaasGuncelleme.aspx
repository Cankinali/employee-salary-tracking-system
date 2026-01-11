<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaasGuncelleme.aspx.cs" Inherits="pmtp2.MaasGuncelleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>
Updating or Deleting Staff Salary</h2>

&nbsp;<br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [empl_id], [empl_name] FROM [employees]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="wage_id" DataSourceID="SqlDataSource23" Height="233px" Width="716px" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="wage_id" HeaderText="wage_id" InsertVisible="False" ReadOnly="True" SortExpression="wage_id" />
                <asp:BoundField DataField="empl_id" HeaderText="empl_id" SortExpression="empl_id" />
                <asp:BoundField DataField="wage_date" HeaderText="wage_date" SortExpression="wage_date" />
                <asp:BoundField DataField="wage_amount" HeaderText="wage_amount" SortExpression="wage_amount" />
                <asp:BoundField DataField="wage_commission" HeaderText="wage_commission" SortExpression="wage_commission" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button OnClientClick="window.close()" ID="Button1" runat="server" style="text-align: center" Text="Close page" Width="212px" />
        <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [wage_id], [empl_id], [wage_date], [wage_amount], [wage_commission] FROM [wages]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [wages] WHERE [wage_id] = @original_wage_id AND (([empl_id] = @original_empl_id) OR ([empl_id] IS NULL AND @original_empl_id IS NULL)) AND (([wage_date] = @original_wage_date) OR ([wage_date] IS NULL AND @original_wage_date IS NULL)) AND (([wage_amount] = @original_wage_amount) OR ([wage_amount] IS NULL AND @original_wage_amount IS NULL)) AND (([wage_commission] = @original_wage_commission) OR ([wage_commission] IS NULL AND @original_wage_commission IS NULL))" InsertCommand="INSERT INTO [wages] ([empl_id], [wage_date], [wage_amount], [wage_commission]) VALUES (@empl_id, @wage_date, @wage_amount, @wage_commission)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [wages] SET [empl_id] = @empl_id, [wage_date] = @wage_date, [wage_amount] = @wage_amount, [wage_commission] = @wage_commission WHERE [wage_id] = @original_wage_id AND (([empl_id] = @original_empl_id) OR ([empl_id] IS NULL AND @original_empl_id IS NULL)) AND (([wage_date] = @original_wage_date) OR ([wage_date] IS NULL AND @original_wage_date IS NULL)) AND (([wage_amount] = @original_wage_amount) OR ([wage_amount] IS NULL AND @original_wage_amount IS NULL)) AND (([wage_commission] = @original_wage_commission) OR ([wage_commission] IS NULL AND @original_wage_commission IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_wage_id" Type="Int32" />
                <asp:Parameter Name="original_empl_id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_wage_date" />
                <asp:Parameter Name="original_wage_amount" Type="String" />
                <asp:Parameter Name="original_wage_commission" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="empl_id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="wage_date" />
                <asp:Parameter Name="wage_amount" Type="String" />
                <asp:Parameter Name="wage_commission" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="empl_id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="wage_date" />
                <asp:Parameter Name="wage_amount" Type="String" />
                <asp:Parameter Name="wage_commission" Type="String" />
                <asp:Parameter Name="original_wage_id" Type="Int32" />
                <asp:Parameter Name="original_empl_id" Type="Int32" />
                <asp:Parameter DbType="Date" Name="original_wage_date" />
                <asp:Parameter Name="original_wage_amount" Type="String" />
                <asp:Parameter Name="original_wage_commission" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
