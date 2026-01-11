<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giris.aspx.cs" Inherits="pmtp2.Giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'><link rel="stylesheet" href="./style.css">
    <style>
        body{
  background: #E8D426 !important;
  font-family: 'Muli', sans-serif;

}
h1{
  color: #fff;
  padding-bottom: 2rem;
  font-weight: bold;
}

.form-control:focus {

    color: #000;
    background-color: #fff;
    border:2px solid #E8D426;
    outline: 0;
    box-shadow: none;

}

.btn{
  background: #E8D426;
  border: #E8D426;
}
.btn:hover {
  background: #E8D426;
  border: #E8D426;
}

    </style>
</head>
<body>






                                        <div class="pt-5">
                                  <h1 class="text-center">Login Form</h1>

                                <div class="container">
                                                <div class="row">
                                                    <div class="col-md-5 mx-auto">
                                                        <div class="card card-body">

                                                            <form id="form1" runat="server">
                                                                <input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                                                <div class="form-group required">

                                                                    <asp:Label ID="Label1" runat="server" Text="Username : Öğrenci"></asp:Label>
                                                                    <asp:TextBox ID="userName" runat="server" type="text" class="form-control text-lowercase" required=""></asp:TextBox>


                                                                </div>
                                                                <div class="form-group required">
                                                                     <asp:Label  class="d-flex flex-row align-items-center"  ID="Label2" runat="server" Text="Password : o1"></asp:Label>
                                                                     <asp:TextBox type="password" class="form-control" required="" ID="userPsw" runat="server"></asp:TextBox>

                                                                </div>
                                                                <div class="form-group mt-4 mb-4">

                                                                </div>
                                                                <div class="form-group pt-1">
                                                                   <asp:Button class="btn btn-primary btn-block"  ID="Button1" runat="server" Text="Login" Width="168px" OnClick="Button1_Click" />

                                                                </div>
                                                                            <asp:Label ForeColor="red" ID="Label5" runat="server" Text=""></asp:Label><br />
                                                                            <asp:Label ID="Label6" runat="server" Text="Students use the above username and password."></asp:Label><br />
                                                            </form>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                </div>
</body>
</html>
