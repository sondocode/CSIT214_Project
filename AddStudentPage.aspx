<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addStudentPage.aspx.cs" Inherits="CSIT214_project.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>UOW NEW STUDENT</title>
    <style>
        body {
            background-image: url("https://images.pexels.com/photos/326240/pexels-photo-326240.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
            background-size: 220%;
        }

        .loginContainer {
            width: 500px;
            height: 1700px;
            border: 1px solid #A4A4A4;
            margin: 100px auto 0px auto;
            background-color: white;
        }

        .loginPart {
            width: 350px;
            height: 1600px;
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
            margin-top: 100px;
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
                    <li><a href="Login.aspx"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="loginContainer">
        <div class="loginHeader">
            <div class="loginHeaderSpan">NEW STUDENT</div>
        </div>
        <div class="loginPart">
            <form id="formId1" runat="server">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label">STUDENT ID</asp:Label><br />
                <asp:TextBox ID="studIdInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studIdValidator" runat="server" ErrorMessage="Please enter student ID." ControlToValidate="studIdInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label2" runat="server" Text="Label">STUDENT FIRST NAME</asp:Label><br />
                <asp:TextBox ID="studFirstNameInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studFirstNameValidator" runat="server" ErrorMessage="Please enter student first name." ControlToValidate="studFirstNameInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label3" runat="server" Text="Label">STUDENT LAST NAME</asp:Label><br />
                <asp:TextBox ID="studLastNameInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studLastNameValidator" runat="server" ErrorMessage="Please enter student last name." ControlToValidate="studLastNameInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label4" runat="server" Text="Label">STUDENT ADDRESS</asp:Label><br />
                <asp:TextBox ID="studAddressInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studAddressValidator" runat="server" ErrorMessage="Please enter student address." ControlToValidate="studAddressInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label5" runat="server" Text="Label">STUDENT PHONE NUMBER</asp:Label><br />
                <asp:TextBox ID="studPhoneNoInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studPhoneNoValidator" runat="server" ErrorMessage="Please enter student phone number." ControlToValidate="studPhoneNoInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label6" runat="server" Text="Label">STUDENT EMAIL</asp:Label><br />
                <asp:TextBox ID="studEmailInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studEmailValidator" runat="server" ErrorMessage="Please enter student email." ControlToValidate="studEmailInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label7" runat="server" Text="Label">STUDENT DATE OF BIRTH</asp:Label><br />
                <asp:TextBox ID="studDobInput" type="date" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studDobValidator" runat="server" ErrorMessage="Please enter student date of birth" ControlToValidate="studDobInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label8" runat="server" Text="Label">STUDENT NATIONALITY</asp:Label><br />
                <asp:TextBox ID="studNationalityInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studNationalityValidator" runat="server" ErrorMessage="Please enter student nationality." ControlToValidate="studNationalityInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label9" runat="server" Text="Label">STUDENT PROGRAM</asp:Label><br />
                <asp:TextBox ID="studProgramInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studProgramValidator" runat="server" ErrorMessage="Please enter student program." ControlToValidate="studProgramInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label10" runat="server" Text="Label">STUDENT USERNAME</asp:Label><br />
                <asp:TextBox ID="studUsernameInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studUsernameValidator" runat="server" ErrorMessage="Please enter student username." ControlToValidate="studUsernameInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label11" runat="server" Text="Label">STUDENT PASSWORD</asp:Label><br />
                <asp:TextBox ID="studPasswordInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studPasswordValidator" runat="server" ErrorMessage="Please enter student password." ControlToValidate="studPasswordInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label12" runat="server" Text="Label">STUDENT SUBJECT 1 (INPUT SUBJECT CODE)</asp:Label><br />
                <asp:TextBox ID="studSubCode1Input" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studSubCode1Validator" runat="server" ErrorMessage="Please enter student subject code." ControlToValidate="studSubCode1Input" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label13" runat="server" Text="Label">STUDENT SUBJECT 2 (INPUT SUBJECT CODE)</asp:Label><br />
                <asp:TextBox ID="studSubCode2Input" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studSubCode2Validator" runat="server" ErrorMessage="Please enter student subject code." ControlToValidate="studSubCode2Input" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label14" runat="server" Text="Label">STUDENT SUBJECT 3 (INPUT SUBJECT CODE)</asp:Label><br />
                <asp:TextBox ID="studSubCode3Input" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studSubCode3Validator" runat="server" ErrorMessage="Please enter student subject code." ControlToValidate="studSubCode3Input" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label15" runat="server" Text="Label">STUDENT SUBJECT 4 (INPUT SUBJECT CODE)</asp:Label><br />
                <asp:TextBox ID="studSubCode4Input" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="studSubCode4Validator" runat="server" ErrorMessage="Please enter student subject code." ControlToValidate="studSubCode4Input" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Button ID="submitBtn1" class="btn btn-default" runat="server" Text="ADD STUDENT" Width="348px" Height="40px" BackColor="#0066CC" ForeColor="White" OnClick="btnAddStudent"/><br /><br />
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
