<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelVeriGiris.aspx.cs" Inherits="pmtp2.PersonelVeriGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>
Personnel Data Entry Form</h2>
        <br />
        <asp:Label ForeColor="red" ID="Label5" runat="server" Text=""></asp:Label>
        <div class="auto-style1">
        
        <asp:Label  ID="Label1" runat="server" Text="Name : "></asp:Label>
        <asp:TextBox  ID="txtAd" runat="server"></asp:TextBox>
            <br />
            <br />
        <asp:Label ID="Label2" runat="server" Text="Surname : "></asp:Label>
        <asp:TextBox  ID="txtSoyad" runat="server"></asp:TextBox>
        <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Gender : "></asp:Label><asp:RadioButtonList  ID="cinsiyet" runat="server" style="text-align: left">
            <asp:ListItem Selected="True">Male</asp:ListItem>
            <asp:ListItem>Famale</asp:ListItem>
        </asp:RadioButtonList>
            <br />
        
        <asp:Label ID="Label3" runat="server" Text="Date of birth : "></asp:Label>
        <asp:TextBox type="date" ID="txtDgmTarih" runat="server"></asp:TextBox>
        
            <br />
            <br />
<asp:Label ID="Label7" runat="server" Text="Title : "></asp:Label><asp:DropDownList ID="unvan" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title">
        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [title] FROM [lookups]"></asp:SqlDataSource>
            <br />
            <br />

        <asp:Label ID="Label4" runat="server" Text="Department :  "></asp:Label><asp:DropDownList ID="bolum" runat="server" DataSourceID="SqlDataSource2" DataTextField="dept_name" DataValueField="dept_name">
        </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [dept_name] FROM [departments]"></asp:SqlDataSource>
            <br />
            <br />
                        <asp:Label ID="Label15" runat="server" Text="Start date of work : "></asp:Label>
            <asp:TextBox type="date" ID="txtGirisTarih" runat="server"></asp:TextBox>
            
            <br />
            <br />
                                    <asp:Label ID="Label14" runat="server" Text="Work phone : "></asp:Label>
            <asp:TextBox ID="txtistel" runat="server"></asp:TextBox>
            <br />
            <br />
                                                <asp:Label ID="Label16" runat="server" Text="Mobile phone : "></asp:Label>
            <asp:TextBox ID="txtCepTel" runat="server"></asp:TextBox><br />
                        <br />
                                                <asp:Label ID="Label17" runat="server" Text="E-mail : "></asp:Label>
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox><br />
            <br />
                                                            <asp:Label ID="Label18" runat="server" Text="Address : "></asp:Label>
            <asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
                        <br />
            <br />

        <asp:Label ID="Label20" runat="server" Text="City :  "></asp:Label><asp:DropDownList ID="il" runat="server">
            <asp:ListItem>Adıyaman</asp:ListItem>
      <asp:ListItem>Afyonkarahisar</asp:ListItem>
      <asp:ListItem>Ağrı</asp:ListItem>
      <asp:ListItem>Amasya</asp:ListItem>
      <asp:ListItem>Ankara</asp:ListItem>
      <asp:ListItem>Antalya</asp:ListItem>
      <asp:ListItem>Artvin</asp:ListItem>
      <asp:ListItem>Aydın</asp:ListItem>
      <asp:ListItem>Balıkesir</asp:ListItem>
      <asp:ListItem>Bilecik</asp:ListItem>
      <asp:ListItem>Bingöl</asp:ListItem>
      <asp:ListItem>Bitlis</asp:ListItem>
      <asp:ListItem>Bolu</asp:ListItem>
      <asp:ListItem>Burdur</asp:ListItem>
      <asp:ListItem>Bursa</asp:ListItem>
      <asp:ListItem>Çanakkale</asp:ListItem>
      <asp:ListItem>Çankırı</asp:ListItem>
      <asp:ListItem>Çorum</asp:ListItem>
      <asp:ListItem>Denizli</asp:ListItem>
      <asp:ListItem>Diyarbakır</asp:ListItem>
      <asp:ListItem>Edirne</asp:ListItem>
      <asp:ListItem>Elazığ</asp:ListItem>
      <asp:ListItem>Erzincan</asp:ListItem>
      <asp:ListItem>Erzurum</asp:ListItem>
      <asp:ListItem>Eskişehir</asp:ListItem>
      <asp:ListItem>Gaziantep</asp:ListItem>
      <asp:ListItem>Giresun</asp:ListItem>
      <asp:ListItem>Gümüşhane</asp:ListItem>
      <asp:ListItem>Hakkâri</asp:ListItem>
      <asp:ListItem>Hatay</asp:ListItem>
      <asp:ListItem>Isparta</asp:ListItem>
      <asp:ListItem>Mersin</asp:ListItem>
      <asp:ListItem>İstanbul</asp:ListItem>
      <asp:ListItem>İzmir</asp:ListItem>
      <asp:ListItem>Kars</asp:ListItem>
      <asp:ListItem>Kastamonu</asp:ListItem>
      <asp:ListItem>Kayseri</asp:ListItem>
      <asp:ListItem>Kırklareli</asp:ListItem>
      <asp:ListItem>Kırşehir</asp:ListItem>
      <asp:ListItem>Kocaeli</asp:ListItem>
      <asp:ListItem>Konya</asp:ListItem>
      <asp:ListItem>Kütahya</asp:ListItem>
      <asp:ListItem>Malatya</asp:ListItem>
      <asp:ListItem>Manisa</asp:ListItem>
      <asp:ListItem>Kahramanmaraş</asp:ListItem>
      <asp:ListItem>Mardin</asp:ListItem>
      <asp:ListItem>Muğla</asp:ListItem>
      <asp:ListItem>Muş</asp:ListItem>
      <asp:ListItem>Nevşehir</asp:ListItem>
      <asp:ListItem>Niğde</asp:ListItem>
      <asp:ListItem>Ordu</asp:ListItem>
      <asp:ListItem>Rize</asp:ListItem>
      <asp:ListItem>Sakarya</asp:ListItem>
      <asp:ListItem>Samsun</asp:ListItem>
      <asp:ListItem>Siirt</asp:ListItem>
      <asp:ListItem>Sinop</asp:ListItem>
      <asp:ListItem>Sivas</asp:ListItem>
      <asp:ListItem>Tekirdağ</asp:ListItem>
      <asp:ListItem>Tokat</asp:ListItem>
      <asp:ListItem>Trabzon</asp:ListItem>
      <asp:ListItem>Tunceli</asp:ListItem>
      <asp:ListItem>Şanlıurfa</asp:ListItem>
      <asp:ListItem>Uşak</asp:ListItem>
      <asp:ListItem>Van</asp:ListItem>
      <asp:ListItem>Yozgat</asp:ListItem>
      <asp:ListItem>Zonguldak</asp:ListItem>
      <asp:ListItem>Aksaray</asp:ListItem>
      <asp:ListItem>Bayburt</asp:ListItem>
      <asp:ListItem>Karaman</asp:ListItem>
      <asp:ListItem>Kırıkkale</asp:ListItem>
      <asp:ListItem>Batman</asp:ListItem>
      <asp:ListItem>Şırnak</asp:ListItem>
      <asp:ListItem>Bartın</asp:ListItem>
      <asp:ListItem>Ardahan</asp:ListItem>
      <asp:ListItem>Iğdır</asp:ListItem>
      <asp:ListItem>Yalova</asp:ListItem>
      <asp:ListItem>Karabük</asp:ListItem>
      <asp:ListItem>Kilis</asp:ListItem>
      <asp:ListItem>Osmaniye</asp:ListItem>
      <asp:ListItem>Düzce</asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />
           
                                                            <asp:Label ID="Label21" runat="server" Text="County : "></asp:Label>
            <asp:TextBox ID="ilce" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label19" runat="server" Text="is it active ? "></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server"/>
            <br />
            <br />
            <asp:Label ID="Label22" runat="server" Text="Photo : "></asp:Label>
            <br />
            
            <asp:Image ID="Image1" runat="server" ImageUrl='' runat="server" width="220" Height="160" style="text-align: right; margin-left: 0px"/>
            <br />
            <br />

            <asp:Button ID="Button1" runat="server" Text="Save" style="margin-left: 56px" onclick="Button1_Click"/>&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Close page" onclick="Button2_Click1"/>
                









        
        </div>

        
    </form>
</body>
</html>
