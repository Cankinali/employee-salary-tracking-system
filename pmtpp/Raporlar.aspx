<%@ Page Title="Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Raporlar.aspx.cs" Inherits="pmtp2.Raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
                            <h2 style="text-align:center;font-weight:bold;">PSTP Reports</h2>
        <div style="margin-top:5px;text-align:center;" >

         <asp:Button OnClientClick="window.open('BolumlereGorePersonelListesi.aspx')" ID="Button1" runat="server" Text="Staff List by Department" onclick="Button1_Click" Width="280px"/>
            <br />
            <br />
    <asp:Button OnClientClick="window.open('PersoneleGoreMaasListesi.aspx')" ID="Button2" runat="server" Text="Salary List by Personnel" Width="282px" OnClick="Button2_Click"/>
            <br />
            <br />
    <asp:Button OnClientClick="window.open('YillaraGoreMaasGrafigi.aspx')" ID="Button5" runat="server" Text="Annual Salary Chart by Personnel" Width="280px" OnClick="Button5_Click" />
            <br />
            <br />
    <asp:Button OnClientClick="window.open('PersonelIetisimRaporu.aspx')" ID="Button3" runat="server" Text="Personnel Communication Report" Width="280px" OnClick="Button3_Click" />
            </div>
</asp:Content>
