<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelVeriGuncelleme.aspx.cs" Inherits="pmtp2.PersonelVeriGuncelleme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3 style="margin-left: 302px">Updating Personnel Data</h3>
        <asp:Label ID="Label1" runat="server" Text="Personel Seçiniz:"></asp:Label><asp:DropDownList Width="171px" ID="DropDownList1" runat="server" style="margin-left: 193px" DataSourceID="SqlDataSource1" DataTextField="empl_name" DataValueField="empl_name"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [empl_name] FROM [employees]"></asp:SqlDataSource>

        <br />

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="empl_id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="empl_id" HeaderText="empl_id" ReadOnly="True" SortExpression="empl_id" />
                <asp:BoundField DataField="empl_fname" HeaderText="empl_fname" SortExpression="empl_fname" />
                <asp:BoundField DataField="empl_lname" HeaderText="empl_lname" SortExpression="empl_lname" />
                <asp:BoundField DataField="empl_bdate" HeaderText="empl_bdate" SortExpression="empl_bdate" />
                <asp:BoundField DataField="empl_start_date" HeaderText="empl_start_date" SortExpression="empl_start_date" />
                <asp:BoundField DataField="empl_left_date" HeaderText="empl_left_date" SortExpression="empl_left_date" />
                <asp:BoundField DataField="empl_phone" HeaderText="empl_phone" SortExpression="empl_phone" />
                <asp:BoundField DataField="empl_cell" HeaderText="empl_cell" SortExpression="empl_cell" />
                <asp:BoundField DataField="empl_email" HeaderText="empl_email" SortExpression="empl_email" />
                <asp:BoundField DataField="dept_id" HeaderText="dept_id" SortExpression="dept_id" />
                <asp:BoundField DataField="title_id" HeaderText="title_id" SortExpression="title_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" DeleteCommand="DELETE FROM [employees] WHERE [empl_id] = @empl_id" InsertCommand="INSERT INTO [employees] ([empl_fname], [empl_lname], [empl_bdate], [empl_start_date], [empl_left_date], [empl_phone], [empl_cell], [empl_email], [dept_id], [title_id]) VALUES (@empl_fname, @empl_lname, @empl_bdate, @empl_start_date, @empl_left_date, @empl_phone, @empl_cell, @empl_email, @dept_id, @title_id)" SelectCommand="SELECT [empl_id], [empl_fname], [empl_lname], [empl_bdate], [empl_start_date], [empl_left_date], [empl_phone], [empl_cell], [empl_email], [dept_id], [title_id] FROM [employees]" UpdateCommand="UPDATE [employees] SET [empl_fname] = @empl_fname, [empl_lname] = @empl_lname, [empl_bdate] = @empl_bdate, [empl_start_date] = @empl_start_date, [empl_left_date] = @empl_left_date, [empl_phone] = @empl_phone, [empl_cell] = @empl_cell, [empl_email] = @empl_email, [dept_id] = @dept_id, [title_id] = @title_id WHERE [empl_id] = @empl_id">
            <DeleteParameters>
                <asp:Parameter Name="empl_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="empl_fname" Type="String" />
                <asp:Parameter Name="empl_lname" Type="String" />
                <asp:Parameter DbType="Date" Name="empl_bdate" />
                <asp:Parameter DbType="Date" Name="empl_start_date" />
                <asp:Parameter DbType="Date" Name="empl_left_date" />
                <asp:Parameter Name="empl_phone" Type="String" />
                <asp:Parameter Name="empl_cell" Type="String" />
                <asp:Parameter Name="empl_email" Type="String" />
                <asp:Parameter Name="dept_id" Type="Int32" />
                <asp:Parameter Name="title_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="empl_fname" Type="String" />
                <asp:Parameter Name="empl_lname" Type="String" />
                <asp:Parameter DbType="Date" Name="empl_bdate" />
                <asp:Parameter DbType="Date" Name="empl_start_date" />
                <asp:Parameter DbType="Date" Name="empl_left_date" />
                <asp:Parameter Name="empl_phone" Type="String" />
                <asp:Parameter Name="empl_cell" Type="String" />
                <asp:Parameter Name="empl_email" Type="String" />
                <asp:Parameter Name="dept_id" Type="Int32" />
                <asp:Parameter Name="title_id" Type="Int32" />
                <asp:Parameter Name="empl_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
