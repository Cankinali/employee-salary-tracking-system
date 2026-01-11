<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MaasVeriGiris.aspx.cs" Inherits="pmtp2.MaasVeriGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>
Personnel Salary Data Entry Form</h3>
                    <br />
        <asp:Label  ID="Label5" runat="server" Text="Staff Name : "></asp:Label>


        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="empl_name" DataValueField="empl_id"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [empl_name], [empl_id] FROM [employees]"></asp:SqlDataSource>
        <br />
            <br />
        <asp:Label ID="Label2" runat="server" Text="Date : "></asp:Label>
        <asp:TextBox type="date" ID="txtTarih" runat="server"></asp:TextBox>
        <br />
            <br />
                    
            <br />
        <asp:Label ID="Label1" runat="server" Text="Wage : "></asp:Label>
        <asp:TextBox  ID="TextBox1" runat="server"></asp:TextBox>
        <br />
            <br />
                    
            <br />
        <asp:Label ID="Label3" runat="server" Text="Commission : "></asp:Label>
        <asp:TextBox  ID="TextBox2" runat="server"></asp:TextBox>
        <br />
                    
            <br />
        <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click"/><asp:Button ID="Button2" runat="server" Text="Close page" style="margin-left: 47px" OnClientClick="window.close()"/>
        <br />
        <asp:Label ForeColor="red" ID="Label4" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
