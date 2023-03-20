<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucYeuCauHoTro.ascx.cs" Inherits="WebHocThem.UserControls.ucYeuCauHoTro" %>

<asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DataSourceID="YeuCauHoTro">
    <AlternatingItemTemplate>
        <link href="../Content/d1.css" rel="stylesheet" />
        <li style="background-color: #FFF8DC;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            BienLai:
            <asp:Label ID="BienLaiLabel" runat="server" Text='<%# Eval("BienLai") %>' />
            <br />
            Lop:
            <asp:Label ID="LopLabel" runat="server" Text='<%# Eval("Lop") %>' />
            <br />
            Users:
            <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            <br />
            NoiDungDK:
            <asp:Label ID="NoiDungDKLabel" runat="server" Text='<%# Eval("NoiDungDK") %>' />
            <br />
            NgayDK:
            <asp:Label ID="NgayDKLabel" runat="server" Text='<%# Eval("NgayDK") %>' />
            <br />
            <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Eval("XacNhan") %>' Enabled="false" Text="XacNhan" />
            <br />
        </li>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <li style="background-color: #008A8C;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            BienLai:
            <asp:TextBox ID="BienLaiTextBox" runat="server" Text='<%# Bind("BienLai") %>' />
            <br />
            Lop:
            <asp:TextBox ID="LopTextBox" runat="server" Text='<%# Bind("Lop") %>' />
            <br />
            Users:
            <asp:TextBox ID="UsersTextBox" runat="server" Text='<%# Bind("Users") %>' />
            <br />
            NoiDungDK:
            <asp:TextBox ID="NoiDungDKTextBox" runat="server" Text='<%# Bind("NoiDungDK") %>' />
            <br />
            NgayDK:
            <asp:TextBox ID="NgayDKTextBox" runat="server" Text='<%# Bind("NgayDK") %>' />
            <br />
            <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Bind("XacNhan") %>' Text="XacNhan" />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
        </li>
    </EditItemTemplate>
    <EmptyDataTemplate>
        No data was returned.
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <li style="">BienLai:
            <asp:TextBox ID="BienLaiTextBox" runat="server" Text='<%# Bind("BienLai") %>' />
            <br />Lop:
            <asp:TextBox ID="LopTextBox" runat="server" Text='<%# Bind("Lop") %>' />
            <br />Users:
            <asp:TextBox ID="UsersTextBox" runat="server" Text='<%# Bind("Users") %>' />
            <br />NoiDungDK:
            <asp:TextBox ID="NoiDungDKTextBox" runat="server" Text='<%# Bind("NoiDungDK") %>' />
            <br />NgayDK:
            <asp:TextBox ID="NgayDKTextBox" runat="server" Text='<%# Bind("NgayDK") %>' />
            <br />
            <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Bind("XacNhan") %>' Text="XacNhan" />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
        </li>
    </InsertItemTemplate>
    <ItemSeparatorTemplate>
<br />
    </ItemSeparatorTemplate>
    <ItemTemplate>
        <li style="background-color: #DCDCDC;color: #000000;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            BienLai:
            <asp:Label ID="BienLaiLabel" runat="server" Text='<%# Eval("BienLai") %>' />
            <br />
            Lop:
            <asp:Label ID="LopLabel" runat="server" Text='<%# Eval("Lop") %>' />
            <br />
            Users:
            <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            <br />
            NoiDungDK:
            <asp:Label ID="NoiDungDKLabel" runat="server" Text='<%# Eval("NoiDungDK") %>' />
            <br />
            NgayDK:
            <asp:Label ID="NgayDKLabel" runat="server" Text='<%# Eval("NgayDK") %>' />
            <br />
            <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Eval("XacNhan") %>' Enabled="false" Text="XacNhan" />
            <br />
        </li>
    </ItemTemplate>
    <LayoutTemplate>
        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
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
        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            BienLai:
            <asp:Label ID="BienLaiLabel" runat="server" Text='<%# Eval("BienLai") %>' />
            <br />
            Lop:
            <asp:Label ID="LopLabel" runat="server" Text='<%# Eval("Lop") %>' />
            <br />
            Users:
            <asp:Label ID="UsersLabel" runat="server" Text='<%# Eval("Users") %>' />
            <br />
            NoiDungDK:
            <asp:Label ID="NoiDungDKLabel" runat="server" Text='<%# Eval("NoiDungDK") %>' />
            <br />
            NgayDK:
            <asp:Label ID="NgayDKLabel" runat="server" Text='<%# Eval("NgayDK") %>' />
            <br />
            <asp:CheckBox ID="XacNhanCheckBox" runat="server" Checked='<%# Eval("XacNhan") %>' Enabled="false" Text="XacNhan" />
            <br />
        </li>
    </SelectedItemTemplate>
