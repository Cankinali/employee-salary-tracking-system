<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="YillaraGoreMaasGrafigi.aspx.cs" Inherits="pmtp2.YillaraGoreMaasGrafigi" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Salary Chart by Years</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <h2>Staff Salary Chart</h2>
            <asp:Chart ID="Chart1" runat="server" Width="669px" Height="372px" style="text-align: center">
                <series>
                    <asp:Series Name="Series1">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <br />
            <br />
            <br />
            <asp:Button OnClientClick="window.close()" ID="Button1" runat="server" style="margin-left: 0px" Text="Close page" />
        </div>
    </form>
</body>
</html>
