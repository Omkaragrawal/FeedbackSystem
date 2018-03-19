<%@ Page Title="" Language="C#" MasterPageFile="~/hod_principal/HODMaster.Master" AutoEventWireup="true" CodeBehind="AuthoritysAppraisalPart2.aspx.cs" Inherits="FeedbackSystem.hod_principal.AuthoritysAppraisalPart2" %>

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
                 <li style="height: 70px;">1. <strong>Loyality towards the institute: </strong>Supports and follows Institute's Policies and Guidelines, Identifying the Organization's Goals and Values as Complementing One's Own<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q1Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q1Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 85px;">2. <strong>Punctuality and Regularity: </strong>Comes in Time; Remains Avaiable in the Institute during Working Hours; Does not remain Absent Frequently and Without Reason;Getting Work done in Time and be in Time for Jobs<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q2Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q2Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 80px;">3. <strong>Initiative: </strong>Introducing One's own Thought or Action into a Situation; Comes with ideas / Suggestions; Tells Problems also; Ability to Plan, Develop, Contribute and Carry Away New Ideas and Methods<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q3Marks">*</asp:RequiredFieldValidator>
                    <asp:RadioButtonList ID="Q3Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                        <asp:ListItem Value="5">Excellent</asp:ListItem>
                        <asp:ListItem Value="4">VeryGood</asp:ListItem>
                        <asp:ListItem Value="3">Good</asp:ListItem>
                        <asp:ListItem Value="2">Average</asp:ListItem>
                        <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                    </asp:RadioButtonList>
                </li>

                <li style="height: 70px;">4. <strong>Discharge of Duties and Obedience: </strong>Accepts Responsibilities and Completes them; Willingness to Carryout Legitimate Instructions without Resistance and Objections<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q4Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q4Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">5. <strong>Professional Competence:</strong> Knowledge of Theory Subjects Teaching or Practicals Conducting<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q5Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q5Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>


                <li style="height: 80px;">6. <strong>Oral Communication Skills: </strong>Speaks Grammatically Correctly and Effectively; Transforming a Thought from One Person to Another by Speech adjusting to Audience Reaction<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q6Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q6Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">7. <strong>Written Communication Skills:</strong>Writes Grammatically Correct and Effectively; Transforming t Thought from One Person to Another by Writing without the Possibility of Response to Audience Reaction<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q7Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q7Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">8. <strong>Leadership Qualities: </strong>Gives Clear Directions and Listens to Colleagues; Ability to Direct, Manage, Organize and Achieve independently; Getting People Work towards Reaching an Objective<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q8Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q8Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">9. <strong>Organizational Capabilities : </strong>Effective in a Team Work<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q9Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q9Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">10. Relationship with Teaching Faculty Members / Subordinates / Students <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q10Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q10Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">11. Ability to Get the Work Done from the Supporting Staff<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q11Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q11Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">12. Ability to Control, Motivate, and Guide the Students<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q12Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q12Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">13. Temperament / Behaviour<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q13Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q13Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">14. Efforts made for Updating Knowledge <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q14Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q14Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">15. <strong>Functional Ability:</strong>Operating Successfully in One's Environment <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q15Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q15Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">16. <strong>Coordination / Planning: </strong>Developing a course of action to achieve an objective<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q16Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q16Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">17. <strong>Sincerity / Cooperating:</strong>Willingness to Cooperate with Superiors, Fellow Colleagues, Subordinates, and Students in Achieving Organizational Goals.<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q17Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q17Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">18. <strong>Maintenance of Records:</strong>e.g. Teaching Diary, Lecture Notes, Practicals, etc.<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q18Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q18Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">19. <strong>Time Management: </strong>Does not While Away Time in Futile Chat / Gossiping<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q19Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q19Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">20. <strong>Innovativeness & Creativity: </strong>Generates New Ideas, Develops Alternative Solutions to Problems<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q20Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q20Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 145px;"><strong>Question 21:</strong><br />
                    Any Other Suggestion:<br />
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="textBoxStyle" Width="650px" Height="50px" TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="txtRemarks">*</asp:RequiredFieldValidator>
                </li>
            </ul>

            <asp:Button runat="server" Style="margin-left: 0%;" ID="btnSubmit" class="formbutton" Text="Submit" ForeColor="White" OnClick="btnSubmit_Click" />

        </fieldset>
    </form>
<%--    <div class="address">
        <div class="extra-wrap">
            <h4>Error info:</h4>
            <p style="color: red;">Error message will be displayed here(If any).</p>
        </div>
    </div>--%>

</asp:Content>
