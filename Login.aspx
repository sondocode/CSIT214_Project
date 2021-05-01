<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CSIT214_project.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>UOW Login</title>
    <style>
        body {
            background-image: url("https://myvoffice.me/spaces/img/bg-login.jpg");
        }

        .loginContainer {
            width: 500px;
            height: 400px;
            border: 1px solid #A4A4A4;
            margin: 100px auto 0px auto;
            background-color: white;
        }

        .loginPart {
            width: 350px;
            height: 350px;
            margin: 20px auto 0px auto;
        }

        .loginHeader {
            width: 498.5px;
            height: 40px;
            background-color: #DCDCDC;
            border-bottom: 1px solid #A4A4A4;
        }

        .loginHeaderSpan {
            font-size: 18px;
            font-weight: bold;
            font-family: Arial;
            margin-left: 20px;
            padding-top: 7px;
        }

        #userLabel {
            margin-top: 20px;
        }

        #user {
            width: 347px;
            height: 40px;
            background-color: #E6FFFF;
            margin: 10px auto 0px auto;
        }

        #pwd {
            width: 347px;
            height: 40px;
            background-color: #E6FFFF;
            margin: 10px auto 0px auto;
        }

        #btn1 {
            width: 160px;
            height: 45px;
            font-size: 15px;
            border: 1px solid #A4A4A4;
            margin-top: 10px;
        }

        #btn2 {
            width: 160px;
            height: 45px;
            font-size: 15px;
            border: 1px solid #A4A4A4;
            margin-top: 10px;
        }

        footer {
            margin-top: 120px;
            color: white;
            text-align: center;
        }
        </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script>
    </script>
</head>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <span><img src="https://solss.uow.edu.au/images/logo_uow.png" width="150" height="50" /></span>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> Help</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-envelope"></span> Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="loginContainer">
        <div class="loginHeader">
            <div class="loginHeaderSpan">LOGIN</div>
        </div>
        <div class="loginPart">
            <form id="formId1" runat="server">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label">USERNAME</asp:Label><br />
                <asp:TextBox ID="usernameInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ErrorMessage="Please enter your username." ControlToValidate="usernameInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>
                <asp:Label ID="Label2" runat="server" Text="Label">PASSWORD</asp:Label><br />
                <asp:TextBox ID="userPwdInput" type="password" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ErrorMessage="Please enter your password." ControlToValidate="userPwdInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <br />
                <asp:Button ID="submitBtn" class="btn btn-default" runat="server" Text="LOGIN" Width="348px" Height="40px" BackColor="#0066CC" ForeColor="White" OnClick="buttonSubmitClick"/><br /><br />
            </form>
        </div>
    </div>

    <footer class="navbar navbar-inverse">
        <p>
            <a href="https://www.uow.edu.au/student/sols-help/" target="_blank">SOLS Help</a> | Comments and questions should be directed to <a href="http://www.uow.edu.au/student/enquiries/index.html" target="_blank">Student Central</a><br />
            Copyright &copy; 2019 University of Wollongong. CRICOS Provider No: 00102E | <a href="https://www.uow.edu.au/privacy/" target="_blank">Privacy</a> | <a href="https://www.uow.edu.au/about/governance/copyright-and-disclaimer/" target="_blank">Disclaimer</a> |
        </p>
    </footer>
</body>
</html>
