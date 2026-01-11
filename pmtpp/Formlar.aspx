<%@ Page Title="Formlar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formlar.aspx.cs" Inherits="pmtp2.Formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div style="text-align:center;margin-top:5px;">
                    <h2 class="text-center" style="font-weight:bold;">PSTP Forms</h2>

     <asp:Button OnClientClick="window.open('PersonelVeriGiris.aspx')" ID="Button1" runat="server" Text="Personnel Data Entry Form" onclick="Button1_Click" Width="281px"/>
            <br />
            <br />
    <asp:Button OnClientClick="window.open('MaasVeriGiris.aspx')" ID="Button2" runat="server" Text="Salary Data Entry Form" Width="280px" OnClick="Button2_Click"/>
            <br />
            <br />
    <asp:Button OnClientClick="window.open('PersonelVeriGuncelleme.aspx')" ID="Button5" runat="server" Text="Personnel Data Update Form" Width="276px" OnClick="Button5_Click" />
            <br />
            <br />
    <asp:Button OnClientClick="window.open('MaasGuncelleme.aspx')" ID="Button3" runat="server" Text="Salary Data Update Form" Width="280px" OnClick="Button3_Click" />

            <br />
            <br />

    <asp:Button OnClientClick="window.open('PersonelVeriGirisWizard.aspx')" ID="Button4" runat="server" Text="Staff Wizard Form" Width="280px" OnClick="Button4_Click"/>
            <br />
            <br />
    <asp:Button OnClientClick="window.open('BolumVeriGirisi.aspx')" ID="Button6" runat="server" Text="Department Data Entry Form" Width="280px" OnClick="Button6_Click"/>

    </div>
</asp:Content>
