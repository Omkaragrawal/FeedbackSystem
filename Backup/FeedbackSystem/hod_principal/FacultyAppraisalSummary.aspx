<%@ Page Title="" Language="C#" MasterPageFile="~/hod_principal/HODMaster.Master" AutoEventWireup="true" CodeBehind="FacultyAppraisalSummary.aspx.cs" Inherits="FeedbackSystem.hod_principal.FacultyAppraisalSummary" %>

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

        th {
            text-align: left;
        }

        .table {
            width: 100%;
            max-width: 100%;
            margin-bottom: 20px;
        }

            .table > tbody > tr > td, .table > tbody > tr > th, .table > tfoot > tr > td, .table > tfoot > tr > th, .table > thead > tr > td, .table > thead > tr > th {
                padding: 8px;
                line-height: 1.42857143;
                vertical-align: top;
                border-top: 1px solid #ddd;
            }

            .table > thead > tr > th {
                vertical-align: bottom;
                border-bottom: 2px solid #ddd;
            }

            .table > caption + thead > tr:first-child > td, .table > caption + thead > tr:first-child > th, .table > colgroup + thead > tr:first-child > td, .table > colgroup + thead > tr:first-child > th, .table > thead:first-child > tr:first-child > td, .table > thead:first-child > tr:first-child > th {
                border-top: 0;
            }

            .table > tbody + tbody {
                border-top: 2px solid #ddd;
            }

            .table .table {
                background-color: #fff;
            }

        .table-condensed > tbody > tr > td, .table-condensed > tbody > tr > th, .table-condensed > tfoot > tr > td, .table-condensed > tfoot > tr > th, .table-condensed > thead > tr > td, .table-condensed > thead > tr > th {
            padding: 5px;
        }

        .table-bordered {
            border: 1px solid #ddd;
        }

            .table-bordered > tbody > tr > td, .table-bordered > tbody > tr > th, .table-bordered > tfoot > tr > td, .table-bordered > tfoot > tr > th, .table-bordered > thead > tr > td, .table-bordered > thead > tr > th {
                border: 1px solid #ddd;
            }

            .table-bordered > thead > tr > td, .table-bordered > thead > tr > th {
                border-bottom-width: 2px;
            }

        .table-striped > tbody > tr:nth-of-type(odd) {
            background-color: #f9f9f9;
        }

        .table-hover > tbody > tr:hover {
            background-color: #f5f5f5;
        }

        table col[class*=col-] {
            position: static;
            display: table-column;
            float: none;
        }

        table td[class*=col-], table th[class*=col-] {
            position: static;
            display: table-cell;
            float: none;
        }

        .table > tbody > tr.active > td, .table > tbody > tr.active > th, .table > tbody > tr > td.active, .table > tbody > tr > th.active, .table > tfoot > tr.active > td, .table > tfoot > tr.active > th, .table > tfoot > tr > td.active, .table > tfoot > tr > th.active, .table > thead > tr.active > td, .table > thead > tr.active > th, .table > thead > tr > td.active, .table > thead > tr > th.active {
            background-color: #f5f5f5;
        }

        .table-hover > tbody > tr.active:hover > td, .table-hover > tbody > tr.active:hover > th, .table-hover > tbody > tr:hover > .active, .table-hover > tbody > tr > td.active:hover, .table-hover > tbody > tr > th.active:hover {
            background-color: #e8e8e8;
        }

        .table > tbody > tr.success > td, .table > tbody > tr.success > th, .table > tbody > tr > td.success, .table > tbody > tr > th.success, .table > tfoot > tr.success > td, .table > tfoot > tr.success > th, .table > tfoot > tr > td.success, .table > tfoot > tr > th.success, .table > thead > tr.success > td, .table > thead > tr.success > th, .table > thead > tr > td.success, .table > thead > tr > th.success {
            background-color: #dff0d8;
        }

        .table-hover > tbody > tr.success:hover > td, .table-hover > tbody > tr.success:hover > th, .table-hover > tbody > tr:hover > .success, .table-hover > tbody > tr > td.success:hover, .table-hover > tbody > tr > th.success:hover {
            background-color: #d0e9c6;
        }

        .table > tbody > tr.info > td, .table > tbody > tr.info > th, .table > tbody > tr > td.info, .table > tbody > tr > th.info, .table > tfoot > tr.info > td, .table > tfoot > tr.info > th, .table > tfoot > tr > td.info, .table > tfoot > tr > th.info, .table > thead > tr.info > td, .table > thead > tr.info > th, .table > thead > tr > td.info, .table > thead > tr > th.info {
            background-color: #d9edf7;
        }

        .table-hover > tbody > tr.info:hover > td, .table-hover > tbody > tr.info:hover > th, .table-hover > tbody > tr:hover > .info, .table-hover > tbody > tr > td.info:hover, .table-hover > tbody > tr > th.info:hover {
            background-color: #c4e3f3;
        }

        .table > tbody > tr.warning > td, .table > tbody > tr.warning > th, .table > tbody > tr > td.warning, .table > tbody > tr > th.warning, .table > tfoot > tr.warning > td, .table > tfoot > tr.warning > th, .table > tfoot > tr > td.warning, .table > tfoot > tr > th.warning, .table > thead > tr.warning > td, .table > thead > tr.warning > th, .table > thead > tr > td.warning, .table > thead > tr > th.warning {
            background-color: #fcf8e3;
        }

        .table-hover > tbody > tr.warning:hover > td, .table-hover > tbody > tr.warning:hover > th, .table-hover > tbody > tr:hover > .warning, .table-hover > tbody > tr > td.warning:hover, .table-hover > tbody > tr > th.warning:hover {
            background-color: #faf2cc;
        }

        .table > tbody > tr.danger > td, .table > tbody > tr.danger > th, .table > tbody > tr > td.danger, .table > tbody > tr > th.danger, .table > tfoot > tr.danger > td, .table > tfoot > tr.danger > th, .table > tfoot > tr > td.danger, .table > tfoot > tr > th.danger, .table > thead > tr.danger > td, .table > thead > tr.danger > th, .table > thead > tr > td.danger, .table > thead > tr > th.danger {
            background-color: #f2dede;
        }

        .table-hover > tbody > tr.danger:hover > td, .table-hover > tbody > tr.danger:hover > th, .table-hover > tbody > tr:hover > .danger, .table-hover > tbody > tr > td.danger:hover, .table-hover > tbody > tr > th.danger:hover {
            background-color: #ebcccc;
        }

        .table-responsive {
            min-height: .01%;
            overflow-x: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Summary Appraisal Form <span></span></h2>
    <p>(To be filled by the HOD / Dean / Principal / Director / Management)</p>
    <br />
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Name of the Faculty Member:</label>
                <asp:TextBox ID="txtFacName" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Designation:</label>
                <asp:TextBox ID="txtDesignation" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Department:</label>
                <asp:TextBox ID="txtDept" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />

            <table class="table table-bordered">
                <tr>
                    <td>A.</td>
                    <td>Form-1 Marks (Max. Marks 100)</td>
                    <td>Marks Obtained</td>
                    <td>
                        <asp:TextBox ID="txtForm1Total" Enabled="false" runat="server" Width="80px" CssClass="textBoxStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>B.</td>
                    <td>Form-2 Marks (Max. Marks 100)</td>
                    <td>Marks Obtained</td>
                    <td>
                        <asp:TextBox ID="txtForm2Total" runat="server" Width="80px" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>C.</td>
                    <td>Form-3 Marks (Max. Marks 50)</td>
                    <br />
                    <td>Marks Obtained</td>
                    <td>
                        <asp:TextBox ID="txtForm3Total" runat="server" Width="80px" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>D.</td>
                    <td>Form-4 Marks (Max. Marks 100)</td>
                    <td>Marks Obtained</td>
                    <td>
                        <asp:TextBox ID="txtForm4Total" runat="server" Width="80px" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">Total Marks Obtained (Out of 350) A + B + C + D</td>
                    <td>
                        <asp:TextBox ID="txtGrandTotal" runat="server" Width="80px" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">% Of the Marks Obtained</td>
                    <td>
                        <asp:TextBox ID="txtGrandTotalPerc" runat="server" Enabled="false" Width="80px" CssClass="textBoxStyle"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <ul style="line-break: auto;">
                <li style="height: 70px;">Result of 360 Appriasal:
                <asp:RadioButtonList ID="rdbFinalGrade" runat="server" Enabled="false" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent (=80%)</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood (=70%)</asp:ListItem>
                    <asp:ListItem Value="3">Good (=60%)</asp:ListItem>
                    <asp:ListItem Value="2">Satisfactory (=50%)</asp:ListItem>
                    <asp:ListItem Value="1">Poor (<50%)</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 115px;">Remarks / Action to be Conveyed to the Teaching Faculty Member:
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="textBoxStyle" Width="650px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                </li>
            </ul>

            <asp:Button runat="server" Width="170px" Style="margin-left: 0%;" 
                ID="btnContinue" class="formbutton" Text="print" ForeColor="White"
                onclick="btnContinue_Click" />

        </fieldset>
    </form>
    <%--<div class="address">
        <div class="extra-wrap">
            <h4>Error info:</h4>
            <p style="color: red;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
        </div>
    </div>--%>
</asp:Content>
