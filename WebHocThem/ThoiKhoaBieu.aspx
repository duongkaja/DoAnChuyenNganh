<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="ThoiKhoaBieu.aspx.cs" Inherits="WebHocThem.ThoiKhoaBieu1" %>

<%@ Register Src="~/UserControls/ucThoiKhoaBieu.ascx" TagPrefix="uc1" TagName="ucThoiKhoaBieu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucThoiKhoaBieu runat="server" ID="ucThoiKhoaBieu" />
</asp:Content>
