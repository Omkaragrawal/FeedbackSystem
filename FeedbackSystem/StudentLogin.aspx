<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="FeedbackSystem.StudentLogin" %>

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
            width: 171px;
            margin-bottom: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Student <span>Login</span></h2>
    <form id="contactsform" runat="server" class="loginform">
        <fieldset>
            <div class="field">
                <label class="formlabel">User Name:</label>
                <asp:TextBox runat="server" class="textbox" ID="txtUsername"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ErrorMessage="" ControlToValidate="txtUsername">*</asp:RequiredFieldValidator>
            </div>
            <br />
            <div class="field">
                <label class="formlabel">Password:</label>
                <asp:TextBox runat="server" class="textbox" TextMode="Password" ID="txtPassword"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="" ControlToValidate="txtPassword">*</asp:RequiredFieldValidator>
            </div>
            <br />
            <div>
                <asp:Button runat="server" ID="btnStdLogin" class="formbutton" Text="Submit" ForeColor="White" OnClick="btnStdLogin_Click" />
                <div style="text-align: center; margin-right: 30px;">Don't have account?&nbsp;&nbsp;<a href="StudentSignUp.aspx">Sign Up!</a></div>
                <br />
                <asp:Label runat="server" ID="lblMsg" Style="color: red; margin-left: 204px;" Text=""></asp:Label>
            </div>
        </fieldset>
    </form>

</asp:Content>
