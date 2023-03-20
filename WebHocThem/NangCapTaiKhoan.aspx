<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="NangCapTaiKhoan.aspx.cs" Inherits="WebHocThem.NangCapTaiKhoan" %>

<%@ Register Src="~/UserControls/ucNangCapTaiKhoan.ascx" TagPrefix="uc1" TagName="ucNangCapTaiKhoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucNangCapTaiKhoan runat="server" id="ucNangCapTaiKhoan" />
</asp:Content>
