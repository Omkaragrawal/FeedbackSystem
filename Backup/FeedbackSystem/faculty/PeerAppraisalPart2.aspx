<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="PeerAppraisalPart2.aspx.cs" Inherits="FeedbackSystem.faculty.PeerAppraisalPart2" %>

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

    <h2>Peer's Feedback Form <span>Form 2</span></h2>
    <div style="text-align: center; margin-top: -35px; margin-left: 230px;"><a href="FacultyLogin.aspx">Go Back!</a></div>
    <br />
    <div class="address">
        <div class="extra-wrap">
            <%--<h4>Error info:</h4>--%>
            <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        </div>
    </div>
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <ul style="line-break: auto;">
                <li style="height: 70px;">1. <strong>Commitment to total organization:</strong> Loyality to one's own departmental sub-unit goals, but transcended by dedication to college level goals<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q1Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q1Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 70px;">2. <strong>Drive and Self-Motivation</strong>Willingness and ability to start & complete tasks independently with initiative and without always waiting for instructions<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q2Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q2Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Willingly always</asp:ListItem>
                    <asp:ListItem Value="4">Most of the times</asp:ListItem>
                    <asp:ListItem Value="3">When asked</asp:ListItem>
                    <asp:ListItem Value="2">Rarely</asp:ListItem>
                    <asp:ListItem Value="1">Never</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 70px;">3. <strong>Relationship / Behaviour / Attitude towards Colleagues and Students:</strong><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q3Marks">*</asp:RequiredFieldValidator>
                    <asp:RadioButtonList ID="Q3Marks" runat="server" RepeatDirection="Horizontal" Width="550px" RepeatColumns="2">
                        <asp:ListItem Value="5">Very social / Positive & Helpful</asp:ListItem>
                        <asp:ListItem Value="4">Professional</asp:ListItem>
                        <asp:ListItem Value="3">Formal</asp:ListItem>
                        <asp:ListItem Value="2">Introvertal</asp:ListItem>
                        <asp:ListItem Value="1">Unsocial</asp:ListItem>
                    </asp:RadioButtonList>
                </li>

                <li style="height: 80px;">4. <strong>Concern for Colleague's Development: </strong>Willingness and ability to understand strength and weeknesses of the colleagues and facilitate their development<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q4Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q4Marks" runat="server" RepeatDirection="Horizontal" Width="550px" RepeatColumns="2">
                    <asp:ListItem Value="5">Always Positive & Cooperative</asp:ListItem>
                    <asp:ListItem Value="4">Generally willing</asp:ListItem>
                    <asp:ListItem Value="3">Indifferent</asp:ListItem>
                    <asp:ListItem Value="2">Critical</asp:ListItem>
                    <asp:ListItem Value="1">Negative</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 80px;">5. <strong>Inovation and Creativity: </strong>Willingness and ability to come up with ideas and alternatives for solving job-related problems as well as improvement of systems<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q5Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q5Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">6. Participation in Inter-departmental / Intra-departmental Activities<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q6Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q6Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                     <asp:ListItem Value="5">Willingly always</asp:ListItem>
                    <asp:ListItem Value="4">Most of the times </asp:ListItem>
                    <asp:ListItem Value="3">When asked </asp:ListItem>
                    <asp:ListItem Value="2">Rarely</asp:ListItem>
                    <asp:ListItem Value="1">Never</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">7. <strong>Team Membership: </strong>Willingness and ability to work harmoniously with superiors, peers, and subordinates for earning and retaining membership of the team.<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q7Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q7Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Willingly always</asp:ListItem>
                    <asp:ListItem Value="4">Most of the times </asp:ListItem>
                    <asp:ListItem Value="3">When asked </asp:ListItem>
                    <asp:ListItem Value="2">Rarely</asp:ListItem>
                    <asp:ListItem Value="1">Never</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">8. <strong>Time Management:</strong>Utilizes time in fruitful work, does not while away time in futile chat or gossiping<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q8Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q8Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">9. Follow up & Commitment towards various Schedules (e.g. paper setting, valuation, submission of Reports, Maintenance of Records, etc.)<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q9Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q9Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">10. <strong>Flexibility / Adaptability:</strong>Adjustment to changing  internal and external conditions, both personal and impersonal <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q10Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q10Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 145px;"><strong>Question 11:</strong><br />
                    Any Other Suggestion:<br />
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="textBoxStyle" Width="650px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                </li>
            </ul>

            <br />

            <asp:Button runat="server" Style="margin-left: 0%;" ID="btnSubmit" class="formbutton" Text="Submit" ForeColor="White" OnClick="btnSubmit_Click" />

        </fieldset>
    </form>
    <%--<div class="address">
        <div class="extra-wrap">
            <h4>Error info:</h4>
            <p style="color: red;">Error message will be displayed here(If any).</p>
        </div>
    </div>--%>



</asp:Content>
