<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="LopHocKH.aspx.cs" Inherits="WebHocThem.LopHocKH" %>

<%@ Register Src="~/UserControls/ucLopHocKH.ascx" TagPrefix="uc1" TagName="ucLopHocKH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucLopHocKH runat="server" id="ucLopHocKH" />
</asp:Content>
