<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucGiangVien.ascx.cs" Inherits="WebHocThem.UserControls.ucGiangVien1" %>
<asp:ListView ID="ListView1" runat="server" DataSourceID="GiangVien" DataKeyNames="ID" style="height: 401px; width: 742px">
    
    <AlternatingItemTemplate>
        <link href="../Content/d1.css" rel="stylesheet" />
        <tr style="background-color: #eee;color: #284775;">
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="SDTLabel" runat="server" Text='<%# Eval("SDT") %>' />
            </td>
            <td>
                <asp:Label ID="TenUserLabel" runat="server" Text='<%# Eval("TenUser") %>' />
            </td>
            <td>
                <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Eval("DiaChi") %>' />
            </td>
            <td>
                <img ID="HinhAnhLabel" alt="" runat="server" src='<%#"~/"+ Eval("HinhAnh") %>' style="inline-size: 100px;"/>
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color: #FFCC66;color: #000080;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
            </td>
            <td>
                <asp:TextBox ID="TenUserTextBox" runat="server" Text='<%# Bind("TenUser") %>' />
            </td>
            <td>
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            </td>
            <td>
                <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            </td>
            <td>
                <asp:CheckBox ID="GioiTinhCheckBox" runat="server" Checked='<%# Bind("GioiTinh") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            </td>
            <td>
                <asp:TextBox ID="SDTTextBox" runat="server" Text='<%# Bind("SDT") %>' />
            </td>
            <td>
                <asp:TextBox ID="TenUserTextBox" runat="server" Text='<%# Bind("TenUser") %>' />
            </td>
            <td>
                <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            </td>
            <td>
                <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            </td>
            <td>
                <asp:CheckBox ID="GioiTinhCheckBox" runat="server" Checked='<%# Bind("GioiTinh") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color: white;color: black;">
            <td>
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="SDTLabel" runat="server" Text='<%# Eval("SDT") %>' />
            </td>
            <td>
                <asp:Label ID="TenUserLabel" runat="server" Text='<%# Eval("TenUser") %>' />
            </td>
            <td>
                <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Eval("DiaChi") %>' />
            </td>
            <td>
                <img ID="HinhAnhLabel" alt="" runat="server" src='<%#"~/"+ Eval("HinhAnh") %>' style="inline-size: 100px;"/>
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server" style="width:100%">
            <tr runat="server">
                <td runat="server" style="text-align: center;">
                    <table class= "content-table" id="itemPlaceholderContainer" runat="server" border="1" style="width:100%; background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color: black;color: white;">
                            <th runat="server">Email giảng viên</th>
                            <th runat="server">SDT giảng viên</th>
                            <th runat="server">Tên giảng viên</th>
                            <th runat="server">Địa chỉ giảng viên</th>
                            <th runat="server">Hình ảnh giảng viên</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField FirstPageText="Trang Đầu" PreviousPageText="Trang Trước" LastPageText="Trang Cuối" NextPageText="Trang triếp" ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
            <td >
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </td>
            <td>
                <asp:Label ID="SDTLabel" runat="server" Text='<%# Eval("SDT") %>' />
            </td>
            <td>
                <asp:Label ID="TenUserLabel" runat="server" Text='<%# Eval("TenUser") %>' />
            </td>
            <td>
                <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Eval("DiaChi") %>' />
            </td>
            <td>
                <asp:Label ID="HinhAnhLabel" runat="server" Text='<%# Eval("HinhAnh") %>' />
            </td>
            <td>
                <asp:CheckBox ID="GioiTinhCheckBox" runat="server" Checked='<%# Eval("GioiTinh") %>' Enabled="false" />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="GiangVien" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="tGIANGVIEN" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

