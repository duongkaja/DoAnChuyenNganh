<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucThoiKhoaBieu.ascx.cs" Inherits="WebHocThem.UserControls.ucThoiKhoaBieu" %>

<%@ Register assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.WebControls" tagprefix="asp" %>
<asp:ListView ID="LvTKB" runat="server" DataKeyNames="ThoiGian,LopHoc,Ca" DataSourceID="TKB">
    <AlternatingItemTemplate>
        <link href="../Content/d1.css" rel="stylesheet" />
    
            <div style="background-color: #FFF8DC;">
            Thời gian:
            <asp:Label ID="ThoiGianLabel" runat="server" Text='<%# Eval("ThoiGian") %>' />
            <br />
            Lớp học:
            <asp:Label ID="LopHocLabel" runat="server" Text='<%# Eval("LopHoc") %>' />
            <br />
            Ca:
            <asp:Label ID="CaLabel" runat="server" Text='<%# Eval("Ca") %>' />
            <br />
            Tên địa điểm:
            <asp:Label ID="TenDiaDiemLabel" runat="server" Text='<%# Eval("TenDiaDiem") %>' />
            <br />
        </div>
        

    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">THời gian:
            <asp:Label ID="ThoiGianLabel1" runat="server" Text='<%# Eval("ThoiGian") %>' />
            <br />
            lớp học:
            <asp:Label ID="LopHocLabel1" runat="server" Text='<%# Eval("LopHoc") %>' />
            <br />
            Ca:
            <asp:Label ID="CaLabel1" runat="server" Text='<%# Eval("Ca") %>' />
            <br />
            Tên địa điểm:
            <asp:TextBox ID="TenDiaDiemTextBox" runat="server" Text='<%# Bind("TenDiaDiem") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <h2 class="text-danger" style="text-align:left">Bạn chưa có Thời Khóa Biểu hãy Đăng ký một lớp học hoặc Xác Nhận lại học phí </h2>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">Thời gian:
            <asp:TextBox ID="ThoiGianTextBox" runat="server" Text='<%# Bind("ThoiGian") %>' />
            <br />
            Lớp học:
            <asp:TextBox ID="LopHocTextBox" runat="server" Text='<%# Bind("LopHoc") %>' />
            <br />
            Ca:
            <asp:TextBox ID="CaTextBox" runat="server" Text='<%# Bind("Ca") %>' />
            <br />
            Tên địa diểm:
            <asp:TextBox ID="TenDiaDiemTextBox" runat="server" Text='<%# Bind("TenDiaDiem") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
        <br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <div style="background-color: #eee;color: black;">Thời gian:
            <asp:Label ID="ThoiGianLabel" runat="server" Text='<%# Eval("ThoiGian") %>' />
            <br />
            Lớp học:
            <asp:Label ID="LopHocLabel" runat="server" Text='<%# Eval("LopHoc") %>' />
            <br />
            Ca:
            <asp:Label ID="CaLabel" runat="server" Text='<%# Eval("Ca") %>' />
            <br />
            Tên đại điểm:
            <asp:Label ID="TenDiaDiemLabel" runat="server" Text='<%# Eval("TenDiaDiem") %>' />
            <br />
        </div>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif; text-align:left">
            <li runat="server" id="itemPlaceholder" />
        </ul>
        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            <asp:DataPager ID="DataPager1" runat="server">
                <Fields>
                    <asp:NextPreviousPagerField FirstPageText="Trang Đầu" PreviousPageText="Trang Trước" LastPageText="Trang Cuối" NextPageText="Trang triếp" ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                </Fields>
            </asp:DataPager>
        </div>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <div style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">Thời gian:
            <asp:Label ID="ThoiGianLabel" runat="server" Text='<%# Eval("ThoiGian") %>' />
            <br />
            Lớp học:
            <asp:Label ID="LopHocLabel" runat="server" Text='<%# Eval("LopHoc") %>' />
            <br />
            Ca:
            <asp:Label ID="CaLabel" runat="server" Text='<%# Eval("Ca") %>' />
            <br />
            Tên địa điểm:
            <asp:Label ID="TenDiaDiemLabel" runat="server" Text='<%# Eval("TenDiaDiem") %>' />
            <br />
        </div>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="TKB" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tTHOIKHOABIEU" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:QueryStringParameter Name="USER" QueryStringField="id" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>

<asp:Panel ID="themTKB" runat="server" DefaultButton="btnRegister" style="
    text-align: center;
    font-size: x-large;">

<p class="text-danger">
    <asp:Literal runat="server" ID="ErrorMessage" />
</p>
    <p class="text-success">
    <asp:Literal runat="server" ID="SuccessMessage" />
</p>
<p class="fieldset">
<i class="fa fa-user"></i>
<input class="full-width has-padding has-border" id="input_email" name="email" type="text" placeholder="Email" runat="server">
</p>
<p class="fieldset">
<i class="fa fa-phone"></i>
<input class="full-width has-padding has-border" id="input_lop" name="phone" type="number" placeholder="Mã lớp" runat="server">
</p>
<p class="fieldset">

    <i class="fa fa-envelope"></i>
    <input class="full-width has-padding has-border" id="input_ca" name="ca" type="number" placeholder="Ca học" runat="server">
</p>

<p class="fieldset">

    <i class="fa fa-key"></i>
    <input class="full-width has-padding has-border" id="input_dd" name="dd" type="number" placeholder="Địa điểm học" runat="server">
</p>
<p class="fieldset">


    <i class="fa fa-key"></i>
    <input style="width: 22%;" class="full-width has-padding has-border" id="input_date" name="date" type="date" placeholder="Ngày đăng ký" runat="server">
</p>

<p class="fieldset">

    <asp:Button ID="btnRegister" runat="server" OnClick="CreateTKB_Click" Text="Thêm mới" CssClass="btn-edit"/>

</p>
</asp:Panel>
