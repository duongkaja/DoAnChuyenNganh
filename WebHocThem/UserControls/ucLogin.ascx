<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLogin.ascx.cs" Inherits="WebHocThem.UserControls.ucLogin" %>
<asp:Panel ID="Panel1" runat="server" DefaultButton="btnLogin">
<asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
    <p class="text-danger">
        <asp:Literal runat="server" ID="FailureText" />
    </p>
</asp:PlaceHolder>


<p class="fieldset">
    <i class="fa fa-envelope"></i>
    <input class="full-width has-padding has-border" name="email" id="input_email" type="email" placeholder="Email đăng nhập" runat="server">
</p>
<p class="fieldset">
    <i class="fa fa-key"></i>
    <input class="full-width has-padding has-border" type="password" id="input_password" name="password" placeholder="Mật khẩu" runat="server">
</p>
<p class="fieldset">
    <asp:Button ID="btnLogin" runat="server" OnClick="LogIn" Text="Log in" CssClass="btn-edit" />
    <%--<input class="full-width" type="submit" onclick="LogIn" value="Đăng nhập">--%>
</p>
<p>
    <a href="https://www.anhngumshoa.com/users/forgotpass">Quên mật khẩu?</a>
</p>
</asp:Panel>

