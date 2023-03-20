<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucManage.ascx.cs" Inherits="WebHocThem.UserControls.ucManage" %>

<dl class="dl-horizontal">
    <link href="../Content/d1.css" rel="stylesheet" />
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnRegister">
   
        <dt>Information:</dt>
        <dd>

            <p class="text-danger">
                <asp:Literal runat="server" ID="ErrorMessage" />
            </p>
            <p class="fieldset">
                <i class="fa fa-user"></i>
                <input class="full-width has-padding has-border" id="input_email" name="email" type="text" placeholder="Email" runat="server">
            </p>
            <p class="fieldset">
                <i class="fa fa-phone"></i>
                <input class="full-width has-padding has-border" id="input_phone" name="phone" type="text" placeholder="Số điện thoại" runat="server">
            </p>
            <p class="fieldset">
                <%--  <asp:RequiredFieldValidator runat="server" ControlToValidate="input_email"
        CssClass="text-danger" ErrorMessage="The email field is required." />--%>
                <i class="fa fa-envelope"></i>
                <input class="full-width has-padding has-border" id="input_name" name="name" type="text" placeholder="Tên" runat="server">
            </p>
            <%--<p class="fieldset">
<select name="city_id" class="form-control">
<option value="0">Nơi bạn sống</option>
<option value="1">Hà Nội</option>
<option value="2">Hồ Chí Minh</option>
<option value="3">Đà Nẵng</option>
<option value="4">Hải Phòng</option>
<option value="5">Đồng Nai</option>
<option value="6">Nghệ An</option>
<option value="7">Thanh Hóa</option>
<option value="8">Hà Tĩnh</option>
<option value="10">Quảng Ninh</option>
<option value="11">Nha Trang</option>
<option value="12">Bắc Ninh</option>
<option value="9">Khác</option>
</select>
</p>--%>
            <p class="fieldset">
                <%-- <asp:RequiredFieldValidator runat="server" ControlToValidate="input_date"
        CssClass="text-danger" ErrorMessage="The password field is required." />--%>
                <i class="fa fa-key"></i>
                <input class="full-width has-padding has-border" id="input_address" name="address" type="text" placeholder="Địa chỉ" runat="server">
            </p>

            <p class="fieldset">
                <i class="fa fa-user"></i>
                Giới tính: &nbsp;&nbsp;Nam
        <input class="full-width has-padding has-border" id="input_gender1" name="gender" type="radio" placeholder="Check vào đây nếu là Nam" runat="server">&nbsp;Nữ
        <input class="full-width has-padding has-border" id="input_gender0" name="gender" type="radio" placeholder="Check vào đây nếu là Nữ" runat="server">
            </p>

            <%--<p class="fieldset">--%>
            <%--<asp:RequiredFieldValidator runat="server" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
    <asp:CompareValidator runat="server" ControlToCompare="input_password" ControlToValidate="input_repassword"
        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />--%>
            <%--<i class="fa fa-key"></i>
    <input class="full-width has-padding has-border" id="input_img" name="img" type="file" placeholder="Hình ảnh" runat="server">
</p>--%>
            <%--<p class="fieldset">
<i class="fa fa-lock"></i>
<input style="width:200px" class="full-width has-padding has-border" id="input_captcha" name="captcha" type="text" placeholder="Mã bảo mật">
<div id="captcha">
<img src="https://www.anhngumshoa.com/captcha/1666191478.51.jpg" style="width: 90; height: 30; border: 0;" alt=" " /> </div>
</p>--%>
            <%--<p class="fieldset">
    <input type="radio" id="accept-terms" value="1" name="check_confirm">
    <label for="accept-terms">Tôi đồng ý với các <a href="#">Điều khoản</a> trên website</label>
</p>--%>
            <p class="fieldset">
                <%--<input class="btn-edit" type="submit" value="Đăng ký" onclick="" runat="server">--%>
                <asp:Button ID="btnRegister" runat="server" OnClick="CreateUser_Click" Text="Lưu" CssClass="btn-edit" />
                <%-- <input class="btn-edit" type="reset" value="Làm mới" onclick="ResetForm_Click">--%>
            </p>

        </dd>
    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server">
        <dt> Chuyển quyền người dùng</dt>
        <dd>
            <p class="fieldset">
                <i class="fa fa-user"></i>
                <input class="full-width has-padding has-border" id="Text1" name="email" type="text" placeholder="Email" runat="server">
            </p>

            <p class="fieldset">
                <i class="fa fa-user"></i>
                <input class="full-width has-padding has-border" id="input_role" name="role" type="text" placeholder="Role" runat="server">
            </p>

            <p class="fieldset">
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Lưu" CssClass="btn-edit" />
            </p>
        </dd>
    </asp:Panel>
</dl>
