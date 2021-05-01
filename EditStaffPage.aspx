<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditStaffPage.aspx.cs" Inherits="CSIT214_project.EditStaffPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>UOW EDIT STAFF</title>
    <style>
        body {
            background-image: url("https://images.pexels.com/photos/326240/pexels-photo-326240.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260");
            background-size: 170%;
        }

        .loginContainer {
            width: 95%;
            height: 500px;
            border: 1px solid #A4A4A4;
            margin:50px auto 0px auto;
            background-color: white;
        }

        .loginPart {
            width: 100%;
            height: 458px;
            font-size: 11px;
            overflow: scroll;
        }

        .loginHeader {
            width: 100%;
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
            <div class="loginHeaderSpan">EDIT STAFF</div>
        </div>
        <form id="form7" runat="server">
        <div class="loginPart">
            
            <asp:GridView ID="StaffGridView" runat="server" AutoGenerateColumns="false" AllowPaging="true" CellSpacing="5" OnRowEditing="StaffGridView_RowEditing" OnRowUpdating="StaffGridView_RowUpdating" OnRowDeleting="StaffGridView_RowDeleting" DataKeyNames="staffId" OnRowCancelingEdit="btnCancel">
                <Columns>
                    <asp:BoundField DataField="staffId" HeaderText="STAFF ID" ReadOnly="true" SortExpression="staffId" />
                    <asp:BoundField DataField="staffFirstName" HeaderText="STAFF FIRST NAME" SortExpression="staffFirstName" />
                    <asp:BoundField DataField="staffLastName" HeaderText="STAFF LAST NAME" SortExpression="staffLastName" />
                    <asp:BoundField DataField="staffAddress" HeaderText="STAFF ADDRESS" SortExpression="staffAddress" />
                    <asp:BoundField DataField="staffPhoneNo" HeaderText="STAFF PHONE NUMBER" SortExpression="staffPhoneNo" />
                    <asp:BoundField DataField="staffEmail" HeaderText="STAFF EMAIL" SortExpression="staffEmail" />
                    <asp:BoundField DataField="staffDob" HeaderText="STAFF DATE OF BIRTH" SortExpression="staffDob" />
                    <asp:BoundField DataField="staffNationality" HeaderText="STAFF NATIONALITY" SortExpression="staffNationality" />
                    <asp:BoundField DataField="staffUsername" HeaderText="STAFF USERNAME" SortExpression="staffUsername" />
                    <asp:BoundField DataField="staffPassword" HeaderText="STAFF PASSWORD" SortExpression="staffPassword" />
                    <asp:CommandField ButtonType="Button" HeaderText="EDIT/DELETE" ShowDeleteButton="true" ShowEditButton="true" ShowHeader="true">
                        <HeaderStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                </Columns>
                <HeaderStyle HorizontalAlign="Left" />
            </asp:GridView>
        </div>
        <div style="text-align:center;">
            <asp:Button ID="btn1" class="btn btn-default" runat="server" OnClick="btnClick" Text="FINISH" style="background-color:#1a57ff; color:white;"/>
        </div>
            
        </form>
    </div>

    <footer class="navbar navbar-inverse">
        <p>
            <a href="https://www.uow.edu.au/student/sols-help/" target="_blank">SOLS Help</a> | Comments and questions should be directed to <a href="http://www.uow.edu.au/student/enquiries/index.html" target="_blank">Student Central</a><br />
            Copyright &copy; 2019 University of Wollongong. CRICOS Provider No: 00102E | <a href="https://www.uow.edu.au/privacy/" target="_blank">Privacy</a> | <a href="https://www.uow.edu.au/about/governance/copyright-and-disclaimer/" target="_blank">Disclaimer</a> |
        </p>
    </footer>
</body>
</html>
