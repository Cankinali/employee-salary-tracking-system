<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BolumlereGorePersonelListesi.aspx.cs" Inherits="pmtp2.BolumlereGorePersonelListesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Staff List by Department</title>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

    <script type="text/javascript">
        function deneme(deger) {
            location = "https://localhost:44333/BolumlereGorePersonelListesi?id=" + deger;
        }

        $(function () {
            $("#DropBlm").append('<option hidden value="" selected >Seçiniz</option>')

        })

    </script>

    <style>

        .divClass {        width:80px;}
    </style>

    <script>
        function goster(id) {
            $(".eleman").hide(0);
            $("#" + id).show(0);
        }

        function yaz(id, deger) {
            $("#" + id).html(deger);
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">
                <p style="margin-left: 271px">	Staff List by Department</p>

        <asp:Label ID="Label1" runat="server" Text="Select Department : " Font-Bold="true"></asp:Label>
        <asp:DropDownList ID="DropBlm" runat="server" style="margin-left: 163px" onchange="javascript:deneme(this.value)"  DataSourceID="SqlDataSource3" DataTextField="dept_name" DataValueField="dept_id" Width="166px"   >
        </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [dept_id], [dept_name] FROM [departments]" ></asp:SqlDataSource>      
                <br />
        <br />
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
        <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Sayfayı kapat" OnClientClick="window.close()" OnClick="Button1_Click" style="margin-left: 272px" Width="185px"/>
    </form>
</body>
</html>
