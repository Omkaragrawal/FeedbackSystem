<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="StudentSignUp.aspx.cs" Inherits="FeedbackSystem.StudentSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
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
    <h2>Student <span>Sign Up!</span></h2>
    <div style="text-align: center; margin-top: -35px; margin-left: 230px;"><a href="StudentLogin.aspx">Go Back!</a></div>
    <br />
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Student Name:</label>
                <asp:TextBox ID="txtStdName" runat="server" CssClass="textBoxStyle"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="*" ForeColor="Red" ControlToValidate="txtStdName">
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Student Id/User Name:</label>
                <asp:TextBox ID="txtusername" runat="server" CssClass="textBoxStyle"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="*" ForeColor="Red" ControlToValidate="txtusername">
                </asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Password:</label>
                <asp:TextBox ID="txtpwd" runat="server" CssClass="textBoxStyle" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Confirm Password:</label>
                <asp:TextBox ID="txtconfpwd" runat="server" CssClass="textBoxStyle" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Academic Year:</label>
                <asp:DropDownList ID="ddlAcademicYear" runat="server" Width="125px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem>FirstYear</asp:ListItem>
                    <asp:ListItem>SecondYear</asp:ListItem>
                    <asp:ListItem>ThirdYear</asp:ListItem>
                    <asp:ListItem>FourthYear</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Branch:</label>
                <asp:DropDownList ID="ddlBranch" runat="server" Width="125px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem>Comps</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Email Address:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Mobile Number:</label>
                <asp:TextBox ID="txtmobnumber" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div style="text-align: center; margin-right: 35px;">
                <asp:Button runat="server" ID="btnSaveStudent" class="formbutton" Text="Save Student" OnClick="btnSaveStudent_Click" />
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
