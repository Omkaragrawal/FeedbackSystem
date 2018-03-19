<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="SelfAppraisalPart1.aspx.cs" Inherits="FeedbackSystem.faculty.SelfAppraisal" %>

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

    <h2>Self Appraisal Form <span>Form 1</span></h2>
   <%-- <div style="text-align: center; margin-top: -35px; margin-left: 230px;"><a href="FacultyLogin.aspx">Go Back!</a></div>--%>
    <br />
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Faculty Name:</label>
                <asp:textbox id="txtFacName" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Date of Birth:</label>
                <asp:textbox id="txtDOB" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Designation:</label>
                <asp:textbox id="txtdesi" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Department:</label>
                <asp:textbox id="txtdept" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">DOJ the College:</label>
                <asp:textbox id="txtDOJClg" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">DOJ the Present Post:</label>
                <asp:textbox id="txtDOJPP" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Academic Qualification:</label>
                <asp:textbox id="txtAcadQuali" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Teaching Experience:</label>
                <asp:textbox id="txtTeachExpi" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Industrial Experience:</label>
                <asp:textbox id="txtIndusExpi" runat="server" Enabled="false" cssclass="textBoxStyle"></asp:textbox>
            </div>
            <br />
            <div style="text-align: center; margin-right: 50px;">
                <asp:button runat="server" id="btnContinue" class="formbutton" text="Confirm & Continue" ForeColor="White" Width="120px" OnClick="btnContinue_Click" />
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
