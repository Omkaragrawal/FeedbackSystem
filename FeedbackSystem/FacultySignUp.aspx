<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="FacultySignUp.aspx.cs" Inherits="FeedbackSystem.FacultySignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="../js/jquery-1.4.2.min.js"></script>
    <link href="../css/jquery-ui-1.css" rel="stylesheet" />
    <script src="../js/jquery-ui.js"></script>

    <script type="text/javascript">
        $(function () {
            $("#ctl00_ContentPlaceHolder1_txtDOB").datepicker({
                changeMonth: true,
                changeYear: true
            });

            $("#ctl00_ContentPlaceHolder1_txtDOJClg").datepicker({
                changeMonth: true,
                changeYear: true
            });

            $("#ctl00_ContentPlaceHolder1_txtDOJPP").datepicker({
                changeMonth: true,
                changeYear: true
            });
        });
    </script>

    <style type="text/css">
        div.ui-datepicker {
            color: black;
            font-size: 10px;
        }

        .loginform {
            clear: right;
            width: 100%;
            overflow: hidden;
        }

        .textbox {
            width: 277px;
            padding: 2px 0 2px 3px;
            border: 1px solid #d1d1d1;
            color: #70635b;
        }

        .formlabel {
            float: left;
            width: 123px;
            font-weight: bold;
            color: #008cc4;
        }

        .formbutton {
            margin-left: 233px;
            border: 1px solid #0086b5;
            background: #006caa;
            color: white;
            font-size: .857em;
            padding: 2px 5px 2px 5px;
            width: 110px;
            margin-bottom: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Faculty <span>Sign Up!</span></h2>
    <div style="text-align: center; margin-top: -35px; margin-left: 230px;"><a href="FacultyLogin.aspx">Go Back!</a></div>
    <br />
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Faculty Name:</label>
                <asp:TextBox ID="txtFacName" runat="server" CssClass="textBoxStyle"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="*" ForeColor="Red" ControlToValidate="txtFacName">
                </asp:RequiredFieldValidator>

            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Faculty Id/User Name:</label>
                <asp:TextBox ID="txtusername" runat="server" CssClass="textBoxStyle"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="*" ForeColor="Red" ControlToValidate="txtusername">
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Password:</label>
                <asp:TextBox ID="txtpwd" runat="server" CssClass="textBoxStyle" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="*" ForeColor="Red" ControlToValidate="txtpwd">
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Confirm Password:</label>
                <asp:TextBox ID="txtconfpwd" runat="server" CssClass="textBoxStyle" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="*" ForeColor="Red" ControlToValidate="txtconfpwd">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Password not matching!" ForeColor="Red" ControlToValidate="txtconfpwd" ControlToCompare="txtpwd"></asp:CompareValidator>
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Date of Birth:</label>
                <asp:TextBox ID="txtDOB" runat="server" CssClass="textBoxStyle" TextMode="Date"></asp:TextBox>
                <%--<input type="text" id="txtDOB"><br />--%>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Designation:</label>
                <asp:TextBox ID="txtDesignation" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Department:</label>
                <%--<asp:TextBox ID="txtmobnumber" runat="server" CssClass="textBoxStyle"></asp:TextBox>--%>
                <asp:DropDownList ID="ddlDepartment" runat="server" Width="125px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="COMPS">Comps</asp:ListItem>
                    <asp:ListItem Value="IT">IT</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">DOJ College:</label>
                <asp:TextBox ID="txtDOJClg" runat="server" CssClass="textBoxStyle" TextMode="Date"></asp:TextBox>
                <br />
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">DOJ Present Post:</label>
                <asp:TextBox ID="txtDOJPP" runat="server" CssClass="textBoxStyle" TextMode="Date"></asp:TextBox>
                <br />
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Academic Qualification:</label>
                <asp:DropDownList ID="ddlAcademicQuali" runat="server" Width="125px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="BE">BE</asp:ListItem>
                    <asp:ListItem Value="BTech">BTech</asp:ListItem>
                    <asp:ListItem Value="ME">ME</asp:ListItem>
                    <asp:ListItem Value="MTech">MTech</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Teaching Experience:</label>
                <asp:DropDownList ID="ddlTeachingExpiYear" runat="server" Width="90px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="0">0</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownList>
                Years
                <asp:DropDownList ID="ddlTeachingExpiMnt" runat="server" Width="90px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="0">0</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                    <asp:ListItem Value="6">6</asp:ListItem>
                    <asp:ListItem Value="7">7</asp:ListItem>
                    <asp:ListItem Value="8">8</asp:ListItem>
                    <asp:ListItem Value="9">9</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                </asp:DropDownList>
                Months
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Industrial Experience:</label>
                <asp:DropDownList ID="ddlIndustrialExpiYears" runat="server" Width="90px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="0">0</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                </asp:DropDownList>
                Years
                <asp:DropDownList ID="ddlIndustrialExpiMnts" runat="server" Width="90px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem Value="0">0</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                    <asp:ListItem Value="6">6</asp:ListItem>
                    <asp:ListItem Value="7">7</asp:ListItem>
                    <asp:ListItem Value="8">8</asp:ListItem>
                    <asp:ListItem Value="9">9</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                </asp:DropDownList>
                Months
            </div>
            <br />
            <br />
            <div style="text-align: center; margin-right: 35px;">
                <asp:Button runat="server" ID="btnSaveFaculty" class="formbutton" Text="Save Faculty" OnClick="btnSaveFaculty_Click" />
            </div>
        </fieldset>
    </form>
    <div class="address">
        <div class="extra-wrap">
            <h4>Error info (if any):</h4>
            <asp:Label ID="lblmsg" runat="server" Style="margin-left: 130px;" Text=""></asp:Label>

        </div>
    </div>
</asp:Content>
