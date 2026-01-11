<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonelIetisimRaporu.aspx.cs" Inherits="pmtp2.PersonelIetisimRaporu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personnel Communication Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Personnel Communication Report </h2> <asp:Button ID="Button1" runat="server" Text="Close page" OnClientClick="window.close()"/>

<table style="width:100%; margin-top: 31px;">
  <thead>
    <tr style="background-color:#E6E6FA;">
      <th>Id</th>
      <th>Name</th>
      <th>Home phone</th>
      <th>Mobile phone</th>
      <th>E-Mail</th>
      <th>Department</th>

    </tr>
  </thead>
  <tbody>
    <asp:ListView runat="server" ID="lstyazilar">
      <ItemTemplate>
        <tr style="text-align:center;">
          <td><%#Eval("empl_id")%></td>
          <td><%#Eval("empl_name")%></td>
          <td><%#Eval("empl_phone")%></td>
          <td><%#Eval("empl_cell")%></td>
          <td><%#Eval("empl_email")%></td>
          <td><%#Eval("dept_name")%></td>
        </tr>

      </ItemTemplate>
    </asp:ListView>
  </tbody>

</table>

    </form>
</body>
</html>
