<%@ Page Title="" Language="C#" MasterPageFile="~/faculty/FacultyMaster.Master" AutoEventWireup="true" CodeBehind="AuthoritysAppraisalPart2.aspx.cs" Inherits="FeedbackSystem.faculty.AuthoritysAppraisalPart2" %>

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
                <li style="height: 70px;">1. <strong>Loyality towards the institute: </strong>Supports and follows Institute's Policies and Guidelines, Identifying the Organization's Goals and Values as Complementing One's Own
                <asp:RadioButtonList ID="Q1Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 85px;">2. <strong>Punctuality and Regularity: </strong>Comes in Time; Remains Avaiable in the Institute during Working Hours; Does not remain Absent Frequently and Without Reason;Getting Work done in Time and be in Time for Jobs
                <asp:RadioButtonList ID="Q2Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 80px;">3. <strong>Initiative: </strong>Introducing One's own Thought or Action into a Situation; Comes with ideas / Suggestions; Tells Problems also; Ability to Plan, Develop, Contribute and Carry Away New Ideas and Methods
                    <asp:RadioButtonList ID="Q3Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                        <asp:ListItem Value="5">Excellent</asp:ListItem>
                        <asp:ListItem Value="4">VeryGood</asp:ListItem>
                        <asp:ListItem Value="3">Good</asp:ListItem>
                        <asp:ListItem Value="2">Average</asp:ListItem>
                        <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                    </asp:RadioButtonList>
                </li>

                <li style="height: 70px;">4. <strong>Discharge of Duties and Obedience: </strong>Accepts Responsibilities and Completes them; Willingness to Carryout Legitimate Instructions without Resistance and Objections
                <asp:RadioButtonList ID="Q4Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">5. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q5Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>


                <li style="height: 50px;">6. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q6Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">7. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q7Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">8. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q8Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">9. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q9Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">10. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q10Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">11. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q11Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">12. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q12Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">13. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q13Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">14. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q14Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">15. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q15Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">16. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q16Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">17. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q17Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">18. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q18Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">19. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q19Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">20. Audibility of Voice in Classroom / Laboratory
                <asp:RadioButtonList ID="Q20Marks" runat="server" RepeatDirection="Horizontal" Width="650px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 105px;"><strong>Question 17:</strong><br />
                    Any Other Suggestion:<br />
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="textBoxStyle" Width="650px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                </li>
            </ul>

            <%--<asp:Button runat="server" Style="margin-left: 0%;" ID="btnSubmit" class="formbutton" Text="Submit" ForeColor="White" OnClick="btnSubmit_Click" />--%>

        </fieldset>
    </form>
</asp:Content>
