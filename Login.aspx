<%@ Page Title="Liên Hệ" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register src="Controls/ContactForm.ascx" tagname="ContactForm" tagprefix="uc1" %>
<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="uc2" TagName="ContactForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  
  
   
    <uc1:ContactForm ID="ContactForm1" runat="server" />
    
  
  
   
</asp:Content>

