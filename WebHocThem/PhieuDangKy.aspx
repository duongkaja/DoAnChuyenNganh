<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="PhieuDangKy.aspx.cs" Inherits="WebHocThem.PhieuDangKy1" %>

<%@ Register Src="~/UserControls/ucPhieuDangKy.ascx" TagPrefix="uc1" TagName="ucPhieuDangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucPhieuDangKy runat="server" id="ucPhieuDangKy" />
</asp:Content>
