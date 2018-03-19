<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="FeedbackSystem.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <h2>Our <span>Contacts</span></h2>
        <div class="address">
          <address>
          <strong>Zip Code:</strong>400101<br>
          <strong>Country:</strong>INDIA<br>
          <strong>Telephone:</strong>2854 3540, 2854 2481, 2854 7707<br>
          <strong>Fax:</strong>2854 1993
          </address>
          <div class="extra-wrap">
            <h4>COLLEGE ADDRESS:</h4>
            <p>Zagdu Singh Charitable Trust's Thakur Polytechnic, Thakur Complex,West to Western Express Highway, Kandivli (E), Mumbai - 400 101</p>
          </div>
        </div>
        <h2>Contact <span>Form</span></h2>
        <form id="contactsform" action="#">
          <fieldset>
            <div class="field">
              <label>Your Name:</label>
              <input type="text" value=""/>
            </div>
            <div class="field">
              <label>Your E-mail:</label>
              <input type="email" value=""/>
            </div>
            <div class="field">
              <label>Your Website:</label>
              <input type="text" value=""/>
            </div>
            <div class="field extra">
              <label>Your Message:</label>
              <textarea cols="1" rows="1"></textarea>
            </div>
            <div class="alignright"><a href="#">Send Your Message!</a></div>
          </fieldset>
        </form>


</asp:Content>