</asp:ListView>
<asp:SqlDataSource ID="YeuCauHoTro" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" DeleteCommand="DELETE FROM [PhieuDangKy] WHERE [ID] = @original_ID AND (([BienLai] = @original_BienLai) OR ([BienLai] IS NULL AND @original_BienLai IS NULL)) AND (([Lop] = @original_Lop) OR ([Lop] IS NULL AND @original_Lop IS NULL)) AND (([Users] = @original_Users) OR ([Users] IS NULL AND @original_Users IS NULL)) AND (([NoiDungDK] = @original_NoiDungDK) OR ([NoiDungDK] IS NULL AND @original_NoiDungDK IS NULL)) AND (([NgayDK] = @original_NgayDK) OR ([NgayDK] IS NULL AND @original_NgayDK IS NULL)) AND [XacNhan] = @original_XacNhan" InsertCommand="INSERT INTO [PhieuDangKy] ([BienLai], [Lop], [Users], [NoiDungDK], [NgayDK], [XacNhan]) VALUES (@BienLai, @Lop, @Users, @NoiDungDK, @NgayDK, @XacNhan)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PhieuDangKy] WHERE (([Lop] IS NULL) AND ([XacNhan] = @XacNhan))" UpdateCommand="UPDATE [PhieuDangKy] SET [BienLai] = @BienLai, [Lop] = @Lop, [Users] = @Users, [NoiDungDK] = @NoiDungDK, [NgayDK] = @NgayDK, [XacNhan] = @XacNhan WHERE [ID] = @original_ID AND (([BienLai] = @original_BienLai) OR ([BienLai] IS NULL AND @original_BienLai IS NULL)) AND (([Lop] = @original_Lop) OR ([Lop] IS NULL AND @original_Lop IS NULL)) AND (([Users] = @original_Users) OR ([Users] IS NULL AND @original_Users IS NULL)) AND (([NoiDungDK] = @original_NoiDungDK) OR ([NoiDungDK] IS NULL AND @original_NoiDungDK IS NULL)) AND (([NgayDK] = @original_NgayDK) OR ([NgayDK] IS NULL AND @original_NgayDK IS NULL)) AND [XacNhan] = @original_XacNhan">
    <DeleteParameters>
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_BienLai" Type="Int32" />
        <asp:Parameter Name="original_Lop" Type="Int32" />
        <asp:Parameter Name="original_Users" Type="String" />
        <asp:Parameter Name="original_NoiDungDK" Type="String" />
        <asp:Parameter DbType="Date" Name="original_NgayDK" />
        <asp:Parameter Name="original_XacNhan" Type="Boolean" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="BienLai" Type="Int32" />
        <asp:Parameter Name="Lop" Type="Int32" />
        <asp:Parameter Name="Users" Type="String" />
        <asp:Parameter Name="NoiDungDK" Type="String" />
        <asp:Parameter DbType="Date" Name="NgayDK" />
        <asp:Parameter Name="XacNhan" Type="Boolean" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="false" Name="XacNhan" Type="Boolean" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="BienLai" Type="Int32" />
        <asp:Parameter Name="Lop" Type="Int32" />
        <asp:Parameter Name="Users" Type="String" />
        <asp:Parameter Name="NoiDungDK" Type="String" />
        <asp:Parameter DbType="Date" Name="NgayDK" />
        <asp:Parameter Name="XacNhan" Type="Boolean" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter Name="original_BienLai" Type="Int32" />
        <asp:Parameter Name="original_Lop" Type="Int32" />
        <asp:Parameter Name="original_Users" Type="String" />
        <asp:Parameter Name="original_NoiDungDK" Type="String" />
        <asp:Parameter DbType="Date" Name="original_NgayDK" />
        <asp:Parameter Name="original_XacNhan" Type="Boolean" />
    </UpdateParameters>
</asp:SqlDataSource>


