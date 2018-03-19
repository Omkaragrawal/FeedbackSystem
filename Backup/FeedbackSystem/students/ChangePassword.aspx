<%@ Page Title="" Language="C#" MasterPageFile="~/students/StudentMaster.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="FeedbackSystem.students.ChangePassword" %>

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
            width: 110px;
            margin-bottom: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Change Password</h2>
    <br />
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Student Id/User Name:</label>
                <asp:TextBox ID="txtusername" runat="server" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Old Password:</label>
                <asp:TextBox ID="txtpwd" runat="server" CssClass="textBoxStyle" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">New Password:</label>
                <asp:TextBox ID="txtnewpwd" runat="server" CssClass="textBoxStyle" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Confirm Password:</label>
                <asp:TextBox ID="txtconfpwd" runat="server" CssClass="textBoxStyle" TextMode="Password"></asp:TextBox>
            </div>
            <br />
            <div style="text-align: center; margin-right: 35px;">
                <asp:Button runat="server" ID="btnUpdatePwd" class="formbutton" Text="Update Password" />
            </div>
        </fieldset>
    </form>
    <div class="address">
        <div class="extra-wrap">
            <h4>Error info:</h4>
            <p style="color: red;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
        </div>
    </div>

</asp:Content>
