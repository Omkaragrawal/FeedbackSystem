<%@ Page Title="" Language="C#" MasterPageFile="~/admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ApproveRejectStudent.aspx.cs" Inherits="FeedbackSystem.admin.ApproveRejectStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .formbutton {
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
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Student Name:</label>
                <asp:TextBox ID="txtStdName" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Your E-mail:</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Academic Year:</label>
                <asp:DropDownList ID="ddlAcademicYear" runat="server" Width="125px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem>FirstYear</asp:ListItem>
                    <asp:ListItem>SecondYear</asp:ListItem>
                    <asp:ListItem>ThirdYear</asp:ListItem>
                    <asp:ListItem>FourthYear</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <div class="field extra">
                <label class="labelStyle">Branch:</label>
                <asp:DropDownList ID="ddlBranch" runat="server" Width="125px" CssClass="textBoxStyle">
                    <asp:ListItem Value="-1">--Select--</asp:ListItem>
                    <asp:ListItem>Comps</asp:ListItem>
                    <asp:ListItem>IT</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />
            <br />
            <div style="text-align: center">
                <asp:Button ID="btnApproveStudent" runat="server" Text="Approve Student!" class="formbutton" OnClick="btnApproveStudent_Click"/>
                <asp:Button ID="btnRejectStudent" runat="server" Text="Reject Student!" class="formbutton" OnClick="btnRejectStudent_Click" />
                <asp:Button ID="btnBack" runat="server" Text="Go Back!" class="formbutton" OnClick="btnBack_Click" />
            </div>
        </fieldset>
    </form>
    <br />
    <div class="address">
        <div class="extra-wrap">
            <h4>Error info:</h4>
            <p style="color: red;">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.</p>
        </div>
    </div>
</asp:Content>
