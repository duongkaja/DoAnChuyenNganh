<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="KhoaHoc.aspx.cs" Inherits="WebHocThem.KhoaHoc1" %>

<%@ Register Src="~/UserControls/ucKhoaHoc.ascx" TagPrefix="uc1" TagName="ucKhoaHoc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucKhoaHoc runat="server" id="ucKhoaHoc" />
</asp:Content>
