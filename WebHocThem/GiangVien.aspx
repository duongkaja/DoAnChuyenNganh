<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="GiangVien.aspx.cs" Inherits="WebHocThem.GiangVien" %>
<%@ Register assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.WebControls" tagprefix="asp" %>
<%@ Register Src="~/UserControls/ucGiangVien.ascx" TagPrefix="uc1" TagName="ucGiangVien" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <uc1:ucGiangVien runat="server" ID="ucGiangVien" />
</asp:Content>
