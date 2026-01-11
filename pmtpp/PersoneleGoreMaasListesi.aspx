<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersoneleGoreMaasListesi.aspx.cs" Inherits="pmtp2.PersoneleGoreMaasListesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Salary List by Personnel</title>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script type="text/javascript">
            function deneme(deger) {
                location = "https://localhost:44333/PersoneleGoreMaasListesi?id=" + deger;
            }

            $(function () {
                $("#DropPrs").append('<option hidden value="" selected >Choose</option>')

            })

        </script>

</head>
<body>
    <form id="form1" runat="server">
                <p style="margin-left: 271px">	Salary List by Personnel</p>

        <asp:Label ID="Label1" runat="server" Text="Personnel choose : " Font-Bold="true"></asp:Label>
        <asp:DropDownList ID="DropPrs" runat="server" style="margin-left: 163px" onchange="javascript:deneme(this.value)" Width="166px" DataSourceID="SqlDataSource1" DataTextField="empl_name" DataValueField="empl_id"   >
        </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [empl_id], [empl_name] FROM [employees]"></asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
    </form>
</body>
</html>
