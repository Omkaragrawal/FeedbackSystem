<%@ Page Title="" Language="C#" MasterPageFile="~/students/StudentMaster.Master" AutoEventWireup="true" CodeBehind="StudentsFeedbackPart2.aspx.cs" Inherits="FeedbackSystem.students.StudentsFeedbackPart2" %>

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

    <h2>Student's Feedback Form <span>Form 2</span></h2>
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
            <ul>
                <li style="height: 50px;">1. Knowledge related to the Subject (Theory / Practical)<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q1Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q1Marks" runat="server"  RepeatDirection="Horizontal"  Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 50px;">2. Delivery of Lecture or Demonstration for Practical <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q2Marks">*</asp:RequiredFieldValidator>               
                <asp:RadioButtonList ID="Q2Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 50px;">3. Discipline, Decorum and Control over Class / Practical Batch<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q3Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q3Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>

                <li style="height: 50px;">4. Interaction with Students in Classroom / Laboratory / Staff room<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q4Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q4Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">5. Audibility of Voice in Classroom / Laboratory<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q5Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q5Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>


                <li style="height: 50px;">6. Explanation and Emphasis on Important Points in Classroom / Laboratory<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q6Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q6Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">7. Clarity of Black Board Work in Classroom / Laboratory<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q7Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q7Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">8. Regularity and Punctuality in Class/Laboratory, Presence in Staff room<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q8Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q8Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">9. Clarifying Students Doubts in Classroom / Laboratory / Staff room<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q9Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q9Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">10. Practical Examples / Projects / Ability to make Lecture Interesting<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q10Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q10Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">11. Coverage of Theory Syllabus / Practicals<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q11Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q11Marks" runat="server" RepeatDirection="Horizontal" Width="550px" RepeatColumns="2">
                    <asp:ListItem Value="5">100% along with revision</asp:ListItem>
                    <asp:ListItem Value="4">100% without revision</asp:ListItem>
                    <asp:ListItem Value="3"> 80% to 90%</asp:ListItem>
                    <asp:ListItem Value="2">Less than 80%</asp:ListItem>
                    <asp:ListItem Value="1">Only few topics</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">12. Review of Past Board Question Papers / Viva-Voce for Practical<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q12Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q12Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">13. Evaluation of Class Tests / Home Assignments / Lab records<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q13Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q13Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">14. Attitude towards students in Classroom / Laboratory / Staff room<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q14Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q14Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Positive & Helpful </asp:ListItem>
                    <asp:ListItem Value="4">Friendly</asp:ListItem>
                    <asp:ListItem Value="3">Dictating</asp:ListItem>
                    <asp:ListItem Value="2">Indifferent</asp:ListItem>
                    <asp:ListItem Value="1">Negative</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">15. Opportunity for asking Questions in Classroom / Laboratory / Staff  room <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q15Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q15Marks" runat="server" RepeatDirection="Horizontal" Width="550px" RepeatColumns="2">
                    <asp:ListItem Value="5">Always</asp:ListItem>
                    <asp:ListItem Value="4">Quite Often</asp:ListItem>
                    <asp:ListItem Value="3">Rare</asp:ListItem>
                    <asp:ListItem Value="2">Never</asp:ListItem>
                    <asp:ListItem Value="1">Gets annoyed if question is asked</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">16. information beyond syllabus for more explaning theory and practicle<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q16Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q16Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Always</asp:ListItem>
                    <asp:ListItem Value="4">Quite Often</asp:ListItem>
                    <asp:ListItem Value="3">Rare</asp:ListItem>
                    <asp:ListItem Value="2">Never</asp:ListItem>
                    <asp:ListItem Value="1">Discourages</asp:ListItem>
                </asp:RadioButtonList>
                </li>
               
                <li style="height: 70px;">17. Prior Preparation for Theory Class / Laboratory Work<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q17Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q17Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">always</asp:ListItem>
                    <asp:ListItem Value="4">quite often</asp:ListItem>
                    <asp:ListItem Value="3">Searches topic in the class </asp:ListItem>
                    <asp:ListItem Value="2">    Rare</asp:ListItem>
                    <asp:ListItem Value="1">never</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">18. Notes or Learning Material Provided (Theory / Practical) / Extra Classess<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q18Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q18Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Excellent</asp:ListItem>
                    <asp:ListItem Value="4">VeryGood</asp:ListItem>
                    <asp:ListItem Value="3">Good</asp:ListItem>
                    <asp:ListItem Value="2">Average</asp:ListItem>
                    <asp:ListItem Value="1">Unsatisfactory</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 50px;">19. Career Guidance Motivation for higher study etc.<asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q19Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q19Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Always</asp:ListItem>
                    <asp:ListItem Value="4">Quite Often</asp:ListItem>
                    <asp:ListItem Value="3">Rare</asp:ListItem>
                    <asp:ListItem Value="2">Never</asp:ListItem>
                    <asp:ListItem Value="1">Discourages</asp:ListItem>
                </asp:RadioButtonList>
                </li>
                <li style="height: 80px;">20. Threatening in or outside Classroom / Laboratory / Staff room / forces for Personal &<br />Paid Tution at his residence or outside college premises <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server"
                        ErrorMessage="" Font-Size="Large" ControlToValidate="Q20Marks">*</asp:RequiredFieldValidator>
                <asp:RadioButtonList ID="Q20Marks" runat="server" RepeatDirection="Horizontal" Width="550px">
                    <asp:ListItem Value="5">Discourages even others</asp:ListItem>
                    <asp:ListItem Value="4">Never</asp:ListItem>
                    <asp:ListItem Value="3">Rare</asp:ListItem>
                    <asp:ListItem Value="2">Quite Often</asp:ListItem>
                    <asp:ListItem Value="1">All the Time</asp:ListItem>
                </asp:RadioButtonList>
                </li>


                <li style="height: 125px;"><strong>Question 17:</strong><br />
                    Any Other Suggestion:<br />
                    <asp:TextBox ID="txtRemarks" runat="server" CssClass="textBoxStyle" Width="650px" Height="50px" TextMode="MultiLine"></asp:TextBox>
                </li>
            </ul>


            <asp:Button Style="margin-left: 0%;" runat="server" ID="btnSubmit" class="formbutton" Text="Submit" ForeColor="White" OnClick="btnSubmit_Click" />

        </fieldset>
    </form>



</asp:Content>
