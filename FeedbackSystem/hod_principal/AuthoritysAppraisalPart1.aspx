<%@ Page Title="" Language="C#" MasterPageFile="~/hod_principal/HODMaster.Master" AutoEventWireup="true" CodeBehind="AuthoritysAppraisalPart1.aspx.cs" Inherits="FeedbackSystem.hod_principal.AuthoritysAppraisalPart1" %>

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

        label {
            width: 250px;
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

    <h2>Authority's Appraisal Form <span>Form 4</span></h2>
    <p>(To be filled by the Principal in consultation with HOD)</p>
    <p>
        Please select your assessment for every item from 1-20
    </p>
    <div style="text-align: center; margin-top: -35px; margin-left: 230px;"><a href="FacultyLogin.aspx">Go Back!</a></div>
    <br />
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Name of the Faculty Member:</label>
                <asp:TextBox ID="txtFacName" runat="server" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Designation:</label>
                <asp:TextBox ID="txtDesignation" runat="server" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Department:</label>
                <asp:TextBox ID="txtDept" runat="server" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
            </div>

            <br />
            <div style="text-align: center; margin-right: 35px;">
                <asp:Button runat="server" ID="btnContinue" class="formbutton" Text="Confirm & Continue" ForeColor="White" OnClick="btnContinue_Click" />
            </div>
        </fieldset>
    </form>
    <%--<div class="address">
        <div class="extra-wrap">
            <h4>Error info:</h4>
            <p style="color: red;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
        </div>
    </div>--%>

</asp:Content>
