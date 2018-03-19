<%@ Page Title="" Language="C#" MasterPageFile="~/students/StudentMaster.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="FeedbackSystem.students.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>My Profile</h2>
    <br />
    <form id="contactsform" action="#" runat="server">
        <fieldset>
            <div class="field">
                <label class="labelStyle">Student Name:</label>
                <asp:TextBox ID="txtusername" runat="server" Enabled="false" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">DOB:</label>
                <asp:TextBox ID="txtdob" runat="server" CssClass="textBoxStyle" ></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Academic Year:</label>
                <asp:TextBox ID="txtacayear" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
            <br />
            <div class="field">
                <label class="labelStyle">Branch:</label>
                <asp:TextBox ID="txtbranch" runat="server" CssClass="textBoxStyle"></asp:TextBox>
            </div>
        </fieldset>
    </form>
    <div class="address">
        <div class="extra-wrap">
            
        </div>
    </div>
</asp:Content>
