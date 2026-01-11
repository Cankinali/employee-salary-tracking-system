<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelVeriGirisWizard.aspx.cs" Inherits="pmtp2.PersonelVeriGirisWizard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personnel Data Entry Wizard</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Personnel Data Entry Wizard</h2>
        <asp:Wizard HeaderText="Personnel Data Entry Wizard" ID="Wizard1" runat="server" BackColor="#F7F6F3" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ActiveStepIndex="3" OnFinishButtonClick="Wizard1_FinishButtonClick" Height="200px" Width="440px" BorderStyle="Solid" OnNextButtonClick="Wizard1_NextButtonClick">
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
            <SideBarButtonStyle Font-Names="Verdana" ForeColor="White" BorderWidth="0px" />
            <SideBarStyle BackColor="#7C6F57" Font-Size="0.9em" VerticalAlign="Top" BorderWidth="0px" />
            <SideBarTemplate>
                <asp:DataList ID="SideBarList" runat="server">
                    <ItemTemplate>
                        <asp:LinkButton ID="SideBarButton" runat="server"></asp:LinkButton>
                        
                    </ItemTemplate>

                    <SelectedItemStyle Font-Bold="True" />
                </asp:DataList>
            </SideBarTemplate>
            <StepStyle ForeColor="#5D7B9D" BorderWidth="0px" />
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Personal Data">
                    <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
                    <asp:TextBox ID="txtad" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Surname:"></asp:Label>
                    <asp:TextBox ID="txtsoyad" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Date of birth:"></asp:Label>
                    <asp:TextBox type="date" ID="txtdogum" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Start date of work:"></asp:Label>
                    <asp:TextBox type="date" ID="txtgiristarih" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Title:"></asp:Label>
                    <asp:DropDownList ID="unvan" runat="server" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title" Width="217px">
                    </asp:DropDownList><br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [title] FROM [lookups]"></asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Gender:"></asp:Label>
                    <asp:RadioButtonList ID="cinsiyet" runat="server">
                        <asp:ListItem Selected="True">Male</asp:ListItem>
                        <asp:ListItem>Famale</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Contact Data">
                    <asp:Label ID="Label7" runat="server" Text="Work phone:"></asp:Label>
                    <asp:TextBox ID="txttel" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Mobil phone"></asp:Label>
                    <asp:TextBox ID="txtcep" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="E-mail:"></asp:Label>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Department:"></asp:Label>


                    <asp:DropDownList ID="bolum" runat="server" DataSourceID="SqlDataSource22" DataTextField="dept_name" DataValueField="dept_name">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:pmtpConnectionString %>" SelectCommand="SELECT [dept_name] FROM [departments]"></asp:SqlDataSource>


                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Adres Verileri">
                    <asp:Label ID="Label11" runat="server" Text="Address: "></asp:Label>
                    <asp:TextBox ID="txtadres" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="County"></asp:Label>
                    <asp:TextBox ID="txtilce" runat="server"></asp:TextBox><br />
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="City: "></asp:Label>
                    <asp:DropDownList ID="il" runat="server">
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
      <asp:ListItem>Kocaeli<</asp:ListItem>
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
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="approval">
                    <asp:Label ID="Label14" runat="server" Text="Name : "></asp:Label>
                    <asp:Label ID="Label26" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label25" runat="server" Text="Surname : "></asp:Label>
                    &nbsp;<asp:Label ID="Label27" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label22" runat="server" Text="Date of birth : "></asp:Label>
                    <asp:Label ID="Label28" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label20" runat="server" Text="Start date of work : "></asp:Label>
                    <asp:Label ID="Label29" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label23" runat="server" Text="Title : "></asp:Label>
                    <asp:Label ID="Label30" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label18" runat="server" Text="Work phone : "></asp:Label>
                    <asp:Label ID="Label31" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label24" runat="server" Text="Mobile phone : "></asp:Label>
                    <asp:Label ID="Label32" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label16" runat="server" Text="E-Mail : "></asp:Label>
                    <asp:Label ID="Label33" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label19" runat="server" Text="Department : "></asp:Label>
                    <asp:Label ID="Label34" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ForeColor="red" ID="Label35" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ForeColor="red" ID="Label17" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label15" runat="server" Text="If all Data Entries are correct, click the Finish button...."></asp:Label>
                </asp:WizardStep>

            </WizardSteps>
        </asp:Wizard>
        <br />
        <br />
        <div ><asp:Button OnClientClick="window.close()" ID="Button1" runat="server" style="text-align: center" Text="Close page" /></div>
        
        <br />
    </form>
</body>
</html>
