<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="FeedbackSystem.AdminLogin" %>

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
            margin-left:233px;
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

    <h2>Administrator <span>Login</span></h2>
    <form id="contactsform" runat="server" class="loginform">
        <fieldset>
            <div class="field">
                <label class="formlabel">User Name:</label>
                <asp:textbox runat="server" class="textbox" ID="txtUsername"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="formlabel">Password:</label>
                <asp:textbox runat="server" class="textbox" TextMode="Password" ID="txtPassword"></asp:textbox>
            </div>
            <br />
            <div>
                <asp:button runat="server" id="btnAdminLogin" class="formbutton" text="Submit" onclick="btnAdminLogin_Click" />
                <br /><asp:label runat="server" id="lblMsg" style="color:red;margin-left:204px;" text=""></asp:label>
            </div>
        </fieldset>
    </form>

</asp:Content>
