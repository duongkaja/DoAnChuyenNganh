<%@ Page Title="Account Confirmation" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="Confirm.aspx.cs" Inherits="WebHocThem.Account.Confirm" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolderWebHocThem">
    <%--  <h2><%: Title %>.</h2>--%>
    <div class="col-md-7">
        <div class="head">
            <h2 class="heading-title" style="text-align:right"><%: Title %></h2>

        </div>

        <asp:PlaceHolder runat="server" ID="successPanel" ViewStateMode="Disabled" Visible="true">
            <p style="text-align:right">
                Thank you for confirming your account. Click <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Login">here</asp:HyperLink>  to login             
            </p>
        </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="errorPanel" ViewStateMode="Disabled" Visible="false">
            <p class="text-danger" style="text-align:center">
                An error has occurred.
            </p>
        </asp:PlaceHolder>
    </div>
</asp:Content>
