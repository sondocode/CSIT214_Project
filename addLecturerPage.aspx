<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addLecturerPage.aspx.cs" Inherits="CSIT214_project.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>UOW NEW LECTURER</title>
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
            <div class="loginHeaderSpan">NEW LECTURER</div>
        </div>
        <div class="loginPart">
            <form id="formId2" runat="server">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label">LECTURER ID</asp:Label><br />
                <asp:TextBox ID="lecIdInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecIdValidator" runat="server" ErrorMessage="Please enter lecturer ID." ControlToValidate="lecIdInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label2" runat="server" Text="Label">LECTURER FIRST NAME</asp:Label><br />
                <asp:TextBox ID="lecFirstNameInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecFirstNameValidator" runat="server" ErrorMessage="Please enter lecturer first name." ControlToValidate="lecFirstNameInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label3" runat="server" Text="Label">LECTURER LAST NAME</asp:Label><br />
                <asp:TextBox ID="lecLastNameInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecLastNameValidator" runat="server" ErrorMessage="Please enter lecturer last name." ControlToValidate="lecLastNameInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label4" runat="server" Text="Label">LECTURER ADDRESS</asp:Label><br />
                <asp:TextBox ID="lecAddressInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecAddressValidator" runat="server" ErrorMessage="Please enter lecturer address." ControlToValidate="lecAddressInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label5" runat="server" Text="Label">LECTURER PHONE NUMBER</asp:Label><br />
                <asp:TextBox ID="lecPhoneNoInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecPhoneNoValidator" runat="server" ErrorMessage="Please enter lecturer phone number." ControlToValidate="lecPhoneNoInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label6" runat="server" Text="Label">LECTURER EMAIL</asp:Label><br />
                <asp:TextBox ID="lecEmailInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecEmailValidator" runat="server" ErrorMessage="Please enter lecturer email." ControlToValidate="lecEmailInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label7" runat="server" Text="Label">LECTURER DATE OF BIRTH</asp:Label><br />
                <asp:TextBox ID="lecDobInput" type="date" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecDobValidator" runat="server" ErrorMessage="Please enter lecturer date of birth" ControlToValidate="lecDobInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label8" runat="server" Text="Label">LECTURER NATIONALITY</asp:Label><br />
                <asp:TextBox ID="lecNationalityInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecNationalityValidator" runat="server" ErrorMessage="Please enter lecturer nationality." ControlToValidate="lecNationalityInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label9" runat="server" Text="Label">LECTURER USERNAME</asp:Label><br />
                <asp:TextBox ID="lecUsernameInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecUsernameValidator" runat="server" ErrorMessage="Please lecturer student username." ControlToValidate="lecUsernameInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label10" runat="server" Text="Label">LECTURER PASSWORD</asp:Label><br />
                <asp:TextBox ID="lecPasswordInput" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecPasswordValidator" runat="server" ErrorMessage="Please enter lecturer password." ControlToValidate="lecPasswordInput" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label12" runat="server" Text="Label">LECTURER SUBJECT 1 (INPUT SUBJECT CODE)</asp:Label><br />
                <asp:TextBox ID="lecSubCode1Input" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecSubCode1Validator" runat="server" ErrorMessage="Please enter lecturer subject code." ControlToValidate="lecSubCode1Input" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label13" runat="server" Text="Label">LECTURER SUBJECT 2 (INPUT SUBJECT CODE)</asp:Label><br />
                <asp:TextBox ID="lecSubCode2Input" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecSubCode2Validator" runat="server" ErrorMessage="Please enter lecturer subject code." ControlToValidate="lecSubCode2Input" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label14" runat="server" Text="Label">LECTURER SUBJECT 3 (INPUT SUBJECT CODE)</asp:Label><br />
                <asp:TextBox ID="lecSubCode3Input" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecSubCode3Validator" runat="server" ErrorMessage="Please enter lecturer subject code." ControlToValidate="lecSubCode3Input" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Label ID="Label15" runat="server" Text="Label">LECTURER SUBJECT 4 (INPUT SUBJECT CODE)</asp:Label><br />
                <asp:TextBox ID="lecSubCode4Input" class="form-control" runat="server" Height="35px" Width="348px" style="margin-top:12px;"></asp:TextBox>
                <asp:RequiredFieldValidator ID="lecSubCode4Validator" runat="server" ErrorMessage="Please enter lecturer subject code." ControlToValidate="lecSubCode4Input" ForeColor="#CC0000" Font-Size="12px" BackColor="#FFCCCC"></asp:RequiredFieldValidator><br />
                <div style="height:10px;"></div>

                <asp:Button ID="submitBtn2" class="btn btn-default" runat="server" Text="ADD LECTURER" Width="348px" Height="40px" BackColor="#0066CC" ForeColor="White" OnClick="btnAddLecturer"/><br /><br />
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
