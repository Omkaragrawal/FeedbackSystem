<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="SelfAppraisalPart2.aspx.cs" Inherits="FeedbackSystem.faculty.SelfAppraisalPart2" %>

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
            margin-left: 50px;
            border: 1px solid #0086b5;
            background: #006caa;
            color: white;
            font-size: .857em;
            padding: 2px 5px 2px 5px;
            width: 110px;
            margin-bottom: 13px;
        }

        .tooltip {
            position: relative;
            display: inline-block;
        }

            .tooltip .tooltiptext {
                visibility: hidden;
                width: 550px;
                height: auto;
                background-color: white;
                color: black;
                text-align: left;
                border-spacing: 10px;
                border-radius: 6px;
                border: 0.5px solid black;
                padding: 10px 10px 10px 10px;
                position: absolute;
                z-index: 1;
            }

            .tooltip:hover .tooltiptext {
                visibility: visible;
            }

        table {
            background-color: white;
        }

        caption {
            padding-top: 8px;
            padding-bottom: 8px;
            color: #777;
            text-align: left;
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

    <h2>Self Appraisal Form <span>Form 1</span></h2>
    <%--<div style="text-align: center; margin-top: -35px; margin-left: 230px;"><a href="FacultyLogin.aspx">Go Back!</a></div>--%>

    <div class="address">
        <div class="extra-wrap">
            <%--<h4>Error info:</h4>--%>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        </div>
    </div>

    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <ul>
                <li style="height: 190px; width:98%;"><strong>Question 6: [Max Marks 5]</strong><br />
                    Membership /Fellowships of Professional Bodies / Societies / Committees on Education and National Development / Participation in Bodies viz. Chairmanship, Secretaryship etc. 
                    <asp:TextBox ID="txtQ6Ans" runat="server" CssClass="textBoxStyle" Width="555px" Height="50px" TextMode="MultiLine" ValidationGroup="compulsoryAll"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtQ6Marks" runat="server"  CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" CausesValidation="True" MaxLength="1" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ6Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li style="height: 400px; width:60%;"><strong>Question 7: [Max Marks 25]</strong><br />
                    Performance of Students in the Board Examination for the Subjects taught (Theory and Paractical)<br/> during Previous Academic Year<br />
                    <div class="tooltip">
                        <a id="myBtn1">Show More Info..</a>
                        <span class="tooltiptext">Note: The Marks for an individual teacher for this item shall be calculated as follow:<br />
                            For each subject taught, the score shall be first calculated as below:-
                            <br />
                            <br />
                            *   Maximun Score 10<br />
                            Score Obtainable - Pass % :                             
                            <br />
                            <br />
                            **   Maximun Score 10<br />
                            Score Obtainable - Pass % :
                            <br />
                            <br />
                            ***   Maximun Score 10<br />
                            Score Obtainable - Pass % :                                                          
                        </span>
                    </div>
                    <table class="table table-bordered">
                        <tr>
                            <td rowspan="2">S.N.</td>
                            <td rowspan="2">Branch</td>
                            <td rowspan="2">Sub.</td>
                            <td colspan="8">No. of students</td>
                        </tr>
                        <tr>
                            <td>App</td>
                            <td>Pass</td>
                            <td>*Pass %</td>
                            <td>Score</td>
                            <td>**Obtd >= 60% & <=75%</td>
                            <td>Score</td>
                            <td>**Obtd >=75%</td>
                            <td>Score</td>
                        </tr>
                        <tr>
                            <td style="width: 20px;">
                                <asp:TextBox ID="txtQ7AnsR1C1" runat="server" CssClass="textBoxStyle" Width="30px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C2" runat="server" CssClass="textBoxStyle" Width="40px" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C3" runat="server" CssClass="textBoxStyle" Width="40px" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C4" runat="server" CssClass="textBoxStyle" Width="40px" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C5" runat="server" CssClass="textBoxStyle" Width="40px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C6" runat="server" CssClass="textBoxStyle" Width="40px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C7" runat="server" CssClass="textBoxStyle" Width="40px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C8" runat="server" CssClass="textBoxStyle" Width="40px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C9" runat="server" CssClass="textBoxStyle" Width="40px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C10" runat="server" CssClass="textBoxStyle" Width="30px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                            <td style="width: 30px;">
                                <asp:TextBox ID="txtQ7AnsR1C11" runat="server" CssClass="textBoxStyle" Width="30px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">Grand Total of all the Scores =</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtQ7AnsR2C1" runat="server" CssClass="textBoxStyle" Width="50px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>

                            <td colspan="3">Marks = Grand Score / No. of Subjects =</td>
                            <td colspan="2">
                                <asp:TextBox ID="txtQ7AnsR2C2" runat="server" CssClass="textBoxStyle" Width="50px" TextMode="Number" ValidationGroup="compulsoryAll"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <asp:TextBox ID="txtQ7Marks" runat="server" CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" ClientIDMode="Predictable" MaxLength="2" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ7Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li style="height: 290px; width:60%;"><strong>Question 8: [Max. Marks 10]</strong><br />
                    Details of Project Guidance / Industry Sponsored Projects and Promotion of Industry Industry Institute Interaction / Guidance Research / Writing Books / Conducting Special Classes or Training Person / Reviewer of Papers for Journals / Editorship for Journals etc:
                        <table class="table table-bordered">
                            <tr>
                                <td>S.N.</td>
                                <td>Nature of Work</td>
                                <td>Remarks</td>
                            </tr>
                            <tr>
                                <td style="width: 60px;">
                                    <asp:TextBox ID="txtQ8AnsR1C1" runat="server" CssClass="textBoxStyle" Width="50px" TextMode="Number"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ8AnsR1C2" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ8AnsR1C3" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 60px;">
                                    <asp:TextBox ID="txtQ8AnsR2C1" runat="server" CssClass="textBoxStyle" Width="50px" TextMode="Number"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ8AnsR2C2" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ8AnsR2C3" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    <asp:TextBox ID="txtQ8Marks" runat="server" CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" CausesValidation="True" MaxLength="2" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ8Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li style="height: 280px; width:60%"><strong>Question 9: [Max. Marks 10]</strong><br />
                    Seminars / Workshops / Conferences / Symposia / Training Programmes / Orientation Cources / Refresher Cources / Summer or Winter Schools / Continuing Education Programmes etc attended: 
                        <table class="table table-bordered">
                            <tr>
                                <td>S.N.</td>
                                <td>Title</td>
                                <td>Orgnised By</td>
                                <td>Duration</td>
                                <td>Level Of Participation</td>
                            </tr>
                            <tr>
                                <td style="width: 60px;">
                                    <asp:TextBox ID="txtQ9AnsR1C1" runat="server" CssClass="textBoxStyle" Width="50px" TextMode="Number"></asp:TextBox>
                                </td>
                                <td style="width: 100px;">
                                    <asp:TextBox ID="txtQ9AnsR1C2" runat="server" CssClass="textBoxStyle" Width="100px"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ9AnsR1C3" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                                <td style="width: 110px;">
                                    <asp:TextBox ID="txtQ9AnsR1C4" runat="server" CssClass="textBoxStyle" Width="100px"></asp:TextBox>
                                </td>
                                <td style="width: 110px;">
                                    <asp:TextBox ID="txtQ9AnsR1C5" runat="server" CssClass="textBoxStyle" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 60px;">
                                    <asp:TextBox ID="txtQ9AnsR2C1" runat="server" CssClass="textBoxStyle" Width="50px" TextMode="Number"></asp:TextBox>
                                </td>
                                <td style="width: 100px;">
                                    <asp:TextBox ID="txtQ9AnsR2C2" runat="server" CssClass="textBoxStyle" Width="100px"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ9AnsR2C3" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                                <td style="width: 110px;">
                                    <asp:TextBox ID="txtQ9AnsR2C4" runat="server" CssClass="textBoxStyle" Width="100px"></asp:TextBox>
                                </td>
                                <td style="width: 110px;">
                                    <asp:TextBox ID="txtQ9AnsR2C5" runat="server" CssClass="textBoxStyle" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    <asp:TextBox ID="txtQ9Marks" runat="server" CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" CausesValidation="True" MaxLength="2" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ9Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li style="height: 270px; width:60%"><strong>Question 10: [Max. Marks 10]</strong><br />
                    Consultancy Work / Special Efforts taken for College e.g. Improvement in Campus Recruitment, Improving College Admissions, Boosting Reputation of College, Students Counselling etc:
                        <table class="table table-bordered">
                            <tr>
                                <td>S.N.</td>
                                <td>Description of Work</td>
                                <td>Remarks</td>
                            </tr>
                            <tr>
                                <td style="width: 60px;">
                                    <asp:TextBox ID="txtQ10AnsR1C1" runat="server" CssClass="textBoxStyle" Width="50px" TextMode="Number"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ10AnsR1C2" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ10AnsR1C3" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 60px;">
                                    <asp:TextBox ID="txtQ10AnsR2C1" runat="server" CssClass="textBoxStyle" Width="50px" TextMode="Number"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ10AnsR2C2" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                                <td style="width: 200px;">
                                    <asp:TextBox ID="txtQ10AnsR2C3" runat="server" CssClass="textBoxStyle" Width="190px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    <asp:TextBox ID="txtQ10Marks" runat="server" CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" CausesValidation="True" MaxLength="2" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ10Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li style="height: 125px;"><strong>Question 11: [Max Marks 20]</strong><br />
                    Contribution in the Corporate Life of the College
                    <br />
                    <div class="tooltip">
                        <a id="myBtn2">Show More Info..</a>
                        <span class="tooltiptext">a.&nbsp;<strong>Co-curricular Activities:</strong> e.g. Keeping abreats<br />
                            b.&nbsp;<strong>Extra-curricular Activities:</strong> e.g. Keeping abreats
                        </span>
                    </div>
                    <br />
                    <asp:TextBox ID="txtQ11Ans" runat="server" CssClass="textBoxStyle" Width="585px" Height="50px" TextMode="MultiLine"></asp:TextBox>

                    &nbsp;&nbsp;&nbsp;

                    <asp:TextBox ID="txtQ11Marks" runat="server" CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" CausesValidation="True" MaxLength="2" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ11Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li style="height: 125px;"><strong>Question 12: [Max Marks 10]</strong><br />
                    Awards / Special Achievements / Recognition / Honour / Conferred:
                    <br />
                    <asp:TextBox ID="txtQ12Ans" runat="server" CssClass="textBoxStyle" Width="585px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtQ12Marks" runat="server" CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" CausesValidation="True" MaxLength="2" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ11Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li style="height: 125px;"><strong>Question 13: [Max Marks 5]</strong><br />
                    Self Development through upgrading Qualification
                    <br />
                    <asp:TextBox ID="txtQ13Ans" runat="server" CssClass="textBoxStyle" Width="585px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtQ13Marks" runat="server" CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" CausesValidation="True" MaxLength="1" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ11Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li style="height: 185px; width:99%"><strong>Question 14: [Max Marks 5]</strong><br />
                    Use of Library Journals / Books apart from books mentioned in Syllabus to supplement your knowledge and information.
                    <br />
                    <asp:TextBox ID="txtQ14Ans" runat="server" CssClass="textBoxStyle" Width="565px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtQ14Marks" runat="server" CssClass="textBoxStyle" Width="50px" Height="50px" TextMode="Number" CausesValidation="True" MaxLength="1" ValidationGroup="compulsoryAll"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtQ11Marks" Display="Dynamic" Font-Bold="True" ForeColor="Red" SetFocusOnError="True">Inappropriate ans</asp:RequiredFieldValidator>
                </li>

                <li><strong>Question 15:</strong><br />
                    Self Analysis:
                        <table class="table table-bordered" style="width:60%;">
                            <tr>
                                <td>Strengths</td>
                                <td>Weeknesses</td>
                            </tr>
                            <tr>
                                <td style="width: 250px;">
                                    <asp:TextBox ID="txtQ15AnsR1C1" runat="server" CssClass="textBoxStyle" Width="250px"></asp:TextBox>
                                </td>
                                <td style="width: 250px;">
                                    <asp:TextBox ID="txtQ15AnsR1C2" runat="server" CssClass="textBoxStyle" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 250px;">
                                    <asp:TextBox ID="txtQ15AnsR2C1" runat="server" CssClass="textBoxStyle" Width="250px"></asp:TextBox>
                                </td>
                                <td style="width: 250px;">
                                    <asp:TextBox ID="txtQ15AnsR2C2" runat="server" CssClass="textBoxStyle" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 250px;">
                                    <asp:TextBox ID="txtQ15AnsR3C1" runat="server" CssClass="textBoxStyle" Width="250px"></asp:TextBox>
                                </td>
                                <td style="width: 250px;">
                                    <asp:TextBox ID="txtQ15AnsR3C2" runat="server" CssClass="textBoxStyle" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                </li>

                <li style="height: 155px;"><strong>Question 16:</strong><br />
                    Difficulties faced and suggestions for Improvement in Campus Life / Self Growth:
                    <asp:TextBox ID="txtQ16Ans" runat="server" CssClass="textBoxStyle" Width="650px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                </li>

                <li style="height: 165px;"><strong>Question 17:[Marks will be auto-calculated on submit]</strong><br />
                    Your Own Evaluation of Overall Self Appraisal:
                    <asp:RadioButtonList ID="ddlQ17Ans" runat="server" Enabled="false" RepeatColumns="3" RepeatDirection="Horizontal" Width="650px">
                        <asp:ListItem Value="10">Brilliant (100)</asp:ListItem>
                        <asp:ListItem Value="9">Outstanding (90)</asp:ListItem>
                        <asp:ListItem Value="8">Excellent (80)</asp:ListItem>
                        <asp:ListItem Value="7">Very Good (70)</asp:ListItem>
                        <asp:ListItem Value="6">Good (60)</asp:ListItem>
                        <asp:ListItem Value="5">Satisfactory (50)</asp:ListItem>
                        <asp:ListItem Value="4">Mediocre (40)</asp:ListItem>
                        <asp:ListItem Value="3">Poor (30)</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    Remarks:<br />
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="textBoxStyle" Width="650px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                </li>
            </ul>
            <br /><br /><br /><br />
            <br />

            <asp:Button Style="margin-left: 0%;" runat="server" ID="btnSubmit" class="form button" Text="Submit" ForeColor="White" OnClick="btnContinue_Click" BackColor="#3333CC" />

        </fieldset>
    </form>

    <%--<div class="address">
        <div class="extra-wrap">
            <h4>Error info:</h4>
            <p style="color: red;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
        </div>
    </div>--%>
</asp:Content>
