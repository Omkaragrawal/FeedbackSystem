<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="PeerAppraisalPart1.aspx.cs" Inherits="FeedbackSystem.faculty.PeerAppraisalPart1" %>

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
        width:250px;
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

    <h2>Peer's Appraisal Form <span>Form 3</span></h2>
    <p>(To be filled by each student for each theory/practical subject attended during the previous or current session. The student's attendance in the corresponding theory/practical subject should be more than 75%)</p>
    <p>
        Dear teaching faculty member,
        <br />
        The following ....
    </p>
    <div style="text-align: center; margin-top: -35px; margin-left: 230px;"><a href="FacultyLogin.aspx">Go Back!</a></div>
    <br />
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Name of the Faculty Member:</label>
                <asp:textbox id="txtFacName" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Designation:</label>
                <asp:textbox id="txtdesignation" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Department:</label>
                <asp:textbox id="txtdept" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>

            <br />
            <div style="text-align: center; margin-right: 85px;">
                <asp:button runat="server" id="btnContinue" class="formbutton" Width="150px" text="Confirm & Continue" ForeColor="White" onclick="btnContinue_Click" />
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
