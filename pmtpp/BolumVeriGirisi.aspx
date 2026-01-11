<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BolumVeriGirisi.aspx.cs" Inherits="pmtp2.BolumVeriGirisi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>
Departments Data Entry Form</h2>




        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="dept_id" DataSourceID="SqlDataSource1" Height="303px" style="text-align: center" Width="747px">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="dept_id" HeaderText="dept_id" InsertVisible="False" ReadOnly="True" SortExpression="dept_id" />
                <asp:BoundField DataField="dept_name" HeaderText="dept_name" SortExpression="dept_name" />
                <asp:BoundField DataField="dept_phone" HeaderText="dept_phone" SortExpression="dept_phone" />
                <asp:BoundField DataField="manager_id" HeaderText="manager_id" SortExpression="manager_id" />
            </Columns>
        </asp:GridView>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Open New Section Data Entry" Width="179px" OnClick="Button1_Click"/><br />
        <br />
                        <asp:Panel ID="Panel1" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Department Name : "></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Department Phone : "></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Manager : "></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource21" DataTextField="manager_id" DataValueField="manager_id"  ></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [manager_id] FROM [departments]"></asp:SqlDataSource>
                            <asp:Label ForeColor="red" ID="Label4" runat="server" Text=""></asp:Label><br />
                                                        <asp:Label ForeColor="red" ID="Label5" runat="server" Text=""></asp:Label>

                            <br />
                            <br />
                            <asp:Button ID="Button3" runat="server" Text="Save" OnClick="Button3_Click"/><br />
                            <br />
                </asp:Panel>
&nbsp;<asp:Button OnClientClick="window.close()" ID="Button2" runat="server" style="margin-left: 567px" Text="Close page" Width="179px" /><br />
        <br />
        <br />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" DeleteCommand="DELETE FROM [departments] WHERE [dept_id] = @original_dept_id AND (([dept_name] = @original_dept_name) OR ([dept_name] IS NULL AND @original_dept_name IS NULL)) AND (([dept_phone] = @original_dept_phone) OR ([dept_phone] IS NULL AND @original_dept_phone IS NULL)) AND (([manager_id] = @original_manager_id) OR ([manager_id] IS NULL AND @original_manager_id IS NULL))" InsertCommand="INSERT INTO [departments] ([dept_name], [dept_phone], [manager_id]) VALUES (@dept_name, @dept_phone, @manager_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [dept_id], [dept_name], [dept_phone], [manager_id] FROM [departments]" UpdateCommand="UPDATE [departments] SET [dept_name] = @dept_name, [dept_phone] = @dept_phone, [manager_id] = @manager_id WHERE [dept_id] = @original_dept_id AND (([dept_name] = @original_dept_name) OR ([dept_name] IS NULL AND @original_dept_name IS NULL)) AND (([dept_phone] = @original_dept_phone) OR ([dept_phone] IS NULL AND @original_dept_phone IS NULL)) AND (([manager_id] = @original_manager_id) OR ([manager_id] IS NULL AND @original_manager_id IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_dept_id" Type="Int32" />
                <asp:Parameter Name="original_dept_name" Type="String" />
                <asp:Parameter Name="original_dept_phone" Type="String" />
                <asp:Parameter Name="original_manager_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="dept_name" Type="String" />
                <asp:Parameter Name="dept_phone" Type="String" />
                <asp:Parameter Name="manager_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="dept_name" Type="String" />
                <asp:Parameter Name="dept_phone" Type="String" />
                <asp:Parameter Name="manager_id" Type="Int32" />
                <asp:Parameter Name="original_dept_id" Type="Int32" />
                <asp:Parameter Name="original_dept_name" Type="String" />
                <asp:Parameter Name="original_dept_phone" Type="String" />
                <asp:Parameter Name="original_manager_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>




    </form>
</body>
</html>
