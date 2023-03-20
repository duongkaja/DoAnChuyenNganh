<%@ Page Title="" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="LopHoc.aspx.cs" Inherits="WebHocThem.Lop1" %>

<%@ Register Src="~/UserControls/ucLopHoc.ascx" TagPrefix="uc1" TagName="ucLopHoc" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <%--<uc1:ucLop runat="server" ID="ucLop" />--%>
    <uc1:ucLopHoc runat="server" ID="ucLopHoc" />

</asp:Content>
